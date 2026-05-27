part of '../../raylib_dartified_web.dart';

class RaylibLightD extends RaylibLightModuleBase<
  Raylib,
  
  // types
  ColorD,
  LightD,
  MatrixD,
  QuaternionD,
  ShaderD,
  Vector3D,
  Vector4D

> {

  int _lightCount = 0;

  RaylibLightD(super.rl);

  @override
  LightD CreateLight(
    LightType type,
    Vector3D position,
    Vector3D target,
    ColorD color,
    ShaderD shader,
  ) => run(
    () => RaylibDebugLabels.CreateLight(type, position, target, color, shader),
    () {
      int index = _lightCount++;

      final light = LightD(
        enabled: true,
        type: type,
        position: position.copy(),
        target: target.copy(),
        color: color.copy(),
      );

      light.enabledLoc = rl.CoreD.GetShaderLocation(shader, "lights[$index].enabled");
      light.typeLoc = rl.CoreD.GetShaderLocation(shader, "lights[$index].type");
      light.positionLoc = rl.CoreD.GetShaderLocation(shader, "lights[$index].position");
      light.targetLoc = rl.CoreD.GetShaderLocation(shader, "lights[$index].target");
      light.colorLoc = rl.CoreD.GetShaderLocation(shader, "lights[$index].color");
      UpdateLightValues(shader, light);

      rl.Temp.Light$.PointerTo(light, '_RaylibLight_$index');

      return light;
    },
  );

  @override
  void UpdateLightValues(
    ShaderD shader,
    LightD light,
  ) => run(
    () => RaylibDebugLabels.UpdateLightValues(shader, light),
    () {
      rl.CoreD.SetShaderValue(
        shader,
        light.enabledLoc,
        [light.enabled.toInt()],
        .SHADER_UNIFORM_INT,
      );

      rl.CoreD.SetShaderValue(
        shader,
        light.typeLoc,
        [light.type.value],
        .SHADER_UNIFORM_INT,
      );

      rl.CoreD.SetShaderValue(
        shader,
        light.positionLoc,
        light.position.toArray(),
        .SHADER_UNIFORM_VEC3,
      );

      rl.CoreD.SetShaderValue(
        shader,
        light.targetLoc,
        light.target.toArray(),
        .SHADER_UNIFORM_VEC3,
      );

      rl.CoreD.SetShaderValue(
        shader,
        light.colorLoc,
        [
          light.color.r / 255,
          light.color.g / 255,
          light.color.b / 255,
          light.color.a / 255,
        ],
        .SHADER_UNIFORM_VEC4,
      );
    },
  );
}