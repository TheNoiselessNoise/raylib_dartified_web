// Example dartified, see original for reference:
// https://github.com/raysan5/raylib/blob/c1ab645ca298a2801097931d1079b10ff7eb9df8/examples/shaders/shaders_shadowmap.c
// WARNING: expects resources from the raylib source

// NOTE: This example is currently broken in WASM/WebGL2.
//
// The root cause is that Raylib's rlLoadTextureDepth() uses GL_DEPTH_COMPONENT
// (unsized internal format, 0x1902) when creating the depth texture, which is
// valid in desktop OpenGL but rejected by WebGL2, which requires a sized format
// such as GL_DEPTH_COMPONENT24 or GL_DEPTH_COMPONENT32F.
//
// This results in the depth texture being created with no storage, causing the
// shadow map FBO to be incomplete or the depth attachment to have no dimensions.
//
// Attempts to work around this via JS interop (manually calling texImage2D with
// GL_DEPTH_COMPONENT24 on the already-allocated texture object) partially work,
// the FBO reports complete, but WebGL2 then throws a feedback loop error:
//   "Texture level 0 would be read by TEXTURE_2D unit 1, but written by
//    framebuffer attachment DEPTH_ATTACHMENT"
// meaning it considers the depth texture simultaneously attached to the FBO and
// bound for sampling, even after explicit detach/reattach attempts via
// framebufferTexture2D and bindFramebuffer.
//
// The underlying issue is that rlgl's WASM backend does not expose enough control
// over framebuffer and texture state to implement shadowmapping correctly, and
// Raylib's own EndTextureMode() does not fully clean up depth-only FBO state in
// a way that satisfies WebGL2's feedback loop validation.

import 'dart:typed_data';
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

const String GLSL_VERSION = '300es';
const int screenWidth = 800;
const int screenHeight = 450;
const int SHADOWMAP_RESOLUTION = 1024;

void main() => Raylib((rl) {
  rl.CoreD.SetConfigFlags([.FLAG_MSAA_4X_HINT]);
  rl.CoreD.InitWindow(screenWidth, screenHeight, "shaders_shadowmap");
  rl.CoreD.SetWindowMonitor(0);
  rl.CoreD.SetTargetFPS(60);

  final cam = Camera3DD(
    position: .vec3(10, 10, 10),
    target: .vec3(0, 0, 0),
    up: .vec3(0, 1, 0),
    fovy: 45.0,
    projection: .CAMERA_PERSPECTIVE,
  );

  final shadowShader = rl.CoreD.LoadShader(
    "./resources/shaders/glsl$GLSL_VERSION/shadowmap.vs",
    "./resources/shaders/glsl$GLSL_VERSION/shadowmap.fs",
  );

  shadowShader.locs[ShaderLocationIndex.SHADER_LOC_VECTOR_VIEW.value] =
    rl.CoreD.GetShaderLocation(shadowShader, "viewPos");

  Vector3D lightDir = .vec3Normalized(0.35, -1.0, -0.35);
  Vector4D lightColor = .colorNormalize(.WHITE);

  void updateShaderLightDir() {
    rl.CoreD.SetShaderValue(shadowShader,
      rl.CoreD.GetShaderLocation(shadowShader, "lightDir"),
      lightDir.toArray(),
      .SHADER_UNIFORM_VEC3,
    );
  } updateShaderLightDir();

  rl.CoreD.SetShaderValue(shadowShader,
    rl.CoreD.GetShaderLocation(shadowShader, "lightColor"),
    lightColor.toArray(),
    .SHADER_UNIFORM_VEC4,
  );

  rl.CoreD.SetShaderValue(shadowShader,
    rl.CoreD.GetShaderLocation(shadowShader, "ambient"),
    [0.1, 0.1, 0.1, 1.0],
    .SHADER_UNIFORM_VEC4,
  );
  
  int lightVPLoc = rl.CoreD.GetShaderLocation(shadowShader, "lightVP");
  int shadowMapLoc = rl.CoreD.GetShaderLocation(shadowShader, "shadowMap");
  rl.CoreD.SetShaderValue(shadowShader,
    rl.CoreD.GetShaderLocation(shadowShader, "shadowMapResolution"),
    [SHADOWMAP_RESOLUTION],
    .SHADER_UNIFORM_INT,
  );

  final cube = rl.CoreD.LoadModelFromMesh(rl.CoreD.GenMeshCube(1.0, 1.0, 1.0));
  cube.materials[0].shader = shadowShader;

  final robot = rl.CoreD.LoadModel("./resources/models/robot.glb");
  for (int i = 0; i < robot.materialCount; i++)
  {
    robot.materials[i].shader = shadowShader;
  }

  final robotAnimations = rl.CoreD.LoadModelAnimations("./resources/models/robot.glb");

  final shadowMap = LoadShadowmapRenderTexture(rl, SHADOWMAP_RESOLUTION, SHADOWMAP_RESOLUTION);

  final lightCam = Camera3DD(
    position: lightDir.scale(-15.0),
    target: .vec3(0, 0, 0),
    up: .vec3(0, 1, 0),
    fovy: 20.0,
    projection: .CAMERA_ORTHOGRAPHIC,
  );
  
  int fc = 0;
  rl.setMainLoop(() {
    final dt = rl.CoreD.GetFrameTime();

    rl.CoreD.SetShaderValue(shadowShader,
      shadowShader.locs[ShaderLocationIndex.SHADER_LOC_VECTOR_VIEW.value],
      cam.position.toArray(),
      .SHADER_UNIFORM_VEC3,
    );

    rl.CoreD.UpdateCamera(cam, .CAMERA_ORBITAL);

    fc++;
    fc %= (robotAnimations[0].frameCount);

    rl.CoreD.UpdateModelAnimation(robot, robotAnimations[0], fc);

    final cameraSpeed = 0.05;
    if (rl.CoreD.IsKeyDown(.KEY_LEFT))
    {
      if (lightDir.x < 0.6)
        lightDir.x += cameraSpeed * 60.0 * dt;
    }
    if (rl.CoreD.IsKeyDown(.KEY_RIGHT))
    {
      if (lightDir.x > -0.6)
        lightDir.x -= cameraSpeed * 60.0 * dt;
    }
    if (rl.CoreD.IsKeyDown(.KEY_UP))
    {
      if (lightDir.z < 0.6)
        lightDir.z += cameraSpeed * 60.0 * dt;
    }
    if (rl.CoreD.IsKeyDown(.KEY_DOWN))
    {
      if (lightDir.z > -0.6)
        lightDir.z -= cameraSpeed * 60.0 * dt;
    }

    lightDir = lightDir.normalize();
    lightCam.position = lightDir.scale(-15.0);
    updateShaderLightDir();

    rl.CoreD.BeginDrawing();

      MatrixD lightView;
      MatrixD lightProj;
      
      rl.CoreD.BeginTextureMode(shadowMap);
        rl.CoreD.ClearBackground(.WHITE);
        rl.CoreD.BeginMode3D(lightCam);
          lightView = rl.RlglD.rlGetMatrixModelview();
          lightProj = rl.RlglD.rlGetMatrixProjection();
          DrawScene(rl, cube, robot);
        rl.CoreD.EndMode3D();
      rl.CoreD.EndTextureMode();
      
      final lightViewProj = lightView.mul(lightProj);

      rl.CoreD.ClearBackground(.RAYWHITE);

      rl.CoreD.SetShaderValueMatrix(shadowShader, lightVPLoc, lightViewProj);

      rl.RlglD.rlEnableShader(shadowShader.id);

      int slot = 1;
      rl.RlglD.rlActiveTextureSlot(slot);
      rl.RlglD.rlEnableTexture(shadowMap.depth.id);
      rl.RlglD.rlSetUniform(shadowMapLoc,
        Int32List.fromList([slot]),
        .RL_SHADER_UNIFORM_INT,
        1
      );

      rl.CoreD.BeginMode3D(cam);

        DrawScene(rl, cube, robot);
      
      rl.CoreD.EndMode3D();

      rl.CoreD.DrawText(
        "Shadows in raylib using the shadowmapping algorithm!",
        screenWidth - 320, screenHeight - 20, 10, .GRAY
      );
      rl.CoreD.DrawText(
        "Use the arrow keys to rotate the light!",
        10, 10, 30, .RED
      );

    rl.CoreD.EndDrawing();

    if (rl.CoreD.IsKeyPressed(.KEY_F))
    {
      rl.CoreD.TakeScreenshot("shaders_shadowmap.png");
    }
  });
});

RenderTextureD LoadShadowmapRenderTexture(
  Raylib rl,
  int width,
  int height,
) {
  final RenderTextureD target = .new();

  target.id = rl.RlglD.rlLoadFramebuffer();
  target.texture.width = width;
  target.texture.height = height;

  if (target.id > 0)
  {
    rl.RlglD.rlEnableFramebuffer(target.id);

    target.depth.id = rl.RlglD.rlLoadTextureDepth(width, height, false);
    target.depth.width = width;
    target.depth.height = height;
    target.depth.format = .fromValue(19);
    target.depth.mipmaps = 1;

    rl.RlglD.rlFramebufferAttach(
      target.id,
      target.depth.id,
      .RL_ATTACHMENT_DEPTH,
      .RL_ATTACHMENT_TEXTURE2D,
      0
    );

    if (rl.RlglD.rlFramebufferComplete(target.id)) {
      rl.CoreD.TraceLog(.LOG_INFO,
        "FBO: [ID ${target.id}] Framebuffer object created successfully"
      );
    }

    rl.RlglD.rlDisableFramebuffer();
  }
  else rl.CoreD.TraceLog(.LOG_WARNING,
    "FBO: Framebuffer object can not be created"
  );

  return target;
}

void DrawScene(Raylib rl, ModelD cube, ModelD robot)
{
  rl.CoreD.DrawModelEx(
    cube,
    .vec3(0.0, 0.0, 0.0),
    .vec3(0.0, 1.0, 0.0),
    0.0,
    .vec3(10.0, 1.0, 10.0),
    .BLUE
  );

  rl.CoreD.DrawModelEx(
    cube,
    .vec3(1.5, 1.0, -1.5),
    .vec3(0.0, 1.0, 0.0),
    0.0,
    .vec3(1.0, 1.0, 1.0),
    .WHITE
  );
  rl.CoreD.DrawModelEx(
    robot,
    .vec3(0.0, 0.5, 0.0),
    .vec3(0.0, 1.0, 0.0),
    0.0,
    .vec3(1.0, 1.0, 1.0),
    .RED
  );
}
