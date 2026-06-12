part of '../../raylib_dartified_web.dart';

class RaylibCoreD extends RaylibCoreModuleBase<
  Raylib,
  
  // pointers
  int,

  // types
  AutomationEventListD,
  AutomationEventD,
  BoneInfoD,
  BoundingBoxD,
  Camera2DD,
  Camera3DD,
  ColorD,
  FilePathListD,
  FontD,
  GlyphInfoD,
  ImageD,
  MaterialD,
  MaterialMapD,
  MatrixD,
  MeshD,
  ModelD,
  ModelAnimationD,
  NPatchInfoD,
  QuaternionD,
  RayD,
  RayCollisionD,
  RectangleD,
  RenderTextureD,
  ShaderD,
  TextureD,
  TransformD,
  Vector2D,
  Vector3D,
  Vector4D,
  VrDeviceInfoD,
  VrStereoConfigD,

  // callbacks
  LoadFileDataCallbackD,
  SaveFileDataCallbackD,
  LoadFileTextCallbackD,
  SaveFileTextCallbackD
  
> {

  RaylibCoreD(super.rl);

  @override
  void dispose() {
    super.dispose();
    LoadFileDataCallbackD.disposeRegistry();
    SaveFileDataCallbackD.disposeRegistry();
    LoadFileTextCallbackD.disposeRegistry();
    SaveFileTextCallbackD.disposeRegistry();
  }
  
  @override
  void InitWindow(
    num width,
    num height,
    String title,
  ) => run(
    () => RaylibDebugLabels.InitWindow(width, height, title),
    () => rl.Core.InitWindow.run3(
      width.toJS,
      height.toJS,
      title.toJS,
    ),
  );

  @override
  void CloseWindow() => run(
    () => RaylibDebugLabels.CloseWindow(),
    () => rl.Core.CloseWindow.run,
  );

  @override
  bool WindowShouldClose() => run(
    () => RaylibDebugLabels.WindowShouldClose(),
    // () => rl.Core.WindowShouldClose.run.toBool(),
    () => false, // NOTE: we should not call WindowShouldClose on web
  );

  @override
  bool IsWindowReady() => run(
    () => RaylibDebugLabels.IsWindowReady(),
    () => rl.Core.IsWindowReady.run.toBool(),
  );

  @override
  bool IsWindowFullscreen() => run(
    () => RaylibDebugLabels.IsWindowFullscreen(),
    () => rl.Core.IsWindowFullscreen.run.toBool(),
  );

  @override
  bool IsWindowHidden() => run(
    () => RaylibDebugLabels.IsWindowHidden(),
    () => rl.Core.IsWindowHidden.run.toBool(),
  );
    
  @override
  bool IsWindowMinimized() => run(
    () => RaylibDebugLabels.IsWindowMinimized(),
    () => rl.Core.IsWindowMinimized.run.toBool(),
  );
    
  @override
  bool IsWindowMaximized() => run(
    () => RaylibDebugLabels.IsWindowMaximized(),
    () => rl.Core.IsWindowMaximized.run.toBool(),
  );
    
  @override
  bool IsWindowFocused() => run(
    () => RaylibDebugLabels.IsWindowFocused(),
    () => rl.Core.IsWindowFocused.run.toBool(),
  );
    
  @override
  bool IsWindowResized() => run(
    () => RaylibDebugLabels.IsWindowResized(),
    () => rl.Core.IsWindowResized.run.toBool(),
  );
    
  @override
  bool IsWindowState(
    ConfigFlags flag,
  ) => run(
    () => RaylibDebugLabels.IsWindowState(flag),
    () => rl.Core.IsWindowState.run1(
      flag.value.toJS,
    ).toBool(),
  );
    
  @override
  void SetWindowState(
    Iterable<ConfigFlags> flags,
  ) => run(
    () => RaylibDebugLabels.SetWindowState(flags),
    () => rl.Core.SetWindowState.run1(
      rl.Utils.EnumsAsFlagsOr(flags).toJS,
    ),
  );
    
  @override
  void ClearWindowState(
    Iterable<ConfigFlags> flags,
  ) => run(
    () => RaylibDebugLabels.ClearWindowState(flags),
    () => rl.Core.ClearWindowState.run1(
      rl.Utils.EnumsAsFlagsOr(flags).toJS,
    ),
  );
    
  @override
  void ToggleFullscreen() => run(
    () => RaylibDebugLabels.ToggleFullscreen(),
    () => rl.Core.ToggleFullscreen.run,
  );
    
  @override
  void ToggleBorderlessWindowed() => run(
    () => RaylibDebugLabels.ToggleBorderlessWindowed(),
    () => rl.Core.ToggleBorderlessWindowed.run,
  );
    
  @override
  void MaximizeWindow() => run(
    () => RaylibDebugLabels.MaximizeWindow(),
    () => rl.Core.MaximizeWindow.run,
  );
    
  @override
  void MinimizeWindow() => run(
    () => RaylibDebugLabels.MinimizeWindow(),
    () => rl.Core.MinimizeWindow.run,
  );
    
  @override
  void RestoreWindow() => run(
    () => RaylibDebugLabels.RestoreWindow(),
    () => rl.Core.RestoreWindow.run,
  );
    
  @override
  void SetWindowIcon(
    ImageD image,
  ) => run(
    () => RaylibDebugLabels.SetWindowIcon(image),
    () => rl.Core.SetWindowIcon.run1(
      rl.Temp.Image$.Ref1(image).toJS,
    ),
  );
    
  @override
  void SetWindowIcons(
    List<ImageD> images,
  ) => run(
    () => RaylibDebugLabels.SetWindowIcons(images),
    () => rl.Core.SetWindowIcons.run2(
      rl.Temp.Image$.Array(images).toJS,
      images.length.toJS,
    ),
  );
    
  @override
  void SetWindowTitle(
    String title,
  ) => run(
    () => RaylibDebugLabels.SetWindowTitle(title),
    () => rl.Core.SetWindowTitle.run1(
      title.toJS,
    ),
  );

  @override
  void SetWindowPosition(
    num x,
    num y,
  ) => run(
    () => RaylibDebugLabels.SetWindowPosition(x, y),
    () => rl.Core.SetWindowPosition.run2(
      x.toJS,
      y.toJS,
    ),
  );
    
  @override
  void SetWindowMonitor(
    num monitor,
  ) => run(
    () => RaylibDebugLabels.SetWindowMonitor(monitor),
    () => rl.Core.SetWindowMonitor.run1(monitor.toJS),
  );
    
  @override
  void SetWindowMinSize(
    num width,
    num height,
  ) => run(
    () => RaylibDebugLabels.SetWindowMinSize(width, height),
    () => rl.Core.SetWindowMinSize.run2(
      width.toJS,
      height.toJS,
    ),
  );

  @override
  void SetWindowMaxSize(
    num width,
    num height,
  ) => run(
    () => RaylibDebugLabels.SetWindowMaxSize(width, height),
    () => rl.Core.SetWindowMaxSize.run2(
      width.toJS,
      height.toJS,
    ),
  );
    
  @override
  void SetWindowSize(
    num width,
    num height,
  ) => run(
    () => RaylibDebugLabels.SetWindowSize(width, height),
    () => rl.Core.SetWindowSize.run2(
      width.toJS,
      height.toJS,
    ),
  );

  @override
  void SetWindowOpacity(
    num opacity,
  ) => run(
    () => RaylibDebugLabels.SetWindowOpacity(opacity),
    () => rl.Core.SetWindowOpacity.run1(
      opacity.toJS,
    ),
  );
    
  @override
  void SetWindowFocused() => run(
    () => RaylibDebugLabels.SetWindowFocused(),
    () => rl.Core.SetWindowFocused.run,
  );

  @override
  int GetScreenWidth() => run(
    () => RaylibDebugLabels.GetScreenWidth(),
    () => rl.Core.GetScreenWidth.run.toInt(),
  );
    
  @override
  int GetScreenHeight() => run(
    () => RaylibDebugLabels.GetScreenHeight(),
    () => rl.Core.GetScreenHeight.run.toInt(),
  );
    
  @override
  int GetRenderWidth() => run(
    () => RaylibDebugLabels.GetRenderWidth(),
    () => rl.Core.GetRenderWidth.run.toInt(),
  );
    
  @override
  int GetRenderHeight() => run(
    () => RaylibDebugLabels.GetRenderHeight(),
    () => rl.Core.GetRenderHeight.run.toInt(),
  );
    
  @override
  int GetMonitorCount() => run(
    () => RaylibDebugLabels.GetMonitorCount(),
    () => rl.Core.GetMonitorCount.run.toInt(),
  );
    
  @override
  int GetCurrentMonitor() => run(
    () => RaylibDebugLabels.GetCurrentMonitor(),
    () => rl.Core.GetCurrentMonitor.run.toInt(),
  );
    
  @override
  Vector2D GetMonitorPosition(
    num monitor,
  ) => run(
    () => RaylibDebugLabels.GetMonitorPosition(monitor),
    () => rl.Temp.Vector2$.Extract1(
      (p) => rl.Core.GetMonitorPosition.run2(
        p.toJS,
        monitor.toJS,
      ),
    ),
  );
    
  @override
  int GetMonitorWidth(
    num monitor,
  ) => run(
    () => RaylibDebugLabels.GetMonitorWidth(monitor),
    () => rl.Core.GetMonitorWidth.run1(
      monitor.toJS,
    ).toInt(),
  );
    
  @override
  int GetMonitorHeight(
    num monitor,
  ) => run(
    () => RaylibDebugLabels.GetMonitorHeight(monitor),
    () => rl.Core.GetMonitorHeight.run1(
      monitor.toJS,
    ).toInt(),
  );
    
  @override
  int GetMonitorPhysicalWidth(
    num monitor,
  ) => run(
    () => RaylibDebugLabels.GetMonitorPhysicalWidth(monitor),
    () => rl.Core.GetMonitorPhysicalWidth.run1(
      monitor.toJS,
    ).toInt(),
  );
    
  @override
  int GetMonitorPhysicalHeight(
    num monitor,
  ) => run(
    () => RaylibDebugLabels.GetMonitorPhysicalHeight(monitor),
    () => rl.Core.GetMonitorPhysicalHeight.run1(
      monitor.toJS,
    ).toInt(),
  );
    
  @override
  int GetMonitorRefreshRate(
    num monitor,
  ) => run(
    () => RaylibDebugLabels.GetMonitorRefreshRate(monitor),
    () => rl.Core.GetMonitorRefreshRate.run1(
      monitor.toJS,
    ).toInt(),
  );
    
  @override
  Vector2D GetWindowPosition() => run(
    () => RaylibDebugLabels.GetWindowPosition(),
    () => rl.Temp.Vector2$.Extract1(
      (p) => rl.Core.GetWindowPosition.run1(
        p.toJS,
      ),
    ),
  );
    
  @override
  Vector2D GetWindowScaleDPI() => run(
    () => RaylibDebugLabels.GetWindowScaleDPI(),
    () => rl.Temp.Vector2$.Extract1(
      (p) => rl.Core.GetWindowScaleDPI.run1(
        p.toJS,
      ),
    ),
  );
    
  @override
  String GetMonitorName(
    num monitor,
  ) => run(
    () => RaylibDebugLabels.GetMonitorName(monitor),
    () {
      final namePtr = rl.Core.GetMonitorName.run1(
        monitor.toJS,
      ).toInt();
      return WasmStringPointer(namePtr).ref;
    },
  );
    
  @override
  void SetClipboardText(
    String text,
  ) => run(
    () => RaylibDebugLabels.SetClipboardText(text),
    () => rl.Core.SetClipboardText.run1(
      text.toJS,
    ),
  );
    
  @override
  @Deprecated(
    'Permanently no-op on Web, not deprecated per se, '
    'but unsupported. Use an appropriate web clipboard package instead.',
  )
  String GetClipboardText() => run(
    () => RaylibDebugLabels.GetClipboardText(),
    () { /* NOOP */ return ''; },
  );
    
  @override
  ImageD GetClipboardImage() => run(
    () => RaylibDebugLabels.GetClipboardImage(),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.GetClipboardImage(),
      (p) => rl.Core.GetClipboardImage.run1(
        p.toJS,
      ),
    ),
  );
    
  @override
  void EnableEventWaiting() => run(
    () => RaylibDebugLabels.EnableEventWaiting(),
    () => rl.Core.EnableEventWaiting.run,
  );
    
  @override
  void DisableEventWaiting() => run(
    () => RaylibDebugLabels.DisableEventWaiting(),
    () => rl.Core.DisableEventWaiting.run,
  );
    
  @override
  void ShowCursor() => run(
    () => RaylibDebugLabels.ShowCursor(),
    () => rl.Core.ShowCursor.run,
  );
    
  @override
  void HideCursor() => run(
    () => RaylibDebugLabels.HideCursor(),
    () => rl.Core.HideCursor.run,
  );
    
  @override
  bool IsCursorHidden() => run(
    () => RaylibDebugLabels.IsCursorHidden(),
    () => rl.Core.IsCursorHidden.run.toBool(),
  );
    
  @override
  void EnableCursor() => run(
    () => RaylibDebugLabels.EnableCursor(),
    () => rl.Core.EnableCursor.run,
  );
    
  @override
  void DisableCursor() => run(
    () => RaylibDebugLabels.DisableCursor(),
    () => rl.Core.DisableCursor.run,
  );
    
  @override
  bool IsCursorOnScreen() => run(
    () => RaylibDebugLabels.IsCursorOnScreen(),
    () => rl.Core.IsCursorOnScreen.run.toBool(),
  );
    
  @override
  void ClearBackground(
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ClearBackground(color),
    () => rl.Core.ClearBackground.run1(
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void BeginDrawing() => run(
    () => RaylibDebugLabels.BeginDrawing(),
    () => rl.Core.BeginDrawing.run,
  );
    
  @override
  void EndDrawing() => run(
    () => RaylibDebugLabels.EndDrawing(),
    () => rl.Core.EndDrawing.run,
  );
    
  @override
  void BeginMode2D(
    Camera2DD camera,
  ) => run(
    () => RaylibDebugLabels.BeginMode2D(camera),
    () => rl.Core.BeginMode2D.run1(
      rl.Temp.Camera2D$.Ref1(camera).toJS,
    ),
  );

  @override
  void EndMode2D() => run(
    () => RaylibDebugLabels.EndMode2D(),
    () => rl.Core.EndMode2D.run,
  );
    
  @override
  void BeginMode3D(
    Camera3DD camera,
  ) => run(
    () => RaylibDebugLabels.BeginMode3D(camera),
    () => rl.Core.BeginMode3D.run1(
      rl.Temp.Camera3D$.Ref1(camera).toJS,
    ),
  );

  @override
  void EndMode3D() => run(
    () => RaylibDebugLabels.EndMode3D(),
    () => rl.Core.EndMode3D.run,
  );
    
  @override
  void BeginTextureMode(
    RenderTextureD target,
  ) => run(
    () => RaylibDebugLabels.BeginTextureMode(target),
    () => rl.Core.BeginTextureMode.run1(
      rl.Temp.RenderTexture$.Ref1(target).toJS,
    ),
  );
    
  @override
  void EndTextureMode() => run(
    () => RaylibDebugLabels.EndTextureMode(),
    () => rl.Core.EndTextureMode.run,
  );
    
  @override
  void BeginShaderMode(
    ShaderD shader,
  ) => run(
    () => RaylibDebugLabels.BeginShaderMode(shader),
    () => rl.Core.BeginShaderMode.run1(
      rl.Temp.Shader$.Ref1(shader).toJS,
    ),
  );
    
  @override
  void EndShaderMode() => run(
    () => RaylibDebugLabels.EndShaderMode(),
    () => rl.Core.EndShaderMode.run,
  );
    
  @override
  void BeginBlendMode(
    BlendMode mode,
  ) => run(
    () => RaylibDebugLabels.BeginBlendMode(mode),
    () => rl.Core.BeginBlendMode.run1(
      mode.value.toJS,
    ),
  );
    
  @override
  void EndBlendMode() => run(
    () => RaylibDebugLabels.EndBlendMode(),
    () => rl.Core.EndBlendMode.run,
  );
    
  @override
  void BeginScissorMode(
    num x,
    num y,
    num width,
    num height,
  ) => run(
    () => RaylibDebugLabels.BeginScissorMode(x, y, width, height),
    () => rl.Core.BeginScissorMode.run4(
      x.toJS,
      y.toJS,
      width.toJS,
      height.toJS,
    ),
  );
    
  @override
  void EndScissorMode() => run(
    () => RaylibDebugLabels.EndScissorMode(),
    () => rl.Core.EndScissorMode.run,
  );
    
  // TODO: untested, no VR hardware
  @override
  void BeginVrStereoMode(
    VrStereoConfigD config,
  ) => run(
    () => RaylibDebugLabels.BeginVrStereoMode(config),
    () => rl.Core.BeginVrStereoMode.run1(
      rl.Temp.VrStereoConfig$.Ref1(config).toJS,
    ),
  );
    
  // TODO: untested, no VR hardware
  @override
  void EndVrStereoMode() => run(
    () => RaylibDebugLabels.EndVrStereoMode(),
    () => rl.Core.EndVrStereoMode.run,
  );
    
  // TODO: untested, no VR hardware
  @override
  VrStereoConfigD LoadVrStereoConfig(
    VrDeviceInfoD device,
  ) => run(
    () => RaylibDebugLabels.LoadVrStereoConfig(device),
    () => rl.Temp.VrStereoConfig$.RefCapture(
      RaylibCaptureIds.LoadVrStereoConfig(device),
      (p) => rl.Core.LoadVrStereoConfig.run2(
        p.toJS,
        rl.Temp.VrDeviceInfo$.Ref1(device).toJS,
      ),
    ),
  );
    
  // TODO: untested, no VR hardware
  @override
  void UnloadVrStereoConfig(
    VrStereoConfigD config,
  ) => run(
    () => RaylibDebugLabels.UnloadVrStereoConfig(config),
    () => rl.Core.UnloadVrStereoConfig.run1(
      config.getOriginalPointerAndDispose().toJS,
    ),
  );
    
  @override
  ShaderD LoadShader(
    String? vsFileName,
    String? fsFileName,
  ) => run(
    () => RaylibDebugLabels.LoadShader(vsFileName, fsFileName),
    () => rl.Temp.Shader$.RefCapture(
      RaylibCaptureIds.LoadShader(vsFileName, fsFileName),
      (p) => rl.Core.LoadShader.run3(
        p.toJS,
        vsFileName?.toJS,
        fsFileName?.toJS,
      ),
    ),
  );
    
  @override
  ShaderD LoadShaderFromMemory(
    String? vsCode,
    String? fsCode,
  ) => run(
    () => RaylibDebugLabels.LoadShaderFromMemory(vsCode, fsCode),
    () => rl.Temp.Shader$.RefCapture(
      RaylibCaptureIds.LoadShaderFromMemory(vsCode, fsCode),
      (p) => rl.Core.LoadShaderFromMemory.run3(
        p.toJS,
        vsCode?.toJS,
        fsCode?.toJS,
      ),
    ),
  );
    
  @override
  bool IsShaderValid(
    ShaderD shader,
  ) => run(
    () => RaylibDebugLabels.IsShaderValid(shader),
    () => rl.Core.IsShaderValid.run1(
      rl.Temp.Shader$.Ref1(shader).toJS,
    ).toBool(),
  );
    
  @override
  int GetShaderLocation(
    ShaderD shader,
    String uniformName,
  ) => run(
    () => RaylibDebugLabels.GetShaderLocation(shader, uniformName),
    () => rl.Core.GetShaderLocation.run2(
      rl.Temp.Shader$.Ref1(shader).toJS,
      uniformName.toJS,
    ).toInt(),
  );
    
  @override
  int GetShaderLocationAttrib(
    ShaderD shader,
    String attribName,
  ) => run(
    () => RaylibDebugLabels.GetShaderLocationAttrib(shader, attribName),
    () => rl.Core.GetShaderLocationAttrib.run2(
      rl.Temp.Shader$.Ref1(shader).toJS,
      attribName.toJS,
    ).toInt(),
  );
  
  @override
  @DoNotValidate()
  void SetShaderValue(
    ShaderD shader,
    num locIndex,
    List<num> value,
    ShaderUniformDataType uniformType,
  ) => SetShaderValueV(
    shader,
    locIndex,
    value,
    uniformType,
    1,
  );

  @override
  void SetShaderValueV(
    ShaderD shader,
    num locIndex,
    List<num> value,
    ShaderUniformDataType uniformType,
    num count,
  ) => run(
    () => RaylibDebugLabels.SetShaderValueV(shader, locIndex, value, uniformType, count),
    () {
      final WasmPointer ptr = switch (uniformType) {
        .SHADER_UNIFORM_FLOAT ||
        .SHADER_UNIFORM_VEC2  ||
        .SHADER_UNIFORM_VEC3  ||
        .SHADER_UNIFORM_VEC4  => rl.Temp.Float32$.Array(value.cast()),
        
        .SHADER_UNIFORM_INT   ||
        .SHADER_UNIFORM_IVEC2 ||
        .SHADER_UNIFORM_IVEC3 ||
        .SHADER_UNIFORM_IVEC4 => rl.Temp.Int32$.Array(value.cast()),
        
        .SHADER_UNIFORM_SAMPLER2D => rl.Temp.Int32$.Array(value.cast()),
      };

      rl.Core.SetShaderValueV.run5(
        rl.Temp.Shader$.Ref1(shader).toJS,
        locIndex.toJS,
        ptr.toJS,
        uniformType.value.toJS,
        count.toJS,
      );
    },
  );
    
  @override
  void SetShaderValueMatrix(
    ShaderD shader,
    num locIndex,
    MatrixD mat,
  ) => run(
    () => RaylibDebugLabels.SetShaderValueMatrix(shader, locIndex, mat),
    () => rl.Core.SetShaderValueMatrix.run3(
      rl.Temp.Shader$.Ref1(shader).toJS,
      locIndex.toJS,
      rl.Temp.Matrix$.Ref1(mat).toJS,
    ),
  );
    
  @override
  void SetShaderValueTexture(
    ShaderD shader,
    num locIndex,
    TextureD texture,
  ) => run(
    () => RaylibDebugLabels.SetShaderValueTexture(shader, locIndex, texture),
    () => rl.Core.SetShaderValueTexture.run3(
      rl.Temp.Shader$.Ref1(shader).toJS,
      locIndex.toJS,
      rl.Temp.Texture$.Ref1(texture).toJS,
    ),
  );
    
  @override
  void UnloadShader(
    ShaderD shader,
  ) => run(
    () => RaylibDebugLabels.UnloadShader(shader),
    () => rl.Core.UnloadShader.run1(
      shader.getOriginalPointerAndDispose().toJS,
    ),
  );
    
  @override
  RayD GetScreenToWorldRay(
    Vector2D position,
    Camera3DD camera,
  ) => run(
    () => RaylibDebugLabels.GetScreenToWorldRay(position, camera),
    () => rl.Temp.Ray$.Extract1(
      (p) => rl.Core.GetScreenToWorldRay.run3(
        p.toJS,
        rl.Temp.Vector2$.Ref1(position).toJS,
        rl.Temp.Camera3D$.Ref1(camera).toJS,
      ),
    ),
  );
    
  @override
  RayD GetScreenToWorldRayEx(
    Vector2D position,
    Camera3DD camera,
    num width,
    num height,
  ) => run(
    () => RaylibDebugLabels.GetScreenToWorldRayEx(position, camera, width, height),
    () => rl.Temp.Ray$.Extract1(
      (p) => rl.Core.GetScreenToWorldRayEx.run5(
        p.toJS,
        rl.Temp.Vector2$.Ref1(position).toJS,
        rl.Temp.Camera3D$.Ref1(camera).toJS,
        width.toJS,
        height.toJS,
      ),
    ),
  );

  @override
  Vector2D GetWorldToScreen(
    Vector3D position,
    Camera3DD camera,
  ) => run(
    () => RaylibDebugLabels.GetWorldToScreen(position, camera),
    () => rl.Temp.Vector2$.Extract1(
      (p) => rl.Core.GetWorldToScreen.run3(
        p.toJS,
        rl.Temp.Vector3$.Ref1(position).toJS,
        rl.Temp.Camera3D$.Ref1(camera).toJS,
      ),
    ),
  );

  @override
  Vector2D GetWorldToScreenEx(
    Vector3D position,
    Camera3DD camera,
    num width,
    num height,
  ) => run(
    () => RaylibDebugLabels.GetWorldToScreenEx(position, camera, width, height),
    () => rl.Temp.Vector2$.Extract1(
      (p) => rl.Core.GetWorldToScreenEx.run5(
        p.toJS,
        rl.Temp.Vector3$.Ref1(position).toJS,
        rl.Temp.Camera3D$.Ref1(camera).toJS,
        width.toJS,
        height.toJS,
      ),
    ),
  );

  @override
  Vector2D GetWorldToScreen2D(
    Vector2D position,
    Camera2DD camera,
  ) => run(
    () => RaylibDebugLabels.GetWorldToScreen2D(position, camera),
    () => rl.Temp.Vector2$.Extract2(
      (p) => rl.Core.GetWorldToScreen2D.run3(
        p.toJS,
        rl.Temp.Vector2$.Ref1(position).toJS,
        rl.Temp.Camera2D$.Ref1(camera).toJS,
      ),
    ),
  );

  @override
  Vector2D GetScreenToWorld2D(
    Vector2D position,
    Camera2DD camera,
  ) => run(
    () => RaylibDebugLabels.GetScreenToWorld2D(position, camera),
    () => rl.Temp.Vector2$.Extract2(
      (p) => rl.Core.GetScreenToWorld2D.run3(
        p.toJS,
        rl.Temp.Vector2$.Ref1(position).toJS,
        rl.Temp.Camera2D$.Ref1(camera).toJS,
      ),
    ),
  );

  @override
  MatrixD GetCameraMatrix(
    Camera3DD camera,
  ) => run(
    () => RaylibDebugLabels.GetCameraMatrix(camera),
    () => rl.Temp.Matrix$.Extract1(
      (p) => rl.Core.GetCameraMatrix.run2(
        p.toJS,
        rl.Temp.Camera3D$.Ref1(camera).toJS,
      ),
    ),
  );

  @override
  MatrixD GetCameraMatrix2D(
    Camera2DD camera,
  ) => run(
    () => RaylibDebugLabels.GetCameraMatrix2D(camera),
    () => rl.Temp.Matrix$.Extract1(
      (p) => rl.Core.GetCameraMatrix2D.run2(
        p.toJS,
        rl.Temp.Camera2D$.Ref1(camera).toJS,
      ),
    ),
  );
    
  @override
  void SetTargetFPS(
    num fps,
  ) => run(
    () => RaylibDebugLabels.SetTargetFPS(fps),
    () => rl.Core.SetTargetFPS.run1(
      fps.toJS,
    ),
  );

  @override
  double GetFrameTime() => run(
    () => RaylibDebugLabels.GetFrameTime(),
    () => rl.Core.GetFrameTime.run.toDouble(),
  );

  @override
  double GetTime() => run(
    () => RaylibDebugLabels.GetTime(),
    () => rl.Core.GetTime.run.toDouble(),
  );

  @override
  int GetFPS() => run(
    () => RaylibDebugLabels.GetFPS(),
    () => rl.Core.GetFPS.run.toInt(),
  );

  @override
  void SwapScreenBuffer() => run(
    () => RaylibDebugLabels.SwapScreenBuffer(),
    () => rl.Core.SwapScreenBuffer.run,
  );

  @override
  void PollInputEvents() => run(
    () => RaylibDebugLabels.PollInputEvents(),
    () => rl.Core.PollInputEvents.run,
  );

  @override
  void WaitTime(
    num seconds,
  ) => run(
    () => RaylibDebugLabels.WaitTime(seconds),
    () => rl.Core.WaitTime.run1(
      seconds.toJS,
    ),
  );

  @override
  void SetRandomSeed(
    num seed,
  ) => run(
    () => RaylibDebugLabels.SetRandomSeed(seed),
    () => rl.Core.SetRandomSeed.run1(
      seed.toJS,
    ),
  );

  @override
  int GetRandomValue(
    num min,
    num max,
  ) => run(
    () => RaylibDebugLabels.GetRandomValue(min, max),
    () => rl.Core.GetRandomValue.run2(
      min.toJS,
      max.toJS,
    ).toInt(),
  );
  
  @override
  void TakeScreenshot(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.TakeScreenshot(fileName),
    () => rl.Core.TakeScreenshot.run1(
      fileName.toJS,
    ),
  );

  @override
  void SetConfigFlags(
    Iterable<ConfigFlags> flags,
  ) => run(
    () => RaylibDebugLabels.SetConfigFlags(flags),
    () => rl.Core.SetConfigFlags.run1(
      rl.Utils.EnumsAsFlagsOr(flags).toJS,
    ),
  );

  @override
  void OpenURL(
    String url,
  ) => run(
    () => RaylibDebugLabels.OpenURL(url),
    () => rl.Core.OpenURL.run1(
      url.toJS,
    ),
  );

  @override
  void TraceLog(
    TraceLogLevel logLevel,
    String text,
  ) => run(
    () => RaylibDebugLabels.TraceLog(logLevel, text),
    () => rl.Core.TraceLog.run2(
      logLevel.value.toJS,
      text.toJS,
    ),
  );

  @override
  void SetTraceLogLevel(
    TraceLogLevel logLevel,
  ) => run(
    () => RaylibDebugLabels.SetTraceLogLevel(logLevel),
    () => rl.Core.SetTraceLogLevel.run1(
      logLevel.value.toJS,
    ),
  );
    
  @override
  void SetLoadFileDataCallback(
    LoadFileDataCallbackD? callback
  ) => run(
    () => RaylibDebugLabels.SetLoadFileDataCallback(callback),
    () => rl.Core.SetLoadFileDataCallback.run1(
      (callback?.attach() ?? 0).toJS,
    ),
  );
    
  @override
  void SetSaveFileDataCallback(
    SaveFileDataCallbackD? callback
  ) => run(
    () => RaylibDebugLabels.SetSaveFileDataCallback(callback),
    () => rl.Core.SetSaveFileDataCallback.run1(
      (callback?.attach() ?? 0).toJS,
    ),
  );
    
  @override
  void SetLoadFileTextCallback(
    LoadFileTextCallbackD? callback
  ) => run(
    () => RaylibDebugLabels.SetLoadFileTextCallback(callback),
    () => rl.Core.SetLoadFileTextCallback.run1(
      (callback?.attach() ?? 0).toJS,
    ),
  );
    
  @override
  void SetSaveFileTextCallback(
    SaveFileTextCallbackD? callback
  ) => run(
    () => RaylibDebugLabels.SetSaveFileTextCallback(callback),
    () => rl.Core.SetSaveFileTextCallback.run1(
      (callback?.attach() ?? 0).toJS,
    ),
  );
    
  @override
  Uint8List LoadFileData(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.LoadFileData(fileName),
    () {
      final fileSizePtr = rl.Temp.Int32$.Ref1();
      final dataPtr = rl.Core.LoadFileData.run2(
        fileName.toJS,
        fileSizePtr.toJS,
      ).toInt();
      final data = WasmUint8Pointer(dataPtr).readArray(fileSizePtr.value);
      rl.Core.UnloadFileData.run1(dataPtr.toJS);
      return .fromList(data);
    },
  );

  @override
  bool SaveFileData(
    String fileName,
    Uint8List data,
  ) => run(
    () => RaylibDebugLabels.SaveFileData(fileName, data),
    () => rl.Core.SaveFileData.run3(
      fileName.toJS,
      rl.Temp.Uint8$.Array(data).toJS,
      data.length.toJS,
    ).toBool(),
  );

  @override
  bool ExportDataAsCode(
    Uint8List data,
    String fileName,
  ) => run(
    () => RaylibDebugLabels.ExportDataAsCode(data, fileName),
    () => rl.Core.ExportDataAsCode.run3(
      rl.Temp.Uint8$.Array(data).toJS,
      data.length.toJS,
      fileName.toJS,
    ).toBool(),
  );

  @override
  String LoadFileText(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.LoadFileText(fileName),
    () {
      final fileTextPtr = rl.Core.LoadFileText.run1(
        fileName.toJS,
      ).toInt();
      final fileText = WasmStringPointer(fileTextPtr).ref;
      rl.Core.UnloadFileText.run1(fileTextPtr.toJS);
      return fileText;
    },
  );

  @override
  bool SaveFileText(
    String fileName,
    String text,
  ) => run(
    () => RaylibDebugLabels.SaveFileText(fileName, text),
    () => rl.Core.SaveFileText.run2(
      fileName.toJS,
      text.toJS,
    ).toBool(),
  );
    
  @override
  bool FileExists(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.FileExists(fileName),
    () => rl.Core.FileExists.run1(
      fileName.toJS,
    ).toBool(),
  );

  @override
  bool DirectoryExists(
    String dirPath,
  ) => run(
    () => RaylibDebugLabels.DirectoryExists(dirPath),
    () => rl.Core.DirectoryExists.run1(
      dirPath.toJS,
    ).toBool(),
  );

  @override
  bool IsFileExtension(
    String fileName,
    String ext,
  ) => run(
    () => RaylibDebugLabels.IsFileExtension(fileName, ext),
    () => rl.Core.IsFileExtension.run2(
      fileName.toJS,
      ext.toJS,
    ).toBool(),
  );

  @override
  int GetFileLength(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.GetFileLength(fileName),
    () => rl.Core.GetFileLength.run1(
      fileName.toJS,
    ).toInt(),
  );

  @override
  String GetFileExtension(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.GetFileExtension(fileName),
    () {
      final extPtr = rl.Core.GetFileExtension.run1(
        fileName.toJS,
      ).toInt();
      return WasmStringPointer(extPtr).ref;
    },
  );

  @override
  String GetFileName(
    String filePath,
  ) => run(
    () => RaylibDebugLabels.GetFileName(filePath),
    () {
      final fileNamePtr = rl.Core.GetFileName.run1(
        filePath.toJS,
      ).toInt();
      return WasmStringPointer(fileNamePtr).ref;
    },
  );

  @override
  String GetFileNameWithoutExt(
    String filePath,
  ) => run(
    () => RaylibDebugLabels.GetFileNameWithoutExt(filePath),
    () {
      final fileNamePtr = rl.Core.GetFileNameWithoutExt.run1(
        filePath.toJS,
      ).toInt();
      return WasmStringPointer(fileNamePtr).ref;
    },
  );

  @override
  String GetDirectoryPath(
    String filePath,
  ) => run(
    () => RaylibDebugLabels.GetDirectoryPath(filePath),
    () {
      final pathPtr = rl.Core.GetDirectoryPath.run1(
        filePath.toJS,
      ).toInt();
      return WasmStringPointer(pathPtr).ref;
    },
  );

  @override
  String GetPrevDirectoryPath(
    String dirPath,
  ) => run(
    () => RaylibDebugLabels.GetPrevDirectoryPath(dirPath),
    () {
      final pathPtr = rl.Core.GetPrevDirectoryPath.run1(
        dirPath.toJS,
      ).toInt();
      return WasmStringPointer(pathPtr).ref;
    },
  );

  @override
  String GetWorkingDirectory() => run(
    () => RaylibDebugLabels.GetWorkingDirectory(),
    () {
      final pathPtr = rl.Core.GetWorkingDirectory.run.toInt();
      return WasmStringPointer(pathPtr).ref;
    },
  );

  @override
  String GetApplicationDirectory() => run(
    () => RaylibDebugLabels.GetApplicationDirectory(),
    () {
      final pathPtr = rl.Core.GetApplicationDirectory.run.toInt();
      return WasmStringPointer(pathPtr).ref;
    },
  );

  @override
  int MakeDirectory(
    String dirPath,
  ) => run(
    () => RaylibDebugLabels.MakeDirectory(dirPath),
    () => rl.Core.MakeDirectory.run1(
      dirPath.toJS,
    ).toInt(),
  );

  @override
  bool ChangeDirectory(
    String dir,
  ) => run(
    () => RaylibDebugLabels.ChangeDirectory(dir),
    () => rl.Core.ChangeDirectory.run1(
      dir.toJS,
    ).toBool(),
  );

  @override
  bool IsPathFile(
    String path,
  ) => run(
    () => RaylibDebugLabels.IsPathFile(path),
    () => rl.Core.IsPathFile.run1(
      path.toJS,
    ).toBool(),
  );

  @override
  bool IsFileNameValid(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.IsFileNameValid(fileName),
    () => rl.Core.IsFileNameValid.run1(
      fileName.toJS,
    ).toBool(),
  );
    
  @override
  FilePathListD LoadDirectoryFiles(
    String dirPath,
  ) => run(
    () => RaylibDebugLabels.LoadDirectoryFiles(dirPath),
    () => rl.Temp.FilePathList$.RefCapture(
      RaylibCaptureIds.LoadDirectoryFiles(dirPath),
      (p) => rl.Core.LoadDirectoryFiles.run2(
        p.toJS,
        dirPath.toJS,
      ),
    ),
  );
    
  @override
  FilePathListD LoadDirectoryFilesEx(
    String basePath,
    String filter,
    bool scanSubdirs,
  ) => run(
    () => RaylibDebugLabels.LoadDirectoryFilesEx(basePath, filter, scanSubdirs),
    () => rl.Temp.FilePathList$.RefCapture(
      RaylibCaptureIds.LoadDirectoryFilesEx(basePath, filter, scanSubdirs),
      (p) => rl.Core.LoadDirectoryFilesEx.run4(
        p.toJS,
        basePath.toJS,
        filter.toJS,
        scanSubdirs.toJS,
      ),
    ),
  );

  @override
  void UnloadDirectoryFiles(
    FilePathListD files,
  ) => run(
    () => RaylibDebugLabels.UnloadDirectoryFiles(files),
    () => rl.Core.UnloadDirectoryFiles.run1(
      files.getOriginalPointerAndDispose().toJS,
    ),
  );
    
  @override
  bool IsFileDropped() => run(
    () => RaylibDebugLabels.IsFileDropped(),
    () => rl.Core.IsFileDropped.run.toBool(),
  );
    
  @override
  FilePathListD LoadDroppedFiles() => run(
    () => RaylibDebugLabels.LoadDroppedFiles(),
    () => rl.Temp.FilePathList$.RefCapture(
      RaylibCaptureIds.LoadDroppedFiles(),
      (p) => rl.Core.LoadDroppedFiles.run1(
        p.toJS,
      ),
    ),
  );

  @override
  void UnloadDroppedFiles(
    FilePathListD files,
  ) => run(
    () => RaylibDebugLabels.UnloadDroppedFiles(files),
    () => rl.Core.UnloadDroppedFiles.run1(
      files.getOriginalPointerAndDispose().toJS,
    ),
  );

  @override
  int GetFileModTime(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.GetFileModTime(fileName),
    () => rl.Core.GetFileModTime.run1(
      fileName.toJS,
    ).toInt(),
  );

  @override
  Uint8List CompressData(
    Uint8List data,
  ) => run(
    () => RaylibDebugLabels.CompressData(data),
    () {
      final compDataSizePtr = rl.Temp.Int32$.Ref1();
      final compDataPtr = rl.Core.CompressData.run3(
        rl.Temp.Uint8$.Array(data).toJS,
        data.length.toJS,
        compDataSizePtr.toJS,
      ).toInt();
      final newData = WasmUint8Pointer(compDataPtr).readTypedArray(compDataSizePtr.value);
      WasmMemory.free(compDataPtr);
      return newData;
    },
  );

  @override
  Uint8List DecompressData(
    Uint8List compData,
  ) => run(
    () => RaylibDebugLabels.DecompressData(compData),
    () {
      final dataSizePtr = rl.Temp.Int32$.Ref1();
      final dataPtr = rl.Core.DecompressData.run3(
        rl.Temp.Uint8$.Array(compData).toJS,
        compData.length.toJS,
        dataSizePtr.toJS,
      ).toInt();
      final newData = WasmUint8Pointer(dataPtr).readTypedArray(dataSizePtr.value);
      WasmMemory.free(dataPtr);
      return newData;
    },
  );

  @override
  Uint8List EncodeDataBase64(
    Uint8List data,
  ) => run(
    () => RaylibDebugLabels.EncodeDataBase64(data),
    () {
      final outputSizePtr = rl.Temp.Int32$.Ref1();
      final outputDataPtr = rl.Core.EncodeDataBase64.run3(
        rl.Temp.Uint8$.Array(data).toJS,
        data.length.toJS,
        outputSizePtr.toJS,
      ).toInt();
      final newData = WasmInt8Pointer(outputDataPtr).readTypedArray(outputSizePtr.value);
      WasmMemory.free(outputDataPtr);
      return .fromList(newData);
    },
  );

  @override
  Uint8List DecodeDataBase64(
    Uint8List data,
  ) => run(
    () => RaylibDebugLabels.DecodeDataBase64(data),
    () {
      final outputSizePtr = rl.Temp.Int32$.Ref1();
      final outputDataPtr = rl.Core.DecodeDataBase64.run2(
        rl.Temp.Uint8$.Array(data).toJS,
        outputSizePtr.toJS,
      ).toInt();
      final newData = WasmUint8Pointer(outputDataPtr).readTypedArray(outputSizePtr.value);
      WasmMemory.free(outputDataPtr);
      return newData;
    },
  );

  @override
  int ComputeCRC32(
    Uint8List data,
  ) => run(
    () => RaylibDebugLabels.ComputeCRC32(data),
    () => rl.Core.ComputeCRC32.run2(
      rl.Temp.Uint8$.Array(data).toJS,
      data.length.toJS,
    ).toInt(),
  );

  @override
  Uint8List ComputeMD5(
    Uint8List data,
  ) => run(
    () => RaylibDebugLabels.ComputeMD5(data),
    () => .fromList(rl.Temp.Uint32$.ToLEBytes(
      rl.Core.ComputeMD5.run2(
        rl.Temp.Uint8$.Array(data).toJS,
        data.length.toJS,
      ).toInt(),
      rl.Utils.md5Uint32HashLength,
    )),
  );

  @override
  Uint8List ComputeSHA1(
    Uint8List data,
  ) => run(
    () => RaylibDebugLabels.ComputeSHA1(data),
    () => .fromList(rl.Temp.Uint32$.ToBEBytes(
      rl.Core.ComputeSHA1.run2(
        rl.Temp.Uint8$.Array(data).toJS,
        data.length.toJS,
      ).toInt(),
      rl.Utils.sha1Uint32HashLength,
    )),
  );
    
  @override
  AutomationEventListD LoadAutomationEventList(
    String? fileName,
  ) => run(
    () => RaylibDebugLabels.LoadAutomationEventList(fileName),
    () => rl.Temp.AutomationEventList$.RefCapture(
      RaylibCaptureIds.LoadAutomationEventList(fileName),
      (p) => rl.Core.LoadAutomationEventList.run2(
        p.toJS,
        fileName?.toJS,
      ),
    ),
  );
    
  @override
  void UnloadAutomationEventList(
    AutomationEventListD list,
  ) => run(
    () => RaylibDebugLabels.UnloadAutomationEventList(list),
    () => rl.Core.UnloadAutomationEventList.run1(
      list.getOriginalPointerAndDispose().toJS,
    ),
  );
    
  @override
  bool ExportAutomationEventList(
    AutomationEventListD list,
    String fileName,
  ) => run(
    () => RaylibDebugLabels.ExportAutomationEventList(list, fileName),
    () => rl.Core.ExportAutomationEventList.run2(
      rl.Temp.AutomationEventList$.Ref1(list).toJS,
      fileName.toJS,
    ).toBool(),
  );
    
  @override
  void SetAutomationEventList(
    AutomationEventListD list,
  ) => run(
    () => RaylibDebugLabels.SetAutomationEventList(list),
    () => rl.Core.SetAutomationEventList.run1(
      rl.Temp.AutomationEventList$.Ref1(list).toJS,
    ),
  );
    
  @override
  void SetAutomationEventBaseFrame(
    int frame,
  ) => run(
    () => RaylibDebugLabels.SetAutomationEventBaseFrame(frame),
    () => rl.Core.SetAutomationEventBaseFrame.run1(
      frame.toJS,
    ),
  );
    
  @override
  void StartAutomationEventRecording() => run(
    () => RaylibDebugLabels.StartAutomationEventRecording(),
    () => rl.Core.StartAutomationEventRecording.run,
  );

  @override
  void StopAutomationEventRecording() => run(
    () => RaylibDebugLabels.StopAutomationEventRecording(),
    () => rl.Core.StopAutomationEventRecording.run,
  );
    
  @override
  void PlayAutomationEvent(
    AutomationEventD event,
  ) => run(
    () => RaylibDebugLabels.PlayAutomationEvent(event),
    () => rl.Core.PlayAutomationEvent.run1(
      rl.Temp.AutomationEvent$.Ref1(event).toJS,
    ),
  );

  @override
  bool IsKeyPressed(
    KeyboardKey key,
  ) => run(
    () => RaylibDebugLabels.IsKeyPressed(key),
    () => rl.Core.IsKeyPressed.run1(
      key.value.toJS
    ).toBool(),
  );

  @override
  bool IsKeyPressedRepeat(
    KeyboardKey key,
  ) => run(
    () => RaylibDebugLabels.IsKeyPressedRepeat(key),
    () => rl.Core.IsKeyPressedRepeat.run1(
      key.value.toJS
    ).toBool(),
  );

  @override
  bool IsKeyDown(
    KeyboardKey key,
  ) => run(
    () => RaylibDebugLabels.IsKeyDown(key),
    () => rl.Core.IsKeyDown.run1(
      key.value.toJS
    ).toBool(),
  );
  
  @override
  bool IsKeyReleased(
    KeyboardKey key,
  ) => run(
    () => RaylibDebugLabels.IsKeyReleased(key),
    () => rl.Core.IsKeyReleased.run1(
      key.value.toJS
    ).toBool(),
  );
  
  @override
  bool IsKeyUp(
    KeyboardKey key,
  ) => run(
    () => RaylibDebugLabels.IsKeyUp(key),
    () => rl.Core.IsKeyUp.run1(
      key.value.toJS
    ).toBool(),
  );

  @override
  int GetKeyPressed() => run(
    () => RaylibDebugLabels.GetKeyPressed(),
    () => rl.Core.GetKeyPressed.run.toInt(),
  );

  @override
  int GetCharPressed() => run(
    () => RaylibDebugLabels.GetCharPressed(),
    () => rl.Core.GetCharPressed.run.toInt(),
  );

  @override
  void SetExitKey(
    KeyboardKey key,
  ) => run(
    () => RaylibDebugLabels.SetExitKey(key),
    () => rl.Core.SetExitKey.run1(
      key.value.toJS,
    ),
  );

  @override
  bool IsGamepadAvailable(
    num gamepad,
  ) => run(
    () => RaylibDebugLabels.IsGamepadAvailable(gamepad),
    () => rl.Core.IsGamepadAvailable.run1(
      gamepad.toJS,
    ).toBool(),
  );

  @override
  String GetGamepadName(
    num gamepad,
  ) => run(
    () => RaylibDebugLabels.GetGamepadName(gamepad),
    () {
      final namePtr = rl.Core.GetGamepadName.run1(
        gamepad.toJS,
      ).toInt();
      return WasmStringPointer(namePtr).ref;
    },
  );

  @override
  bool IsGamepadButtonPressed(
    num gamepad,
    GamepadButton button,
  ) => run(
    () => RaylibDebugLabels.IsGamepadButtonPressed(gamepad, button),
    () => rl.Core.IsGamepadButtonPressed.run2(
      gamepad.toJS,
      button.value.toJS,
    ).toBool(),
  );

  @override
  bool IsGamepadButtonDown(
    num gamepad,
    GamepadButton button,
  ) => run(
    () => RaylibDebugLabels.IsGamepadButtonDown(gamepad, button),
    () => rl.Core.IsGamepadButtonDown.run2(
      gamepad.toJS,
      button.value.toJS,
    ).toBool(),
  );

  @override
  bool IsGamepadButtonReleased(
    num gamepad,
    GamepadButton button,
  ) => run(
    () => RaylibDebugLabels.IsGamepadButtonReleased(gamepad, button),
    () => rl.Core.IsGamepadButtonReleased.run2(
      gamepad.toJS,
      button.value.toJS,
    ).toBool(),
  );

  @override
  bool IsGamepadButtonUp(
    num gamepad,
    GamepadButton button,
  ) => run(
    () => RaylibDebugLabels.IsGamepadButtonUp(gamepad, button),
    () => rl.Core.IsGamepadButtonUp.run2(
      gamepad.toJS,
      button.value.toJS,
    ).toBool(),
  );

  @override
  GamepadButton GetGamepadButtonPressed() => run(
    () => RaylibDebugLabels.GetGamepadButtonPressed(),
    () => .fromValue(rl.Core.GetGamepadButtonPressed.run.toInt()),
  );

  @override
  int GetGamepadAxisCount(
    num gamepad,
  ) => run(
    () => RaylibDebugLabels.GetGamepadAxisCount(gamepad),
    () => rl.Core.GetGamepadAxisCount.run1(
      gamepad.toJS,
    ).toInt(),
  );

  @override
  double GetGamepadAxisMovement(
    num gamepad,
    GamepadAxis axis,
  ) => run(
    () => RaylibDebugLabels.GetGamepadAxisMovement(gamepad, axis),
    () => rl.Core.GetGamepadAxisMovement.run2(
      gamepad.toJS,
      axis.value.toJS,
    ).toDouble(),
  );

  @override
  int SetGamepadMappings(
    String mappings,
  ) => run(
    () => RaylibDebugLabels.SetGamepadMappings(mappings),
    () => rl.Core.SetGamepadMappings.run1(
      mappings.toJS,
    ).toInt(),
  );
    
  @override
  void SetGamepadVibration(
    num gamepad,
    num leftMotor,
    num rightMotor,
    num duration,
  ) => run(
    () => RaylibDebugLabels.SetGamepadVibration(gamepad, leftMotor, rightMotor, duration),
    () => rl.Core.SetGamepadVibration.run4(
      gamepad.toJS,
      leftMotor.toJS,
      rightMotor.toJS,
      duration.toJS,
    ),
  );

  @override
  bool IsMouseButtonPressed(
    MouseButton button,
  ) => run(
    () => RaylibDebugLabels.IsMouseButtonPressed(button),
    () => rl.Core.IsMouseButtonPressed.run1(
      button.value.toJS,
    ).toBool(),
  );

  @override
  bool IsMouseButtonDown(
    MouseButton button,
  ) => run(
    () => RaylibDebugLabels.IsMouseButtonDown(button),
    () => rl.Core.IsMouseButtonDown.run1(
      button.value.toJS,
    ).toBool(),
  );

  @override
  bool IsMouseButtonReleased(
    MouseButton button,
  ) => run(
    () => RaylibDebugLabels.IsMouseButtonReleased(button),
    () => rl.Core.IsMouseButtonReleased.run1(
      button.value.toJS,
    ).toBool(),
  );

  @override
  bool IsMouseButtonUp(
    MouseButton button,
  ) => run(
    () => RaylibDebugLabels.IsMouseButtonUp(button),
    () => rl.Core.IsMouseButtonUp.run1(
      button.value.toJS,
    ).toBool(),
  );

  @override
  int GetMouseX() => run(
    () => RaylibDebugLabels.GetMouseX(),
    () => rl.Core.GetMouseX.run.toInt(),
  );

  @override
  int GetMouseY() => run(
    () => RaylibDebugLabels.GetMouseY(),
    () => rl.Core.GetMouseY.run.toInt(),
  );

  @override
  Vector2D GetMousePosition() => run(
    () => RaylibDebugLabels.GetMousePosition(),
    () => rl.Temp.Vector2$.Extract1(
      (p) => rl.Core.GetMousePosition.run1(
        p.toJS,
      ),
    ),
  );

  @override
  Vector2D GetMouseDelta() => run(
    () => RaylibDebugLabels.GetMouseDelta(),
    () => rl.Temp.Vector2$.Extract1(
      (p) => rl.Core.GetMouseDelta.run1(
        p.toJS,
      ),
    ),
  );

  @override
  void SetMousePosition(
    num x,
    num y,
  ) => run(
    () => RaylibDebugLabels.SetMousePosition(x, y),
    () => rl.Core.SetMousePosition.run2(
      x.toJS,
      y.toJS,
    ),
  );

  @override
  void SetMouseOffset(
    num offsetX,
    num offsetY,
  ) => run(
    () => RaylibDebugLabels.SetMouseOffset(offsetX, offsetY),
    () => rl.Core.SetMouseOffset.run2(
      offsetX.toJS,
      offsetY.toJS,
    ),
  );

  @override
  void SetMouseScale(
    num scaleX,
    num scaleY,
  ) => run(
    () => RaylibDebugLabels.SetMouseScale(scaleX, scaleY),
    () => rl.Core.SetMouseScale.run2(
      scaleX.toJS,
      scaleY.toJS,
    ),
  );

  @override
  double GetMouseWheelMove() => run(
    () => RaylibDebugLabels.GetMouseWheelMove(),
    () => rl.Core.GetMouseWheelMove.run.toDouble(),
  );

  @override
  Vector2D GetMouseWheelMoveV() => run(
    () => RaylibDebugLabels.GetMouseWheelMoveV(),
    () => rl.Temp.Vector2$.Extract1(
      (p) => rl.Core.GetMouseWheelMoveV.run1(
        p.toJS,
      ),
    ),
  );

  @override
  void SetMouseCursor(
    MouseCursor cursor,
  ) => run(
    () => RaylibDebugLabels.SetMouseCursor(cursor),
    () => rl.Core.SetMouseCursor.run1(
      cursor.value.toJS,
    ),
  );

  @override
  int GetTouchX() => run(
    () => RaylibDebugLabels.GetTouchX(),
    () => rl.Core.GetTouchX.run.toInt(),
  );

  @override
  int GetTouchY() => run(
    () => RaylibDebugLabels.GetTouchY(),
    () => rl.Core.GetTouchY.run.toInt(),
  );

  @override
  Vector2D GetTouchPosition(
    num index,
  ) => run(
    () => RaylibDebugLabels.GetTouchPosition(index),
    () => rl.Temp.Vector2$.Extract1(
      (p) => rl.Core.GetTouchPosition.run2(
        p.toJS,
        index.toJS,
      ),
    ),
  );

  @override
  int GetTouchPointId(
    num index,
  ) => run(
    () => RaylibDebugLabels.GetTouchPointId(index),
    () => rl.Core.GetTouchPointId.run1(
      index.toJS,
    ).toInt(),
  );

  @override
  int GetTouchPointCount() => run(
    () => RaylibDebugLabels.GetTouchPointCount(),
    () => rl.Core.GetTouchPointCount.run.toInt(),
  );

  @override
  void SetGesturesEnabled(
    Iterable<Gesture> flags,
  ) => run(
    () => RaylibDebugLabels.SetGesturesEnabled(flags),
    () => rl.Core.SetGesturesEnabled.run1(
      rl.Utils.EnumsAsFlagsOr(flags).toJS,
    ),
  );

  @override
  bool IsGestureDetected(
    Gesture key,
  ) => run(
    () => RaylibDebugLabels.IsGestureDetected(key),
    () => rl.Core.IsGestureDetected.run1(
      key.value.toJS,
    ).toBool(),
  );

  @override
  Gesture GetGestureDetected() => run(
    () => RaylibDebugLabels.GetGestureDetected(),
    () => .fromValue(rl.Core.GetGestureDetected.run.toInt()),
  );

  @override
  double GetGestureHoldDuration() => run(
    () => RaylibDebugLabels.GetGestureHoldDuration(),
    () => rl.Core.GetGestureHoldDuration.run.toDouble(),
  );

  @override
  Vector2D GetGestureDragVector() => run(
    () => RaylibDebugLabels.GetGestureDragVector(),
    () => rl.Temp.Vector2$.Extract1(
      (p) => rl.Core.GetGestureDragVector.run1(
        p.toJS,
      ),
    ),
  );

  @override
  double GetGestureDragAngle() => run(
    () => RaylibDebugLabels.GetGestureDragAngle(),
    () => rl.Core.GetGestureDragAngle.run.toDouble(),
  );

  @override
  Vector2D GetGesturePinchVector() => run(
    () => RaylibDebugLabels.GetGesturePinchVector(),
    () => rl.Temp.Vector2$.Extract1(
      (p) => rl.Core.GetGesturePinchVector.run1(
        p.toJS,
      ),
    ),
  );

  @override
  double GetGesturePinchAngle() => run(
    () => RaylibDebugLabels.GetGesturePinchAngle(),
    () => rl.Core.GetGesturePinchAngle.run.toDouble(),
  );
    
  @override
  void UpdateCamera(
    Camera3DD camera,
    CameraMode mode,
  ) => run(
    () => RaylibDebugLabels.UpdateCamera(camera, mode),
    () => rl.Temp.Camera3D$.RefUpdate1(camera,
      (p) => rl.Core.UpdateCamera.run2(
        p.toJS,
        mode.value.toJS,
      ),
    ),
  );

  @override
  void UpdateCameraPro(
    Camera3DD camera,
    Vector3D movement,
    Vector3D rotation,
    num zoom,
  ) => run(
    () => RaylibDebugLabels.UpdateCameraPro(camera, movement, rotation, zoom),
    () => rl.Temp.Camera3D$.RefUpdate1(camera,
      (p) => rl.Core.UpdateCameraPro.run4(
        p.toJS,
        rl.Temp.Vector3$.Ref1(movement).toJS,
        rl.Temp.Vector3$.Ref2(rotation).toJS,
        zoom.toJS,
      )
    ),
  );

  @override
  void SetShapesTexture(
    TextureD texture,
    RectangleD source,
  ) => run(
    () => RaylibDebugLabels.SetShapesTexture(texture, source),
    () => rl.Core.SetShapesTexture.run2(
      rl.Temp.Texture$.Ref1(texture).toJS,
      rl.Temp.Rectangle$.Ref1(source).toJS,
    ),
  );

  @override
  TextureD GetShapesTexture() => run(
    () => RaylibDebugLabels.GetShapesTexture(),
    () => rl.Temp.Texture$.Extract1(
      (p) => rl.Core.GetShapesTexture.run1(
        p.toJS,
      ),
    ),
  );

  @override
  RectangleD GetShapesTextureRectangle() => run(
    () => RaylibDebugLabels.GetShapesTextureRectangle(),
    () => rl.Temp.Rectangle$.Extract1(
      (p) => rl.Core.GetShapesTextureRectangle.run1(
        p.toJS,
      ),
    ),
  );

  @override
  void DrawPixel(
    num posX,
    num posY,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawPixel(posX, posY, color),
    () => rl.Core.DrawPixel.run3(
      posX.toJS,
      posY.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawPixelV(
    Vector2D position,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawPixelV(position, color),
    () => rl.Core.DrawPixelV.run2(
      rl.Temp.Vector2$.Ref1(position).toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawLine(
    num startPosX,
    num startPosY,
    num endPosX,
    num endPosY,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawLine(startPosX, startPosY, endPosX, endPosY, color),
    () => rl.Core.DrawLine.run5(
      startPosX.toJS,
      startPosY.toJS,
      endPosX.toJS,
      endPosY.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawLineV(
    Vector2D startPos,
    Vector2D endPos,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawLineV(startPos, endPos, color),
    () => rl.Core.DrawLineV.run3(
      rl.Temp.Vector2$.Ref1(startPos).toJS,
      rl.Temp.Vector2$.Ref2(endPos).toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawLineEx(
    Vector2D startPos,
    Vector2D endPos,
    num thick,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawLineEx(startPos, endPos, thick, color),
    () => rl.Core.DrawLineEx.run4(
      rl.Temp.Vector2$.Ref1(startPos).toJS,
      rl.Temp.Vector2$.Ref2(endPos).toJS,
      thick.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawLineStrip(
    List<Vector2D> points,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawLineStrip(points, color),
    () => rl.Core.DrawLineStrip.run3(
      rl.Temp.Vector2$.Array(points).toJS,
      points.length.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawLineBezier(
    Vector2D startPos,
    Vector2D endPos,
    num thick,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawLineBezier(startPos, endPos, thick, color),
    () => rl.Core.DrawLineBezier.run4(
      rl.Temp.Vector2$.Ref1(startPos).toJS,
      rl.Temp.Vector2$.Ref2(endPos).toJS,
      thick.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawCircle(
    num centerX,
    num centerY,
    num radius,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawCircle(centerX, centerY, radius, color),
    () => rl.Core.DrawCircle.run4(
      centerX.toJS,
      centerY.toJS,
      radius.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawCircleSector(
    Vector2D center,
    num radius,
    num startAngle,
    num endAngle,
    num segments,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawCircleSector(center, radius, startAngle, endAngle, segments, color),
    () => rl.Core.DrawCircleSector.run6(
      rl.Temp.Vector2$.Ref1(center).toJS,
      radius.toJS,
      startAngle.toJS,
      endAngle.toJS,
      segments.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawCircleSectorLines(
    Vector2D center,
    num radius,
    num startAngle,
    num endAngle,
    num segments,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawCircleSectorLines(center, radius, startAngle, endAngle, segments, color),
    () => rl.Core.DrawCircleSectorLines.run6(
      rl.Temp.Vector2$.Ref1(center).toJS,
      radius.toJS,
      startAngle.toJS,
      endAngle.toJS,
      segments.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawCircleGradient(
    num centerX,
    num centerY,
    num radius,
    ColorD inner,
    ColorD outer,
  ) => run(
    () => RaylibDebugLabels.DrawCircleGradient(centerX, centerY, radius, inner, outer),
    () => rl.Core.DrawCircleGradient.run5(
      centerX.toJS,
      centerY.toJS,
      radius.toJS,
      rl.Temp.Color$.Ref1(inner).toJS,
      rl.Temp.Color$.Ref2(outer).toJS,
    ),
  );

  @override
  void DrawCircleV(
    Vector2D center,
    num radius,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawCircleV(center, radius, color),
    () => rl.Core.DrawCircleV.run3(
      rl.Temp.Vector2$.Ref1(center).toJS,
      radius.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawCircleLines(
    num centerX,
    num centerY,
    num radius,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawCircleLines(centerX, centerY, radius, color),
    () => rl.Core.DrawCircleLines.run4(
      centerX.toJS,
      centerY.toJS,
      radius.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawCircleLinesV(
    Vector2D center,
    num radius,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawCircleLinesV(center, radius, color),
    () => rl.Core.DrawCircleLinesV.run3(
      rl.Temp.Vector2$.Ref1(center).toJS,
      radius.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawEllipse(
    num centerX,
    num centerY,
    num radiusH,
    num radiusV,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawEllipse(centerX, centerY, radiusH, radiusV, color),
    () => rl.Core.DrawEllipse.run5(
      centerX.toJS,
      centerY.toJS,
      radiusH.toJS,
      radiusV.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawEllipseLines(
    num centerX,
    num centerY,
    num radiusH,
    num radiusV,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawEllipseLines(centerX, centerY, radiusH, radiusV, color),
    () => rl.Core.DrawEllipseLines.run5(
      centerX.toJS,
      centerY.toJS,
      radiusH.toJS,
      radiusV.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawRing(
    Vector2D center,
    num innerRadius,
    num outerRadius,
    num startAngle,
    num endAngle,
    num segments,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawRing(center, innerRadius, outerRadius, startAngle, endAngle, segments, color),
    () => rl.Core.DrawRing.run7(
      rl.Temp.Vector2$.Ref1(center).toJS,
      innerRadius.toJS,
      outerRadius.toJS,
      startAngle.toJS,
      endAngle.toJS,
      segments.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawRingLines(
    Vector2D center,
    num innerRadius,
    num outerRadius,
    num startAngle,
    num endAngle,
    num segments,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawRingLines(center, innerRadius, outerRadius, startAngle, endAngle, segments, color),
    () => rl.Core.DrawRingLines.run7(
      rl.Temp.Vector2$.Ref1(center).toJS,
      innerRadius.toJS,
      outerRadius.toJS,
      startAngle.toJS,
      endAngle.toJS,
      segments.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawRectangle(
    num posX,
    num posY,
    num width,
    num height,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawRectangle(posX, posY, width, height, color),
    () => rl.Core.DrawRectangle.run5(
      posX.toJS,
      posY.toJS,
      width.toJS,
      height.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawRectangleV(
    Vector2D position,
    Vector2D size,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawRectangleV(position, size, color),
    () => rl.Core.DrawRectangleV.run3(
      rl.Temp.Vector2$.Ref1(position).toJS,
      rl.Temp.Vector2$.Ref2(size).toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawRectangleRec(
    RectangleD rec,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawRectangleRec(rec, color),
    () => rl.Core.DrawRectangleRec.run2(
      rl.Temp.Rectangle$.Ref1(rec).toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawRectanglePro(
    RectangleD rec,
    Vector2D origin,
    num rotation,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawRectanglePro(rec, origin, rotation, color),
    () => rl.Core.DrawRectanglePro.run4(
      rl.Temp.Rectangle$.Ref1(rec).toJS,
      rl.Temp.Vector2$.Ref1(origin).toJS,
      rotation.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawRectangleGradientV(
    num posX,
    num posY,
    num width,
    num height,
    ColorD top,
    ColorD bottom,
  ) => run(
    () => RaylibDebugLabels.DrawRectangleGradientV(posX, posY, width, height, top, bottom),
    () => rl.Core.DrawRectangleGradientV.run6(
      posX.toJS,
      posY.toJS,
      width.toJS,
      height.toJS,
      rl.Temp.Color$.Ref1(top).toJS,
      rl.Temp.Color$.Ref2(bottom).toJS,
    ),
  );

  @override
  void DrawRectangleGradientH(
    num posX,
    num posY,
    num width,
    num height,
    ColorD left,
    ColorD right,
  ) => run(
    () => RaylibDebugLabels.DrawRectangleGradientH(posX, posY, width, height, left, right),
    () => rl.Core.DrawRectangleGradientH.run6(
      posX.toJS,
      posY.toJS,
      width.toJS,
      height.toJS,
      rl.Temp.Color$.Ref1(left).toJS,
      rl.Temp.Color$.Ref2(right).toJS,
    ),
  );

  @override
  void DrawRectangleGradientEx(
    RectangleD rec,
    ColorD topLeft,
    ColorD bottomLeft,
    ColorD topRight,
    ColorD bottomRight,
  ) => run(
    () => RaylibDebugLabels.DrawRectangleGradientEx(rec, topLeft, bottomLeft, topRight, bottomRight),
    () => rl.Core.DrawRectangleGradientEx.run5(
      rl.Temp.Rectangle$.Ref1(rec).toJS,
      rl.Temp.Color$.Ref1(topLeft).toJS,
      rl.Temp.Color$.Ref2(bottomLeft).toJS,
      rl.Temp.Color$.Ref3(topRight).toJS,
      rl.Temp.Color$.Ref4(bottomRight).toJS,
    ),
  );

  @override
  void DrawRectangleLines(
    num posX,
    num posY,
    num width,
    num height,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawRectangleLines(posX, posY, width, height, color),
    () => rl.Core.DrawRectangleLines.run5(
      posX.toJS,
      posY.toJS,
      width.toJS,
      height.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawRectangleLinesEx(
    RectangleD rec,
    num lineThick,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawRectangleLinesEx(rec, lineThick, color),
    () => rl.Core.DrawRectangleLinesEx.run3(
      rl.Temp.Rectangle$.Ref1(rec).toJS,
      lineThick.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawRectangleRounded(
    RectangleD rec,
    num roundness,
    num segments,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawRectangleRounded(rec, roundness, segments, color),
    () => rl.Core.DrawRectangleRounded.run4(
      rl.Temp.Rectangle$.Ref1(rec).toJS,
      roundness.toJS,
      segments.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawRectangleRoundedLines(
    RectangleD rec,
    num roundness,
    num segments,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawRectangleRoundedLines(rec, roundness, segments, color),
    () => rl.Core.DrawRectangleRoundedLines.run4(
      rl.Temp.Rectangle$.Ref1(rec).toJS,
      roundness.toJS,
      segments.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawRectangleRoundedLinesEx(
    RectangleD rec,
    num roundness,
    num segments,
    num lineThick,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawRectangleRoundedLinesEx(rec, roundness, segments, lineThick, color),
    () => rl.Core.DrawRectangleRoundedLinesEx.run5(
      rl.Temp.Rectangle$.Ref1(rec).toJS,
      roundness.toJS,
      segments.toJS,
      lineThick.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawTriangle(
    Vector2D v1,
    Vector2D v2,
    Vector2D v3,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawTriangle(v1, v2, v3, color),
    () => rl.Core.DrawTriangle.run4(
      rl.Temp.Vector2$.Ref1(v1).toJS,
      rl.Temp.Vector2$.Ref2(v2).toJS,
      rl.Temp.Vector2$.Ref3(v3).toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawTriangleLines(
    Vector2D v1,
    Vector2D v2,
    Vector2D v3,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawTriangleLines(v1, v2, v3, color),
    () => rl.Core.DrawTriangleLines.run4(
      rl.Temp.Vector2$.Ref1(v1).toJS,
      rl.Temp.Vector2$.Ref2(v2).toJS,
      rl.Temp.Vector2$.Ref3(v3).toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawTriangleFan(
    List<Vector2D> points,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawTriangleFan(points, color),
    () => rl.Core.DrawTriangleFan.run3(
      rl.Temp.Vector2$.Array(points).toJS,
      points.length.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawTriangleStrip(
    List<Vector2D> points,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawTriangleStrip(points, color),
    () => rl.Core.DrawTriangleStrip.run3(
      rl.Temp.Vector2$.Array(points).toJS,
      points.length.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawPoly(
    Vector2D center,
    num sides,
    num radius,
    num rotation,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawPoly(center, sides, radius, rotation, color),
    () => rl.Core.DrawPoly.run5(
      rl.Temp.Vector2$.Ref1(center).toJS,
      sides.toJS,
      radius.toJS,
      rotation.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawPolyLines(
    Vector2D center,
    num sides,
    num radius,
    num rotation,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawPolyLines(center, sides, radius, rotation, color),
    () => rl.Core.DrawPolyLines.run5(
      rl.Temp.Vector2$.Ref1(center).toJS,
      sides.toJS,
      radius.toJS,
      rotation.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawPolyLinesEx(
    Vector2D center,
    num sides,
    num radius,
    num rotation,
    num lineThick,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawPolyLinesEx(center, sides, radius, rotation, lineThick, color),
    () => rl.Core.DrawPolyLinesEx.run6(
      rl.Temp.Vector2$.Ref1(center).toJS,
      sides.toJS,
      radius.toJS,
      rotation.toJS,
      lineThick.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawSplineLinear(
    List<Vector2D> points,
    num thick,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawSplineLinear(points, thick, color),
    () => rl.Core.DrawSplineLinear.run4(
      rl.Temp.Vector2$.Array(points).toJS,
      points.length.toJS,
      thick.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawSplineBasis(
    List<Vector2D> points,
    num thick,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawSplineBasis(points, thick, color),
    () => rl.Core.DrawSplineBasis.run4(
      rl.Temp.Vector2$.Array(points).toJS,
      points.length.toJS,
      thick.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawSplineCatmullRom(
    List<Vector2D> points,
    num thick,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawSplineCatmullRom(points, thick, color),
    () => rl.Core.DrawSplineCatmullRom.run4(
      rl.Temp.Vector2$.Array(points).toJS, 
      points.length.toJS, 
      thick.toJS, 
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawSplineBezierQuadratic(
    List<Vector2D> points,
    num thick,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawSplineBezierQuadratic(points, thick, color),
    () => rl.Core.DrawSplineBezierQuadratic.run4(
      rl.Temp.Vector2$.Array(points).toJS,
      points.length.toJS,
      thick.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawSplineBezierCubic(
    List<Vector2D> points,
    num thick,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawSplineBezierCubic(points, thick, color),
    () => rl.Core.DrawSplineBezierCubic.run4(
      rl.Temp.Vector2$.Array(points).toJS,
      points.length.toJS,
      thick.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawSplineSegmentLinear(
    Vector2D p1,
    Vector2D p2,
    num thick,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawSplineSegmentLinear(p1, p2, thick, color),
    () => rl.Core.DrawSplineSegmentLinear.run4(
      rl.Temp.Vector2$.Ref1(p1).toJS,
      rl.Temp.Vector2$.Ref2(p2).toJS,
      thick.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawSplineSegmentBasis(
    Vector2D p1,
    Vector2D p2,
    Vector2D p3,
    Vector2D p4,
    num thick,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawSplineSegmentBasis(p1, p2, p3, p4, thick, color),
    () => rl.Core.DrawSplineSegmentBasis.run6(
      rl.Temp.Vector2$.Ref1(p1).toJS,
      rl.Temp.Vector2$.Ref2(p2).toJS,
      rl.Temp.Vector2$.Ref3(p3).toJS,
      rl.Temp.Vector2$.Ref4(p4).toJS,
      thick.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawSplineSegmentCatmullRom(
    Vector2D p1,
    Vector2D p2,
    Vector2D p3,
    Vector2D p4,
    num thick,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawSplineSegmentCatmullRom(p1, p2, p3, p4, thick, color),
    () => rl.Core.DrawSplineSegmentCatmullRom.run6(
      rl.Temp.Vector2$.Ref1(p1).toJS,
      rl.Temp.Vector2$.Ref2(p2).toJS,
      rl.Temp.Vector2$.Ref3(p3).toJS,
      rl.Temp.Vector2$.Ref4(p4).toJS,
      thick.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawSplineSegmentBezierQuadratic(
    Vector2D p1,
    Vector2D c2,
    Vector2D p3,
    num thick,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawSplineSegmentBezierQuadratic(p1, c2, p3, thick, color),
    () => rl.Core.DrawSplineSegmentBezierQuadratic.run5(
      rl.Temp.Vector2$.Ref1(p1).toJS,
      rl.Temp.Vector2$.Ref2(c2).toJS,
      rl.Temp.Vector2$.Ref3(p3).toJS,
      thick.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawSplineSegmentBezierCubic(
    Vector2D p1,
    Vector2D c2,
    Vector2D c3,
    Vector2D p4,
    num thick,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawSplineSegmentBezierCubic(p1, c2, c3, p4, thick, color),
    () => rl.Core.DrawSplineSegmentBezierCubic.run6(
      rl.Temp.Vector2$.Ref1(p1).toJS,
      rl.Temp.Vector2$.Ref2(c2).toJS,
      rl.Temp.Vector2$.Ref3(c3).toJS,
      rl.Temp.Vector2$.Ref4(p4).toJS,
      thick.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  Vector2D GetSplinePointLinear(
    Vector2D startPos,
    Vector2D endPos,
    num t,
  ) => run(
    () => RaylibDebugLabels.GetSplinePointLinear(startPos, endPos, t),
    () => rl.Temp.Vector2$.Extract1(
      (p) => rl.Core.GetSplinePointLinear.run4(
        p.toJS,
        rl.Temp.Vector2$.Ref2(startPos).toJS,
        rl.Temp.Vector2$.Ref3(endPos).toJS,
        t.toJS,
      ),
    ),
  );

  @override
  Vector2D GetSplinePointBasis(
    Vector2D p1,
    Vector2D p2,
    Vector2D p3,
    Vector2D p4,
    num t,
  ) => run(
    () => RaylibDebugLabels.GetSplinePointBasis(p1, p2, p3, p4, t),
    () => rl.Temp.Vector2$.Extract1(
      (p) => rl.Core.GetSplinePointBasis.run6(
        p.toJS,
        rl.Temp.Vector2$.Ref2(p1).toJS,
        rl.Temp.Vector2$.Ref3(p2).toJS,
        rl.Temp.Vector2$.Ref4(p3).toJS,
        rl.Temp.Vector2$.Ref5(p4).toJS,
        t.toJS,
      ),
    ),
  );
    
  @override
  Vector2D GetSplinePointCatmullRom(
    Vector2D p1,
    Vector2D p2,
    Vector2D p3,
    Vector2D p4,
    num t,
  ) => run(
    () => RaylibDebugLabels.GetSplinePointCatmullRom(p1, p2, p3, p4, t),
    () => rl.Temp.Vector2$.Extract1(
      (p) => rl.Core.GetSplinePointCatmullRom.run6(
        p.toJS,
        rl.Temp.Vector2$.Ref2(p1).toJS,
        rl.Temp.Vector2$.Ref3(p2).toJS,
        rl.Temp.Vector2$.Ref4(p3).toJS,
        rl.Temp.Vector2$.Ref5(p4).toJS,
        t.toJS,
      ),
    ),
  );

  @override
  Vector2D GetSplinePointBezierQuad(
    Vector2D p1,
    Vector2D c2,
    Vector2D p3,
    num t,
  ) => run(
    () => RaylibDebugLabels.GetSplinePointBezierQuad(p1, c2, p3, t),
    () => rl.Temp.Vector2$.Extract1(
      (p) => rl.Core.GetSplinePointBezierQuad.run5(
        p.toJS,
        rl.Temp.Vector2$.Ref2(p1).toJS,
        rl.Temp.Vector2$.Ref3(c2).toJS,
        rl.Temp.Vector2$.Ref4(p3).toJS,
        t.toJS,
      ),
    ),
  );

  @override
  Vector2D GetSplinePointBezierCubic(
    Vector2D p1,
    Vector2D c2,
    Vector2D c3,
    Vector2D p4,
    num t,
  ) => run(
    () => RaylibDebugLabels.GetSplinePointBezierCubic(p1, c2, c3, p4, t),
    () => rl.Temp.Vector2$.Extract1(
      (p) => rl.Core.GetSplinePointBezierCubic.run6(
        p.toJS,
        rl.Temp.Vector2$.Ref2(p1).toJS,
        rl.Temp.Vector2$.Ref3(c2).toJS,
        rl.Temp.Vector2$.Ref4(c3).toJS,
        rl.Temp.Vector2$.Ref5(p4).toJS,
        t.toJS,
      ),
    ),
  );

  @override
  bool CheckCollisionRecs(
    RectangleD rec1,
    RectangleD rec2,
  ) => run(
    () => RaylibDebugLabels.CheckCollisionRecs(rec1, rec2),
    () => rl.Core.CheckCollisionRecs.run2(
      rl.Temp.Rectangle$.Ref1(rec1).toJS,
      rl.Temp.Rectangle$.Ref2(rec2).toJS,
    ).toBool(),
  );

  @override
  bool CheckCollisionCircles(
    Vector2D center1,
    num radius1,
    Vector2D center2,
    num radius2,
  ) => run(
    () => RaylibDebugLabels.CheckCollisionCircles(center1, radius1, center2, radius2),
    () => rl.Core.CheckCollisionCircles.run4(
      rl.Temp.Vector2$.Ref1(center1).toJS,
      radius1.toJS,
      rl.Temp.Vector2$.Ref2(center2).toJS,
      radius2.toJS,
    ).toBool(),
  );

  @override
  bool CheckCollisionCircleRec(
    Vector2D center,
    num radius,
    RectangleD rec,
  ) => run(
    () => RaylibDebugLabels.CheckCollisionCircleRec(center, radius, rec),
    () => rl.Core.CheckCollisionCircleRec.run3(
      rl.Temp.Vector2$.Ref1(center).toJS,
      radius.toJS,
      rl.Temp.Rectangle$.Ref1(rec).toJS,
    ).toBool(),
  );

  @override
  bool CheckCollisionCircleLine(
    Vector2D center,
    num radius,
    Vector2D p1,
    Vector2D p2,
  ) => run(
    () => RaylibDebugLabels.CheckCollisionCircleLine(center, radius, p1, p2),
    () => rl.Core.CheckCollisionCircleLine.run4(
      rl.Temp.Vector2$.Ref1(center).toJS,
      radius.toJS,
      rl.Temp.Vector2$.Ref2(p1).toJS,
      rl.Temp.Vector2$.Ref3(p2).toJS,
    ).toBool(),
  );

  @override
  bool CheckCollisionPointRec(
    Vector2D point,
    RectangleD rec,
  ) => run(
    () => RaylibDebugLabels.CheckCollisionPointRec(point, rec),
    () => rl.Core.CheckCollisionPointRec.run2(
      rl.Temp.Vector2$.Ref1(point).toJS,
      rl.Temp.Rectangle$.Ref1(rec).toJS,
    ).toBool(),
  );
    
  @override
  bool CheckCollisionPointCircle(
    Vector2D point,
    Vector2D center,
    num radius,
  ) => run(
    () => RaylibDebugLabels.CheckCollisionPointCircle(point, center, radius),
    () => rl.Core.CheckCollisionPointCircle.run3(
      rl.Temp.Vector2$.Ref1(point).toJS,
      rl.Temp.Vector2$.Ref2(center).toJS,
      radius.toJS,
    ).toBool(),
  );

  @override
  bool CheckCollisionPointTriangle(
    Vector2D point,
    Vector2D p1,
    Vector2D p2,
    Vector2D p3,
  ) => run(
    () => RaylibDebugLabels.CheckCollisionPointTriangle(point, p1, p2, p3),
    () => rl.Core.CheckCollisionPointTriangle.run4(
      rl.Temp.Vector2$.Ref1(point).toJS,
      rl.Temp.Vector2$.Ref2(p1).toJS,
      rl.Temp.Vector2$.Ref3(p2).toJS,
      rl.Temp.Vector2$.Ref4(p3).toJS,
    ).toBool(),
  );

  @override
  bool CheckCollisionPointLine(
    Vector2D point,
    Vector2D p1,
    Vector2D p2,
    num threshold,
  ) => run(
    () => RaylibDebugLabels.CheckCollisionPointLine(point, p1, p2, threshold),
    () => rl.Core.CheckCollisionPointLine.run4(
      rl.Temp.Vector2$.Ref1(point).toJS,
      rl.Temp.Vector2$.Ref2(p1).toJS,
      rl.Temp.Vector2$.Ref3(p2).toJS,
      threshold.toJS,
    ).toBool(),
  );

  @override
  bool CheckCollisionPointPoly(
    Vector2D point,
    List<Vector2D> points,
  ) => run(
    () => RaylibDebugLabels.CheckCollisionPointPoly(point, points),
    () => rl.Core.CheckCollisionPointPoly.run3(
      rl.Temp.Vector2$.Ref1(point).toJS,
      rl.Temp.Vector2$.Array(points).toJS,
      points.length.toJS,
    ).toBool(),
  );

  @override
  (bool result, Vector2D collisionPoint) CheckCollisionLines(
    Vector2D startPos1,
    Vector2D endPos1,
    Vector2D startPos2,
    Vector2D endPos2,
  ) => run(
    () => RaylibDebugLabels.CheckCollisionLines(startPos1, endPos1, startPos2, endPos2),
    () {
      final collisionPointPtr = rl.Temp.Vector2$.Ref5();
      final result = rl.Core.CheckCollisionLines.run5(
        rl.Temp.Vector2$.Ref1(startPos1).toJS,
        rl.Temp.Vector2$.Ref2(endPos1).toJS,
        rl.Temp.Vector2$.Ref3(startPos2).toJS,
        rl.Temp.Vector2$.Ref4(endPos2).toJS,
        collisionPointPtr.toJS,
      ).toBool();
      return (result, collisionPointPtr.ref);
    },
  );

  @override
  RectangleD GetCollisionRec(
    RectangleD rec1,
    RectangleD rec2,
  ) => run(
    () => RaylibDebugLabels.GetCollisionRec(rec1, rec2),
    () => rl.Temp.Rectangle$.Extract1(
      (p) => rl.Core.GetCollisionRec.run3(
        p.toJS,
        rl.Temp.Rectangle$.Ref2(rec1).toJS,
        rl.Temp.Rectangle$.Ref3(rec2).toJS,
      ),
    ),
  );

  @override
  ImageD LoadImage(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.LoadImage(fileName),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.LoadImage(fileName),
      (p) => rl.Core.LoadImage.run2(
        p.toJS,
        fileName.toJS,
      ),
    ),
  );
    
  @override
  ImageD LoadImageRaw(
    String fileName,
    num width,
    num height,
    PixelFormat format,
    num headerSize,
  ) => run(
    () => RaylibDebugLabels.LoadImageRaw(fileName, width, height, format, headerSize),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.LoadImageRaw(fileName, width, height, format, headerSize),
      (p) => rl.Core.LoadImageRaw.run6(
        p.toJS,
        fileName.toJS,
        width.toJS,
        height.toJS,
        format.value.toJS,
        headerSize.toJS,
      ),
    ),
  );

  @override
  ImageD LoadImageAnim(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.LoadImageAnim(fileName),
    () {
      final frameCountPtr = rl.Temp.Int32$.Ref1();
      final image = rl.Temp.Image$.RefCapture(
        RaylibCaptureIds.LoadImageAnim(fileName),
        (p) => rl.Core.LoadImageAnim.run3(
          p.toJS,
          fileName.toJS,
          frameCountPtr.toJS,
        ),
      );
      image.structUpdateFrameCount(frameCountPtr.value);
      return image;
    },
  );

  @override
  ImageD LoadImageAnimFromMemory(
    String fileType,
    Uint8List fileData,
  ) => run(
    () => RaylibDebugLabels.LoadImageAnimFromMemory(fileType, fileData),
    () {
      final frameCountPtr = rl.Temp.Int32$.Ref1();
      final image = rl.Temp.Image$.RefCapture(
        RaylibCaptureIds.LoadImageAnimFromMemory(fileType, fileData),
        (p) => rl.Core.LoadImageAnimFromMemory.run5(
          p.toJS,
          fileType.toJS,
          rl.Temp.Uint8$.Array(fileData).toJS,
          fileData.length.toJS,
          frameCountPtr.toJS,
        ),
      );
      image.structUpdateFrameCount(frameCountPtr.value);
      return image;
    },
  );

  @override
  ImageD LoadImageFromMemory(
    String fileType,
    Uint8List fileData,
  ) => run(
    () => RaylibDebugLabels.LoadImageFromMemory(fileType, fileData),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.LoadImageFromMemory(fileType, fileData),
      (p) => rl.Core.LoadImageFromMemory.run4(
        p.toJS,
        fileType.toJS,
        rl.Temp.Uint8$.Array(fileData).toJS,
        fileData.length.toJS,
      )
    ),
  );

  @override
  ImageD LoadImageFromTexture(
    TextureD texture,
  ) => run(
    () => RaylibDebugLabels.LoadImageFromTexture(texture),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.LoadImageFromTexture(texture),
      (p) => rl.Core.LoadImageFromTexture.run2(
        p.toJS,
        rl.Temp.Texture$.Ref1(texture).toJS,
      ),
    ),
  );

  @override
  ImageD LoadImageFromScreen() => run(
    () => RaylibDebugLabels.LoadImageFromScreen(),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.LoadImageFromScreen(),
      (p) => rl.Core.LoadImageFromScreen.run1(
        p.toJS,
      ),
    ),
  );

  @override
  bool IsImageValid(
    ImageD image,
  ) => run(
    () => RaylibDebugLabels.IsImageValid(image),
    () => rl.Core.IsImageValid.run1(
      rl.Temp.Image$.Ref1(image).toJS,
    ).toBool(),
  );

  @override
  void UnloadImage(
    ImageD image,
  ) => run(
    () => RaylibDebugLabels.UnloadImage(image),
    () => rl.Core.UnloadImage.run1(
      rl.Temp.Image$.Ref1(image).toJS,
    ),
  );

  @override
  bool ExportImage(
    ImageD image,
    String fileName,
  ) => run(
    () => RaylibDebugLabels.ExportImage(image, fileName),
    () => rl.Core.ExportImage.run2(
      rl.Temp.Image$.Ref1(image).toJS,
      fileName.toJS,
    ).toBool(),
  );
    
  @override
  (int dataPtr, int dataSize) ExportImageToMemory(
    ImageD image,
    String fileType,
  ) => run(
    () => RaylibDebugLabels.ExportImageToMemory(image, fileType),
    () {
      final dataSizePtr = rl.Temp.Int32$.Ref1();
      final dataPtr = rl.Core.ExportImageToMemory.run3(
        rl.Temp.Image$.Ref1(image).toJS,
        fileType.toJS,
        dataSizePtr.toJS,
      ).toInt();
      return (dataPtr, dataSizePtr.value);
    },
  );

  @override
  bool ExportImageAsCode(
    ImageD image,
    String fileName,
  ) => run(
    () => RaylibDebugLabels.ExportImageAsCode(image, fileName),
    () => rl.Core.ExportImageAsCode.run2(
      rl.Temp.Image$.Ref1(image).toJS,
      fileName.toJS,
    ).toBool(),
  );

  @override
  ImageD GenImageColor(
    num width,
    num height,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.GenImageColor(width, height, color),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.GenImageColor(width, height, color),
      (p) => rl.Core.GenImageColor.run4(
        p.toJS,
        width.toJS,
        height.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  ImageD GenImageGradientLinear(
    num width,
    num height,
    num direction,
    ColorD start,
    ColorD end,
  ) => run(
    () => RaylibDebugLabels.GenImageGradientLinear(width, height, direction, start, end),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.GenImageGradientLinear(width, height, direction, start, end),
      (p) => rl.Core.GenImageGradientLinear.run6(
        p.toJS,
        width.toJS,
        height.toJS,
        direction.toJS,
        rl.Temp.Color$.Ref1(start).toJS,
        rl.Temp.Color$.Ref2(end).toJS,
      ),
    ),
  );

  @override
  ImageD GenImageGradientRadial(
    num width,
    num height,
    num density,
    ColorD inner,
    ColorD outer,
  ) => run(
    () => RaylibDebugLabels.GenImageGradientRadial(width, height, density, inner, outer),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.GenImageGradientRadial(width, height, density, inner, outer),
      (p) => rl.Core.GenImageGradientRadial.run6(
        p.toJS,
        width.toJS,
        height.toJS,
        density.toJS,
        rl.Temp.Color$.Ref1(inner).toJS,
        rl.Temp.Color$.Ref2(outer).toJS,
      ),
    ),
  );

  @override
  ImageD GenImageGradientSquare(
    num width,
    num height,
    num density,
    ColorD inner,
    ColorD outer,
  ) => run(
    () => RaylibDebugLabels.GenImageGradientSquare(width, height, density, inner, outer),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.GenImageGradientSquare(width, height, density, inner, outer),
      (p) => rl.Core.GenImageGradientSquare.run6(
        p.toJS,
        width.toJS,
        height.toJS,
        density.toJS,
        rl.Temp.Color$.Ref1(inner).toJS,
        rl.Temp.Color$.Ref2(outer).toJS,
      ),
    ),
  );

  @override
  ImageD GenImageChecked(
    num width,
    num height,
    num checksX,
    num checksY,
    ColorD col1,
    ColorD col2,
  ) => run(
    () => RaylibDebugLabels.GenImageChecked(width, height, checksX, checksY, col1, col2),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.GenImageChecked(width, height, checksX, checksY, col1, col2),
      (p) => rl.Core.GenImageChecked.run7(
        p.toJS,
        width.toJS,
        height.toJS,
        checksX.toJS,
        checksY.toJS,
        rl.Temp.Color$.Ref1(col1).toJS,
        rl.Temp.Color$.Ref2(col2).toJS,
      ),
    ),
  );

  @override
  ImageD GenImageWhiteNoise(
    num width,
    num height,
    num factor,
  ) => run(
    () => RaylibDebugLabels.GenImageWhiteNoise(width, height, factor),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.GenImageWhiteNoise(width, height, factor),
      (p) => rl.Core.GenImageWhiteNoise.run4(
        p.toJS,
        width.toJS,
        height.toJS,
        factor.toJS,
      ),
    ),
  );

  @override
  ImageD GenImagePerlinNoise(
    num width,
    num height,
    num offsetX,
    num offsetY,
    num scale,
  ) => run(
    () => RaylibDebugLabels.GenImagePerlinNoise(width, height, offsetX, offsetY, scale),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.GenImagePerlinNoise(width, height, offsetX, offsetY, scale),
      (p) => rl.Core.GenImagePerlinNoise.run6(
        p.toJS,
        width.toJS,
        height.toJS,
        offsetX.toJS,
        offsetY.toJS,
        scale.toJS,
      ),
    ),
  );
    
  @override
  ImageD GenImageCellular(
    num width,
    num height,
    num tileSize,
  ) => run(
    () => RaylibDebugLabels.GenImageCellular(width, height, tileSize),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.GenImageCellular(width, height, tileSize),
      (p) => rl.Core.GenImageCellular.run4(
        p.toJS,
        width.toJS,
        height.toJS,
        tileSize.toJS,
      ),
    ),
  );

  @override
  ImageD GenImageText(
    num width,
    num height,
    String text,
  ) => run(
    () => RaylibDebugLabels.GenImageText(width, height, text),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.GenImageText(width, height, text),
      (p) => rl.Core.GenImageText.run4(
        p.toJS,
        width.toJS,
        height.toJS,
        text.toJS,
      ),
    ),
  );

  @override
  ImageD ImageCopy(
    ImageD image,
  ) => run(
    () => RaylibDebugLabels.ImageCopy(image),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.ImageCopy(image),
      (p) => rl.Core.ImageCopy.run2(
        p.toJS,
        rl.Temp.Image$.Ref1(image).toJS,
      ),
    ),
  );

  @override
  ImageD ImageFromImage(
    ImageD image,
    RectangleD rec,
  ) => run(
    () => RaylibDebugLabels.ImageFromImage(image, rec),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.ImageFromImage(image, rec),
      (p) => rl.Core.ImageFromImage.run3(
        p.toJS,
        rl.Temp.Image$.Ref1(image).toJS,
        rl.Temp.Rectangle$.Ref1(rec).toJS,
      ),
    ),
  );

  @override
  ImageD ImageFromChannel(
    ImageD image,
    num selectedChannel,
  ) => run(
    () => RaylibDebugLabels.ImageFromChannel(image, selectedChannel),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.ImageFromChannel(image, selectedChannel),
      (p) => rl.Core.ImageFromChannel.run3(
        p.toJS,
        rl.Temp.Image$.Ref1(image).toJS,
        selectedChannel.toJS,
      ),
    ),
  );

  @override
  ImageD ImageText(
    String text,
    num fontSize,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageText(text, fontSize, color),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.ImageText(text, fontSize, color),
      (p) => rl.Core.ImageText.run4(
        p.toJS,
        text.toJS,
        fontSize.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  ImageD ImageTextEx(
    FontD font,
    String text,
    num fontSize,
    num spacing,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.ImageTextEx(font, text, fontSize, spacing, tint),
    () => rl.Temp.Image$.RefCapture(
      RaylibCaptureIds.ImageTextEx(font, text, fontSize, spacing, tint),
      (p) => rl.Core.ImageTextEx.run6(
        p.toJS,
        rl.Temp.Font$.Ref1(font).toJS,
        text.toJS,
        fontSize.toJS,
        spacing.toJS,
        rl.Temp.Color$.Ref1(tint).toJS,
      ),
    ),
  );

  @override
  void ImageFormat(
    ImageD image,
    PixelFormat newFormat,
  ) => run(
    () => RaylibDebugLabels.ImageFormat(image, newFormat),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageFormat.run2(
        p.toJS,
        newFormat.value.toJS,
      ),
    ),
  );
    
  @override
  void ImageToPOT(
    ImageD image,
    ColorD fill,
  ) => run(
    () => RaylibDebugLabels.ImageToPOT(image, fill),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageToPOT.run2(
        p.toJS,
        rl.Temp.Color$.Ref1(fill).toJS,
      ),
    ),
  );

  @override
  void ImageCrop(
    ImageD image,
    RectangleD crop,
  ) => run(
    () => RaylibDebugLabels.ImageCrop(image, crop),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageCrop.run2(
        p.toJS,
        rl.Temp.Rectangle$.Ref1(crop).toJS,
      ),
    ),
  );

  @override
  void ImageAlphaCrop(
    ImageD image,
    num threshold,
  ) => run(
    () => RaylibDebugLabels.ImageAlphaCrop(image, threshold),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageAlphaCrop.run2(
        p.toJS,
        threshold.toJS,
      ),
    ),
  );

  @override
  void ImageAlphaClear(
    ImageD image,
    ColorD color,
    num threshold,
  ) => run(
    () => RaylibDebugLabels.ImageAlphaClear(image, color, threshold),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageAlphaClear.run3(
        p.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
        threshold.toJS,
      ),
    ),
  );

  @override
  void ImageAlphaMask(
    ImageD image,
    ImageD alphaMask,
  ) => run(
    () => RaylibDebugLabels.ImageAlphaMask(image, alphaMask),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageAlphaMask.run2(
        p.toJS,
        rl.Temp.Image$.Ref2(alphaMask).toJS,
      ),
    ),
  );

  @override
  void ImageAlphaPremultiply(
    ImageD image,
  ) => run(
    () => RaylibDebugLabels.ImageAlphaPremultiply(image),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageAlphaPremultiply.run1(
        p.toJS,
      ),
    ),
  );

  @override
  void ImageBlurGaussian(
    ImageD image,
    num blurSize,
  ) => run(
    () => RaylibDebugLabels.ImageBlurGaussian(image, blurSize),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageBlurGaussian.run2(
        p.toJS,
        blurSize.toJS,
      ),
    ),
  );

  @override
  void ImageKernelConvolution(
    ImageD image,
    List<double> kernel,
  ) => run(
    () => RaylibDebugLabels.ImageKernelConvolution(image, kernel),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageKernelConvolution.run3(
        p.toJS,
        rl.Temp.Float32$.Array(kernel).toJS,
        kernel.length.toJS,
      ),
    ),
  );

  @override
  void ImageResize(
    ImageD image,
    num newWidth,
    num newHeight,
  ) => run(
    () => RaylibDebugLabels.ImageResize(image, newWidth, newHeight),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageResize.run3(
        p.toJS,
        newWidth.toJS,
        newHeight.toJS,
      ),
    ),
  );

  @override
  void ImageResizeNN(
    ImageD image,
    num newWidth,
    num newHeight,
  ) => run(
    () => RaylibDebugLabels.ImageResizeNN(image, newWidth, newHeight),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageResizeNN.run3(
        p.toJS,
        newWidth.toJS,
        newHeight.toJS,
      ),
    ),
  );
    
  @override
  void ImageResizeCanvas(
    ImageD image,
    num newWidth,
    num newHeight,
    num offsetX,
    num offsetY,
    ColorD fill,
  ) => run(
    () => RaylibDebugLabels.ImageResizeCanvas(image, newWidth, newHeight, offsetX, offsetY, fill),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageResizeCanvas.run6(
        p.toJS,
        newWidth.toJS,
        newHeight.toJS,
        offsetX.toJS,
        offsetY.toJS,
        rl.Temp.Color$.Ref1(fill).toJS,
      ),
    ),
  );

  @override
  void ImageMipmaps(
    ImageD image,
  ) => run(
    () => RaylibDebugLabels.ImageMipmaps(image),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageMipmaps.run1(
        p.toJS,
      ),
    ),
  );

  @override
  void ImageDither(
    ImageD image,
    num rBpp,
    num gBpp,
    num bBpp,
    num aBpp,
  ) => run(
    () => RaylibDebugLabels.ImageDither(image, rBpp, gBpp, bBpp, aBpp),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageDither.run5(
        p.toJS,
        rBpp.toJS,
        gBpp.toJS,
        bBpp.toJS,
        aBpp.toJS,
      ),
    ),
  );

  @override
  void ImageFlipVertical(
    ImageD image,
  ) => run(
    () => RaylibDebugLabels.ImageFlipVertical(image),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageFlipVertical.run1(
        p.toJS,
      ),
    ),
  );

  @override
  void ImageFlipHorizontal(
    ImageD image,
  ) => run(
    () => RaylibDebugLabels.ImageFlipHorizontal(image),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageFlipHorizontal.run1(
        p.toJS,
      ),
    ),
  );

  @override
  void ImageRotate(
    ImageD image,
    num degrees,
  ) => run(
    () => RaylibDebugLabels.ImageRotate(image, degrees),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageRotate.run2(
        p.toJS,
        degrees.toJS,
      ),
    ),
  );

  @override
  void ImageRotateCW(
    ImageD image,
  ) => run(
    () => RaylibDebugLabels.ImageRotateCW(image),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageRotateCW.run1(
        p.toJS,
      ),
    ),
  );

  @override
  void ImageRotateCCW(
    ImageD image,
  ) => run(
    () => RaylibDebugLabels.ImageRotateCCW(image),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageRotateCCW.run1(
        p.toJS,
      ),
    ),
  );
    
  @override
  void ImageColorTint(
    ImageD image,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageColorTint(image, color),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageColorTint.run2(
        p.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  void ImageColorInvert(
    ImageD image,
  ) => run(
    () => RaylibDebugLabels.ImageColorInvert(image),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageColorInvert.run1(
        p.toJS,
      ),
    ),
  );

  @override
  void ImageColorGrayscale(
    ImageD image,
  ) => run(
    () => RaylibDebugLabels.ImageColorGrayscale(image),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageColorGrayscale.run1(
        p.toJS,
      ),
    ),
  );

  @override
  void ImageColorContrast(
    ImageD image,
    num contrast,
  ) => run(
    () => RaylibDebugLabels.ImageColorContrast(image, contrast),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageColorContrast.run2(
        p.toJS,
        contrast.toJS,
      ),
    ),
  );

  @override
  void ImageColorBrightness(
    ImageD image,
    num brightness,
  ) => run(
    () => RaylibDebugLabels.ImageColorBrightness(image, brightness),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageColorBrightness.run2(
        p.toJS,
        brightness.toJS,
      ),
    ),
  );

  @override
  void ImageColorReplace(
    ImageD image,
    ColorD color,
    ColorD replace,
  ) => run(
    () => RaylibDebugLabels.ImageColorReplace(image, color, replace),
    () => rl.Temp.Image$.RefUpdate1(image,
      (p) => rl.Core.ImageColorReplace.run3(
        p.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
        rl.Temp.Color$.Ref2(replace).toJS,
      ),
    ),
  );

  @override
  List<ColorD> LoadImageColors(
    ImageD image,
  ) => run(
    () => RaylibDebugLabels.LoadImageColors(image),
    () {
      final colorsPtr = rl.Core.LoadImageColors.run1(
        rl.Temp.Image$.Ref1(image).toJS,
      ).toInt();
      final count = image.width * image.height;
      try {
        return ColorD.wasmPointer(colorsPtr).readArray(count);
      } finally {
        rl.Core.UnloadImageColors.run1(colorsPtr.toJS);
      }
    },
  );
  
  @override
  List<ColorD> LoadImagePalette(
    ImageD image,
    num maxPaletteSize,
  ) => run(
    () => RaylibDebugLabels.LoadImagePalette(image, maxPaletteSize),
    () {
      final colorCountPtr = rl.Temp.Int32$.Ref1();
      final colorsPtr = rl.Core.LoadImagePalette.run3(
        rl.Temp.Image$.Ref1(image).toJS,
        maxPaletteSize.toJS,
        colorCountPtr.toJS,
      ).toInt();
      try {
        return ColorD.wasmPointer(colorsPtr).readArray(colorCountPtr.value);
      } finally {
        rl.Core.UnloadImagePalette.run1(colorsPtr.toJS);
      }
    },
  );

  @override
  RectangleD GetImageAlphaBorder(
    ImageD image,
    num threshold,
  ) => run(
    () => RaylibDebugLabels.GetImageAlphaBorder(image, threshold),
    () => rl.Temp.Rectangle$.Extract1(
      (p) => rl.Core.GetImageAlphaBorder.run3(
        p.toJS,
        rl.Temp.Image$.Ref1(image).toJS,
        threshold.toJS,
      ),
    ),
  );

  @override
  ColorD GetImageColor(
    ImageD image,
    num x,
    num y,
  ) => run(
    () => RaylibDebugLabels.GetImageColor(image, x, y),
    () => rl.Temp.Color$.Extract1(
      (p) => rl.Core.GetImageColor.run4(
        p.toJS,
        rl.Temp.Image$.Ref1(image).toJS,
        x.toJS,
        y.toJS,
      ),
    ),
  );

  @override
  void ImageClearBackground(
    ImageD dst,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageClearBackground(dst, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageClearBackground.run2(
        p.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  void ImageDrawPixel(
    ImageD dst,
    num posX,
    num posY,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageDrawPixel(dst, posX, posY, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawPixel.run4(
        p.toJS,
        posX.toJS,
        posY.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  void ImageDrawPixelV(
    ImageD dst,
    Vector2D position,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageDrawPixelV(dst, position, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawPixelV.run3(
        p.toJS,
        rl.Temp.Vector2$.Ref1(position).toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );
    
  @override
  void ImageDrawLine(
    ImageD dst,
    num startPosX,
    num startPosY,
    num endPosX,
    num endPosY,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageDrawLine(dst, startPosX, startPosY, endPosX, endPosY, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawLine.run6(
        p.toJS,
        startPosX.toJS,
        startPosY.toJS,
        endPosX.toJS,
        endPosY.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  void ImageDrawLineV(
    ImageD dst,
    Vector2D start,
    Vector2D end,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageDrawLineV(dst, start, end, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawLineV.run4(
        p.toJS,
        rl.Temp.Vector2$.Ref1(start).toJS,
        rl.Temp.Vector2$.Ref2(end).toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  void ImageDrawLineEx(
    ImageD dst,
    Vector2D start,
    Vector2D end,
    num thick,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageDrawLineEx(dst, start, end, thick, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawLineEx.run5(
        p.toJS,
        rl.Temp.Vector2$.Ref1(start).toJS,
        rl.Temp.Vector2$.Ref2(end).toJS,
        thick.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  void ImageDrawCircle(
    ImageD dst,
    num centerX,
    num centerY,
    num radius,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageDrawCircle(dst, centerX, centerY, radius, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawCircle.run5(
        p.toJS,
        centerX.toJS,
        centerY.toJS,
        radius.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  void ImageDrawCircleV(
    ImageD dst,
    Vector2D center,
    num radius,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageDrawCircleV(dst, center, radius, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawCircleV.run4(
        p.toJS,
        rl.Temp.Vector2$.Ref1(center).toJS,
        radius.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  void ImageDrawCircleLines(
    ImageD dst,
    num centerX,
    num centerY,
    num radius,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageDrawCircleLines(dst, centerX, centerY, radius, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawCircleLines.run5(
        p.toJS,
        centerX.toJS,
        centerY.toJS,
        radius.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  void ImageDrawCircleLinesV(
    ImageD dst,
    Vector2D center,
    num radius,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageDrawCircleLinesV(dst, center, radius, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawCircleLinesV.run4(
        p.toJS,
        rl.Temp.Vector2$.Ref1(center).toJS,
        radius.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  void ImageDrawRectangle(
    ImageD dst,
    num posX,
    num posY,
    num width,
    num height,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageDrawRectangle(dst, posX, posY, width, height, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawRectangle.run6(
        p.toJS,
        posX.toJS,
        posY.toJS,
        width.toJS,
        height.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );
    
  @override
  void ImageDrawRectangleV(
    ImageD dst,
    Vector2D position,
    Vector2D size,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageDrawRectangleV(dst, position, size, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawRectangleV.run4(
        p.toJS,
        rl.Temp.Vector2$.Ref1(position).toJS,
        rl.Temp.Vector2$.Ref2(size).toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  void ImageDrawRectangleRec(
    ImageD dst,
    RectangleD rec,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageDrawRectangleRec(dst, rec, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawRectangleRec.run3(
        p.toJS,
        rl.Temp.Rectangle$.Ref1(rec).toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  void ImageDrawRectangleLines(
    ImageD dst,
    RectangleD rec,
    num thick,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageDrawRectangleLines(dst, rec, thick, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawRectangleLines.run4(
        p.toJS,
        rl.Temp.Rectangle$.Ref1(rec).toJS,
        thick.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  void ImageDrawTriangle(
    ImageD dst,
    Vector2D v1,
    Vector2D v2,
    Vector2D v3,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageDrawTriangle(dst, v1, v2, v3, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawTriangle.run5(
        p.toJS,
        rl.Temp.Vector2$.Ref1(v1).toJS,
        rl.Temp.Vector2$.Ref2(v2).toJS,
        rl.Temp.Vector2$.Ref3(v3).toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  void ImageDrawTriangleEx(
    ImageD dst,
    Vector2D v1,
    Vector2D v2,
    Vector2D v3,
    ColorD c1,
    ColorD c2,
    ColorD c3,
  ) => run(
    () => RaylibDebugLabels.ImageDrawTriangleEx(dst, v1, v2, v3, c1, c2, c3),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawTriangleEx.run7(
        p.toJS,
        rl.Temp.Vector2$.Ref1(v1).toJS,
        rl.Temp.Vector2$.Ref2(v2).toJS,
        rl.Temp.Vector2$.Ref3(v3).toJS,
        rl.Temp.Color$.Ref1(c1).toJS,
        rl.Temp.Color$.Ref2(c2).toJS,
        rl.Temp.Color$.Ref3(c3).toJS,
      ),
    ),
  );

  @override
  void ImageDrawTriangleLines(
    ImageD dst,
    Vector2D v1,
    Vector2D v2,
    Vector2D v3,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageDrawTriangleLines(dst, v1, v2, v3, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawTriangleLines.run5(
        p.toJS,
        rl.Temp.Vector2$.Ref1(v1).toJS,
        rl.Temp.Vector2$.Ref2(v2).toJS,
        rl.Temp.Vector2$.Ref3(v3).toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );
    
  @override
  void ImageDrawTriangleFan(
    ImageD dst,
    List<Vector2D> points,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageDrawTriangleFan(dst, points, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawTriangleFan.run4(
        p.toJS,
        rl.Temp.Vector2$.Array(points).toJS,
        points.length.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  void ImageDrawTriangleStrip(
    ImageD dst,
    List<Vector2D> points,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageDrawTriangleStrip(dst, points, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawTriangleStrip.run4(
        p.toJS,
        rl.Temp.Vector2$.Array(points).toJS,
        points.length.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  void ImageDraw(
    ImageD dst,
    ImageD src,
    RectangleD srcRec,
    RectangleD dstRec,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.ImageDraw(dst, src, srcRec, dstRec, tint),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDraw.run5(
        p.toJS,
        rl.Temp.Image$.Ref2(src).toJS,
        rl.Temp.Rectangle$.Ref1(srcRec).toJS,
        rl.Temp.Rectangle$.Ref2(dstRec).toJS,
        rl.Temp.Color$.Ref1(tint).toJS,
      ),
    ),
  );

  @override
  void ImageDrawText(
    ImageD dst,
    String text,
    num posX,
    num posY,
    num fontSize,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ImageDrawText(dst, text, posX, posY, fontSize, color),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawText.run6(
        p.toJS,
        text.toJS,
        posX.toJS,
        posY.toJS,
        fontSize.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  void ImageDrawTextEx(
    ImageD dst,
    FontD font,
    String text,
    Vector2D position,
    num fontSize,
    num spacing,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.ImageDrawTextEx(dst, font, text, position, fontSize, spacing, tint),
    () => rl.Temp.Image$.RefUpdate1(dst,
      (p) => rl.Core.ImageDrawTextEx.run7(
        p.toJS,
        rl.Temp.Font$.Ref1(font).toJS,
        text.toJS,
        rl.Temp.Vector2$.Ref1(position).toJS,
        fontSize.toJS,
        spacing.toJS,
        rl.Temp.Color$.Ref1(tint).toJS,
      ),
    ),
  );

  @override
  TextureD LoadTexture(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.LoadTexture(fileName),
    () => rl.Temp.Texture$.RefCapture(
      RaylibCaptureIds.LoadTexture(fileName),
      (p) => rl.Core.LoadTexture.run2(
        p.toJS,
        fileName.toJS,
      ),
    ),
  );

  @override
  TextureD LoadTextureFromImage(
    ImageD image,
  ) => run(
    () => RaylibDebugLabels.LoadTextureFromImage(image),
    () => rl.Temp.Texture$.RefCapture(
      RaylibCaptureIds.LoadTextureFromImage(image),
      (p) => rl.Core.LoadTextureFromImage.run2(
        p.toJS,
        rl.Temp.Image$.Ref1(image).toJS,
      ),
    ),
  );

  @override
  TextureD LoadTextureCubemap(
    ImageD image,
    CubemapLayout layout,
  ) => run(
    () => RaylibDebugLabels.LoadTextureCubemap(image, layout),
    () => rl.Temp.Texture$.RefCapture(
      RaylibCaptureIds.LoadTextureCubemap(image, layout),
      (p) => rl.Core.LoadTextureCubemap.run3(
        p.toJS,
        rl.Temp.Image$.Ref1(image).toJS,
        layout.value.toJS,
      ),
    ),
  );

  @override
  RenderTextureD LoadRenderTexture(
    num width,
    num height,
  ) => run(
    () => RaylibDebugLabels.LoadRenderTexture(width, height),
    () => rl.Temp.RenderTexture$.RefCapture(
      RaylibCaptureIds.LoadRenderTexture(width, height),
      (p) => rl.Core.LoadRenderTexture.run3(
        p.toJS,
        width.toJS,
        height.toJS,
      ),
    ),
  );

  @override
  bool IsTextureValid(
    TextureD texture,
  ) => run(
    () => RaylibDebugLabels.IsTextureValid(texture),
    () => rl.Core.IsTextureValid.run1(
      rl.Temp.Texture$.Ref1(texture).toJS,
    ).toBool(),
  );

  @override
  void UnloadTexture(
    TextureD texture,
  ) => run(
    () => RaylibDebugLabels.UnloadTexture(texture),
    () => rl.Core.UnloadTexture.run1(
      texture.getOriginalPointerAndDispose().toJS,
    ),
  );

  @override
  bool IsRenderTextureValid(
    RenderTextureD target,
  ) => run(
    () => RaylibDebugLabels.IsRenderTextureValid(target),
    () => rl.Core.IsRenderTextureValid.run1(
      rl.Temp.RenderTexture$.Ref1(target).toJS,
    ).toBool(),
  );

  @override
  void UnloadRenderTexture(
    RenderTextureD target,
  ) => run(
    () => RaylibDebugLabels.UnloadRenderTexture(target),
    () => rl.Core.UnloadRenderTexture.run1(
      rl.Temp.RenderTexture$.Ref1(target).toJS,
    ),
  );

  @override
  void UpdateTexture(
    TextureD texture,
    Uint8List pixels,
  ) => run(
    () => RaylibDebugLabels.UpdateTexture(texture, pixels),
    () => rl.Temp.Texture$.RefUpdate1(texture,
      (p) => rl.Core.UpdateTexture.run2(
        p.toJS,
        rl.Temp.Uint8$.Array(pixels).toJS,
      ),
    ),
  );
    
  @override
  void UpdateTextureRec(
    TextureD texture,
    RectangleD rec,
    Uint8List pixels,
  ) => run(
    () => RaylibDebugLabels.UpdateTextureRec(texture, rec, pixels),
    () => rl.Temp.Texture$.RefUpdate1(texture,
      (p) => rl.Core.UpdateTextureRec.run3(
        p.toJS,
        rl.Temp.Rectangle$.Ref1(rec).toJS,
        rl.Temp.Uint8$.Array(pixels).toJS,
      ),
    ),
  );

  @override
  void GenTextureMipmaps(
    TextureD texture,
  ) => run(
    () => RaylibDebugLabels.GenTextureMipmaps(texture),
    () => rl.Temp.Texture$.RefUpdate1(texture,
      (p) => rl.Core.GenTextureMipmaps.run1(
        p.toJS,
      ),
    ),
  );

  @override
  void SetTextureFilter(
    TextureD texture,
    TextureFilter filter,
  ) => run(
    () => RaylibDebugLabels.SetTextureFilter(texture, filter),
    () => rl.Temp.Texture$.RefUpdate1(texture,
      (p) => rl.Core.SetTextureFilter.run2(
        p.toJS,
        filter.value.toJS,
      ),
    ),
  );

  @override
  void SetTextureWrap(
    TextureD texture,
    TextureWrap wrap,
  ) => run(
    () => RaylibDebugLabels.SetTextureWrap(texture, wrap),
    () => rl.Temp.Texture$.RefUpdate1(texture,
      (p) => rl.Core.SetTextureWrap.run2(
        p.toJS,
        wrap.value.toJS,
      ),
    ),
  );

  @override
  void DrawTexture(
    TextureD texture,
    num posX,
    num posY,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.DrawTexture(texture, posX, posY, tint),
    () => rl.Core.DrawTexture.run4(
      rl.Temp.Texture$.Ref1(texture).toJS,
      posX.toJS,
      posY.toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );

  @override
  void DrawTextureV(
    TextureD texture,
    Vector2D position,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.DrawTextureV(texture, position, tint),
    () => rl.Core.DrawTextureV.run3(
      rl.Temp.Texture$.Ref1(texture).toJS,
      rl.Temp.Vector2$.Ref1(position).toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );
    
  @override
  void DrawTextureEx(
    TextureD texture,
    Vector2D position,
    num rotation,
    num scale,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.DrawTextureEx(texture, position, rotation, scale, tint),
    () => rl.Core.DrawTextureEx.run5(
      rl.Temp.Texture$.Ref1(texture).toJS,
      rl.Temp.Vector2$.Ref1(position).toJS,
      rotation.toJS,
      scale.toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );

  @override
  void DrawTextureRec(
    TextureD texture,
    RectangleD source,
    Vector2D position,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.DrawTextureRec(texture, source, position, tint),
    () => rl.Core.DrawTextureRec.run4(
      rl.Temp.Texture$.Ref1(texture).toJS,
      rl.Temp.Rectangle$.Ref1(source).toJS,
      rl.Temp.Vector2$.Ref1(position).toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );

  @override
  void DrawTexturePro(
    TextureD texture,
    RectangleD source,
    RectangleD dest,
    Vector2D origin,
    num rotation,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.DrawTexturePro(texture, source, dest, origin, rotation, tint),
    () => rl.Core.DrawTexturePro.run6(
      rl.Temp.Texture$.Ref1(texture).toJS,
      rl.Temp.Rectangle$.Ref1(source).toJS,
      rl.Temp.Rectangle$.Ref2(dest).toJS,
      rl.Temp.Vector2$.Ref1(origin).toJS,
      rotation.toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );

  @override
  void DrawTextureNPatch(
    TextureD texture,
    NPatchInfoD nPatchInfo,
    RectangleD dest,
    Vector2D origin,
    num rotation,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.DrawTextureNPatch(texture, nPatchInfo, dest, origin, rotation, tint),
    () => rl.Core.DrawTextureNPatch.run6(
      rl.Temp.Texture$.Ref1(texture).toJS,
      rl.Temp.NPatchInfo$.Ref1(nPatchInfo).toJS,
      rl.Temp.Rectangle$.Ref1(dest).toJS,
      rl.Temp.Vector2$.Ref1(origin).toJS,
      rotation.toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );

  @override
  bool ColorIsEqual(
    ColorD col1,
    ColorD col2,
  ) => run(
    () => RaylibDebugLabels.ColorIsEqual(col1, col2),
    () => rl.Core.ColorIsEqual.run2(
      rl.Temp.Color$.Ref1(col1).toJS,
      rl.Temp.Color$.Ref2(col2).toJS,
    ).toBool(),
  );

  @override
  ColorD Fade(
    ColorD color,
    num alpha,
  ) => run(
    () => RaylibDebugLabels.Fade(color, alpha),
    () => rl.Temp.Color$.Extract1(
      (p) => rl.Core.Fade.run3(
        p.toJS,
        rl.Temp.Color$.Ref2(color).toJS,
        alpha.toJS,
      ),
    ),
  );

  @override
  int ColorToInt(
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ColorToInt(color),
    () => rl.Core.ColorToInt.run1(
      rl.Temp.Color$.Ref1(color).toJS,
    ).toInt(),
  );

  @override
  Vector4D ColorNormalize(
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ColorNormalize(color),
    () => rl.Temp.Vector4$.Extract1(
      (p) => rl.Core.ColorNormalize.run2(
        p.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  ColorD ColorFromNormalized(
    Vector4D normalized,
  ) => run(
    () => RaylibDebugLabels.ColorFromNormalized(normalized),
    () => rl.Temp.Color$.Extract1(
      (p) => rl.Core.ColorFromNormalized.run2(
        p.toJS,
        rl.Temp.Vector4$.Ref1(normalized).toJS,
      ),
    ),
  );

  @override
  Vector3D ColorToHSV(
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.ColorToHSV(color),
    () => rl.Temp.Vector3$.Extract1(
      (p) => rl.Core.ColorToHSV.run2(
        p.toJS,
        rl.Temp.Color$.Ref1(color).toJS,
      ),
    ),
  );

  @override
  ColorD ColorFromHSV(
    num hue,
    num saturation,
    num value,
  ) => run(
    () => RaylibDebugLabels.ColorFromHSV(hue, saturation, value),
    () => rl.Temp.Color$.Extract1(
      (p) => rl.Core.ColorFromHSV.run4(
        p.toJS,
        hue.toJS,
        saturation.toJS,
        value.toJS,
      ),
    ),
  );

  @override
  ColorD ColorTint(
    ColorD color,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.ColorTint(color, tint),
    () => rl.Temp.Color$.Extract1(
      (p) => rl.Core.ColorTint.run3(
        p.toJS,
        rl.Temp.Color$.Ref2(color).toJS,
        rl.Temp.Color$.Ref3(tint).toJS,
      ),
    ),
  );

  @override
  ColorD ColorBrightness(
    ColorD color,
    num factor,
  ) => run(
    () => RaylibDebugLabels.ColorBrightness(color, factor),
    () => rl.Temp.Color$.Extract1(
      (p) => rl.Core.ColorBrightness.run3(
        p.toJS,
        rl.Temp.Color$.Ref2(color).toJS,
        factor.toJS,
      ),
    ),
  );

  @override
  ColorD ColorContrast(
    ColorD color,
    num contrast,
  ) => run(
    () => RaylibDebugLabels.ColorContrast(color, contrast),
    () => rl.Temp.Color$.Extract1(
      (p) => rl.Core.ColorContrast.run3(
        p.toJS,
        rl.Temp.Color$.Ref2(color).toJS,
        contrast.toJS,
      ),
    ),
  );

  @override
  ColorD ColorAlpha(
    ColorD color,
    num alpha,
  ) => run(
    () => RaylibDebugLabels.ColorAlpha(color, alpha),
    () => rl.Temp.Color$.Extract1(
      (p) => rl.Core.ColorAlpha.run3(
        p.toJS,
        rl.Temp.Color$.Ref2(color).toJS,
        alpha.toJS,
      ),
    ),
  );

  @override
  ColorD ColorAlphaBlend(
    ColorD dst,
    ColorD src,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.ColorAlphaBlend(dst, src, tint),
    () => rl.Temp.Color$.Extract1(
      (p) => rl.Core.ColorAlphaBlend.run4(
        p.toJS,
        rl.Temp.Color$.Ref2(dst).toJS,
        rl.Temp.Color$.Ref3(src).toJS,
        rl.Temp.Color$.Ref4(tint).toJS,
      ),
    ),
  );

  @override
  ColorD ColorLerp(
    ColorD color1,
    ColorD color2,
    num factor,
  ) => run(
    () => RaylibDebugLabels.ColorLerp(color1, color2, factor),
    () => rl.Temp.Color$.Extract1(
      (p) => rl.Core.ColorLerp.run4(
        p.toJS,
        rl.Temp.Color$.Ref2(color1).toJS,
        rl.Temp.Color$.Ref3(color2).toJS,
        factor.toJS,
      ),
    ),
  );

  @override
  ColorD GetColor(
    num hexValue,
  ) => run(
    () => RaylibDebugLabels.GetColor(hexValue),
    () => rl.Temp.Color$.Extract1(
      (p) => rl.Core.GetColor.run2(
        p.toJS,
        hexValue.toJS,
      ),
    ),
  );

  @override
  int GetPixelDataSize(
    num width,
    num height,
    PixelFormat format,
  ) => run(
    () => RaylibDebugLabels.GetPixelDataSize(width, height, format),
    () => rl.Core.GetPixelDataSize.run3(
      width.toJS,
      height.toJS,
      format.value.toJS,
    ).toInt(),
  );

  @override
  FontD GetFontDefault() => run(
    () => RaylibDebugLabels.GetFontDefault(),
    () => rl.Temp.Font$.RefCapture(
      RaylibCaptureIds.GetFontDefault(),
      (p) => rl.Core.GetFontDefault.run1(
        p.toJS,
      ),
    ),
  );

  @override
  FontD LoadFont(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.LoadFont(fileName),
    () => rl.Temp.Font$.RefCapture(
      RaylibCaptureIds.LoadFont(fileName),
      (p) => rl.Core.LoadFont.run2(
        p.toJS,
        fileName.toJS,
      ),
    ),
  );
    
  @override
  FontD LoadFontEx(
    String fileName,
    num fontSize, [
      Int32List? codepoints,
      num? codePointCount
    ]
  ) => run(
    () => RaylibDebugLabels.LoadFontEx(fileName, fontSize, codepoints),
    () => rl.Temp.Font$.RefCapture(
      RaylibCaptureIds.LoadFontEx(fileName, fontSize, codepoints),
      (p) => rl.Core.LoadFontEx.run5(
        p.toJS,
        fileName.toJS,
        fontSize.toJS,
        (codepoints == null ? 0 : rl.Temp.Int32$.Array(codepoints).address).toJS,
        (codePointCount ?? codepoints?.length ?? 0).toJS,
      ),
    ),
  );

  @override
  FontD LoadFontFromImage(
    ImageD image,
    ColorD key,
    num firstChar,
  ) => run(
    () => RaylibDebugLabels.LoadFontFromImage(image, key, firstChar),
    () => rl.Temp.Font$.RefCapture(
      RaylibCaptureIds.LoadFontFromImage(image, key, firstChar),
      (p) => rl.Core.LoadFontFromImage.run4(
        p.toJS,
        rl.Temp.Image$.Ref1(image).toJS,
        rl.Temp.Color$.Ref1(key).toJS,
        firstChar.toJS,
      ),
    ),
  );

  @override
  FontD LoadFontFromMemory(
    String fileType,
    Uint8List fileData,
    num fontSize,
    Int32List codepoints,
  ) => run(
    () => RaylibDebugLabels.LoadFontFromMemory(fileType, fileData, fontSize, codepoints),
    () => rl.Temp.Font$.RefCapture(
      RaylibCaptureIds.LoadFontFromMemory(fileType, fileData, fontSize, codepoints),
      (p) => rl.Core.LoadFontFromMemory.run7(
        p.toJS,
        fileType.toJS,
        rl.Temp.Uint8$.Array(fileData).toJS,
        fileData.length.toJS,
        fontSize.toJS,
        rl.Temp.Int32$.Array(codepoints).toJS,
        codepoints.length.toJS,
      ),
    ),
  );

  @override
  bool IsFontValid(
    FontD font,
  ) => run(
    () => RaylibDebugLabels.IsFontValid(font),
    () => rl.Core.IsFontValid.run1(
      rl.Temp.Font$.Ref1(font).toJS,
    ).toBool(),
  );

  // TODO: ON NEW RAYLIB RELEASE - add glyphCount, now it defaults to 95
  @override
  List<GlyphInfoD> LoadFontData(
    Uint8List fileData,
    num fontSize,
    Int32List? codepoints,
    num? codepointCount,
    FontType type,
  ) => run(
    () => RaylibDebugLabels.LoadFontData(fileData, fontSize, codepoints, codepointCount, type),
    () {
      // final glyphCount = _int1();
      final glyphsPtr = rl.Core.LoadFontData.run6(
        rl.Temp.Uint8$.Array(fileData).toJS,
        fileData.length.toJS,
        fontSize.toJS,
        (codepoints == null ? 0 : rl.Temp.Int32$.Array(codepoints).address).toJS,
        (codepointCount ?? codepoints?.length ?? 0).toJS,
        type.value.toJS,
        // glyphCount.toJS,
      ).toInt();
      final requestedCount = (codepointCount == null || codepointCount == 0) 
        // ? codepoints?.length ?? glyphCount.value 
        ? codepoints?.length ?? 95 
        : codepointCount.toInt();
      
      return GlyphInfoD.wasmPointer(glyphsPtr).readArray(requestedCount, owned: true);
    },
  );

  @override
  (ImageD image, List<RectangleD> glyphRecs) GenImageFontAtlas(
    List<GlyphInfoD> glyphs,
    num fontSize,
    num padding,
    num packMethod,
  ) => run(
    () => RaylibDebugLabels.GenImageFontAtlas(glyphs, fontSize, padding, packMethod),
    () {
      final recsPtr = WasmMemory.malloc(4); // Rectangle**

      try {
        final image = rl.Temp.Image$.RefCapture(
          RaylibCaptureIds.GenImageFontAtlas(glyphs, fontSize, padding, packMethod),
          (p) => rl.Core.GenImageFontAtlas.run7(
            p.toJS,
            (glyphs.firstOrNull?.originalPointer?.address ?? rl.Temp.GlyphInfo$.Array(glyphs).address).toJS,
            recsPtr.toJS,
            glyphs.length.toJS,
            fontSize.toJS,
            padding.toJS,
            packMethod.toJS,
          ),
        );

        final innerPtr = WasmReader(recsPtr).Uint32(); // Rectangle*
        final recs = RectangleD.wasmPointer(innerPtr).readArray(glyphs.length, owned: true);

        return (image, recs);
      } finally {
        WasmMemory.free(recsPtr);
      }
    },
  );

  @override
  void UnloadFontData(
    List<GlyphInfoD> glyphs,
  ) => run(
    () => RaylibDebugLabels.UnloadFontData(glyphs),
    () => rl.Core.UnloadFontData.run2(
      (glyphs.firstOrNull?.originalPointer?.address ?? rl.Temp.GlyphInfo$.Array(glyphs).address).toJS,
      glyphs.length.toJS,
    ),
  );
    
  @override
  void UnloadFont(
    FontD font,
  ) => run(
    () => RaylibDebugLabels.UnloadFont(font),
    () => rl.Core.UnloadFont.run1(
      rl.Temp.Font$.Ref1(font).toJS,
    ),
  );

  @override
  bool ExportFontAsCode(
    FontD font,
    String fileName,
  ) => run(
    () => RaylibDebugLabels.ExportFontAsCode(font, fileName),
    () => rl.Core.ExportFontAsCode.run2(
      rl.Temp.Font$.Ref1(font).toJS,
      fileName.toJS,
    ).toBool(),
  );

  @override
  void DrawFPS(
    num posX,
    num posY,
  ) => run(
    () => RaylibDebugLabels.DrawFPS(posX, posY),
    () => rl.Core.DrawFPS.run2(
      posX.toJS,
      posY.toJS,
    ),
  );

  @override
  void DrawText(
    String text,
    num posX,
    num posY,
    num fontSize,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawText(text, posX, posY, fontSize, color),
    () => rl.Core.DrawText.run5(
      text.toJS,
      posX.toJS,
      posY.toJS,
      fontSize.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawTextEx(
    FontD font,
    String text,
    Vector2D position,
    num fontSize,
    num spacing,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.DrawTextEx(font, text, position, fontSize, spacing, tint),
    () => rl.Core.DrawTextEx.run6(
      rl.Temp.Font$.Ref1(font).toJS,
      text.toJS,
      rl.Temp.Vector2$.Ref1(position).toJS,
      fontSize.toJS,
      spacing.toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );

  @override
  void DrawTextPro(
    FontD font,
    String text,
    Vector2D position,
    Vector2D origin,
    num rotation,
    num fontSize,
    num spacing,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.DrawTextPro(font, text, position, origin, rotation, fontSize, spacing, tint),
    () => rl.Core.DrawTextPro.run8(
      rl.Temp.Font$.Ref1(font).toJS,
      text.toJS,
      rl.Temp.Vector2$.Ref1(position).toJS,
      rl.Temp.Vector2$.Ref2(origin).toJS,
      rotation.toJS,
      fontSize.toJS,
      spacing.toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );
    
  @override
  void DrawTextCodepoint(
    FontD font,
    num codepoint,
    Vector2D position,
    num fontSize,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.DrawTextCodepoint(font, codepoint, position, fontSize, tint),
    () => rl.Core.DrawTextCodepoint.run5(
      rl.Temp.Font$.Ref1(font).toJS,
      codepoint.toJS,
      rl.Temp.Vector2$.Ref1(position).toJS,
      fontSize.toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );

  @override
  void DrawTextCodepoints(
    FontD font,
    Int32List codepoints,
    Vector2D position,
    num fontSize,
    num spacing,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.DrawTextCodepoints(font, codepoints, position, fontSize, spacing, tint),
    () => rl.Core.DrawTextCodepoints.run7(
      rl.Temp.Font$.Ref1(font).toJS,
      rl.Temp.Int32$.Array(codepoints).toJS,
      codepoints.length.toJS,
      rl.Temp.Vector2$.Ref1(position).toJS,
      fontSize.toJS,
      spacing.toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );

  @override
  void SetTextLineSpacing(
    num spacing,
  ) => run(
    () => RaylibDebugLabels.SetTextLineSpacing(spacing),
    () => rl.Core.SetTextLineSpacing.run1(
      spacing.toJS,
    ),
  );

  @override
  int MeasureText(
    String text,
    num fontSize,
  ) => run(
    () => RaylibDebugLabels.MeasureText(text, fontSize),
    () => rl.Core.MeasureText.run2(
      text.toJS,
      fontSize.toJS,
    ).toInt(),
  );
    
  @override
  Vector2D MeasureTextEx(
    FontD font,
    String text,
    num fontSize,
    num spacing,
  ) => run(
    () => RaylibDebugLabels.MeasureTextEx(font, text, fontSize, spacing),
    () => rl.Temp.Vector2$.Extract1(
      (p) => rl.Core.MeasureTextEx.run5(
        p.toJS,
        rl.Temp.Font$.Ref1(font).toJS,
        text.toJS,
        fontSize.toJS,
        spacing.toJS,
      ),
    ),
  );

  @override
  int GetGlyphIndex(
    FontD font,
    num codepoint,
  ) => run(
    () => RaylibDebugLabels.GetGlyphIndex(font, codepoint),
    () => rl.Core.GetGlyphIndex.run2(
      rl.Temp.Font$.Ref1(font).toJS,
      codepoint.toJS,
    ).toInt(),
  );

  @override
  GlyphInfoD GetGlyphInfo(
    FontD font,
    num codepoint,
  ) => run(
    () => RaylibDebugLabels.GetGlyphInfo(font, codepoint),
    () => rl.Temp.GlyphInfo$.Extract1(
      (p) => rl.Core.GetGlyphInfo.run3(
        p.toJS,
        rl.Temp.Font$.Ref1(font).toJS,
        codepoint.toJS,
      ),
    ),
  );

  @override
  RectangleD GetGlyphAtlasRec(
    FontD font,
    num codepoint,
  ) => run(
    () => RaylibDebugLabels.GetGlyphAtlasRec(font, codepoint),
    () => rl.Temp.Rectangle$.Extract1(
      (p) => rl.Core.GetGlyphAtlasRec.run3(
        p.toJS,
        rl.Temp.Font$.Ref1(font).toJS,
        codepoint.toJS,
      ),
    ),
  );
    
  @override
  String LoadUTF8(
    Int32List codepoints,
  ) => run(
    () => RaylibDebugLabels.LoadUTF8(codepoints),
    () {
      final utf8Ptr = rl.Core.LoadUTF8.run2(
        rl.Temp.Int32$.Array(codepoints).toJS,
        codepoints.length.toJS,
      ).toInt();
      try {
        return WasmStringPointer(utf8Ptr).ref;
      } finally {
        rl.Core.UnloadUTF8.run1(utf8Ptr.toJS);
      }
    },
  );

  @override
  Int32List LoadCodepoints(
    String text,
  ) => run(
    () => RaylibDebugLabels.LoadCodepoints(text),
    () {
      final countPtr = rl.Temp.Int32$.Ref1();
      final codepointsPtr = rl.Core.LoadCodepoints.run2(
        text.toJS,
        countPtr.toJS,
      ).toInt();
      try {
        return WasmInt32Pointer(codepointsPtr).readTypedArray(countPtr.value);
      } finally {
        rl.Core.UnloadCodepoints.run1(codepointsPtr.toJS);
      }
    },
  );

  @override
  int GetCodepointCount(
    String text,
  ) => run(
    () => RaylibDebugLabels.GetCodepointCount(text),
    () => rl.Core.GetCodepointCount.run1(
      text.toJS,
    ).toInt(),
  );

  @override
  (int codepoint, int codepointSize) GetCodepoint(
    String text,
  ) => run(
    () => RaylibDebugLabels.GetCodepoint(text),
    () {
      final sizePtr = rl.Temp.Int32$.Ref1();
      final codepoint = rl.Core.GetCodepoint.run2(
        text.toJS,
        sizePtr.toJS,
      ).toInt();
      return (codepoint, sizePtr.value);
    },
  );

  @override
  (int codepoint, int codepointSize) GetCodepointNext(
    String text,
  ) => run(
    () => RaylibDebugLabels.GetCodepointNext(text),
    () {
      final sizePtr = rl.Temp.Int32$.Ref1();
      final codepoint = rl.Core.GetCodepointNext.run2(
        text.toJS,
        sizePtr.toJS,
      ).toInt();
      return (codepoint, sizePtr.value);
    },
  );

  @override
  (int codepoint, int codepointSize) GetCodepointPrevious(
    String text,
  ) => run(
    () => RaylibDebugLabels.GetCodepointPrevious(text),
    () {
      final sizePtr = rl.Temp.Int32$.Ref1();
      final codepoint = rl.Core.GetCodepointPrevious.run2(
        text.toJS,
        sizePtr.toJS,
      ).toInt();
      return (codepoint, sizePtr.value);
    },
  );

  @override
  (String text, int size) CodepointToUTF8(
    num codepoint,
  ) => run(
    () => RaylibDebugLabels.CodepointToUTF8(codepoint),
    () {
      final sizePtr = rl.Temp.Int32$.Ref1();
      final textPtr = rl.Core.CodepointToUTF8.run2(
        codepoint.toJS,
        sizePtr.toJS,
      ).toInt();
      return (WasmStringPointer(textPtr).ref, sizePtr.value);
    },
  );
    
  @override
  void DrawLine3D(
    Vector3D startPos,
    Vector3D endPos,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawLine3D(startPos, endPos, color),
    () => rl.Core.DrawLine3D.run3(
      rl.Temp.Vector3$.Ref1(startPos).toJS,
      rl.Temp.Vector3$.Ref2(endPos).toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawPoint3D(
    Vector3D position,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawPoint3D(position, color),
    () => rl.Core.DrawPoint3D.run2(
      rl.Temp.Vector3$.Ref1(position).toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawCircle3D(
    Vector3D center,
    num radius,
    Vector3D rotationAxis,
    num rotationAngle,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawCircle3D(center, radius, rotationAxis, rotationAngle, color),
    () => rl.Core.DrawCircle3D.run5(
      rl.Temp.Vector3$.Ref1(center).toJS,
      radius.toJS,
      rl.Temp.Vector3$.Ref2(rotationAxis).toJS,
      rotationAngle.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawTriangle3D(
    Vector3D v1,
    Vector3D v2,
    Vector3D v3,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawTriangle3D(v1, v2, v3, color),
    () => rl.Core.DrawTriangle3D.run4(
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
      rl.Temp.Vector3$.Ref3(v3).toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawTriangleStrip3D(
    List<Vector3D> points,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawTriangleStrip3D(points, color),
    () => rl.Core.DrawTriangleStrip3D.run3(
      rl.Temp.Vector3$.Array(points).toJS,
      points.length.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawCube(
    Vector3D position,
    num width,
    num height,
    num length,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawCube(position, width, height, length, color),
    () => rl.Core.DrawCube.run5(
      rl.Temp.Vector3$.Ref1(position).toJS,
      width.toJS,
      height.toJS,
      length.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawCubeV(
    Vector3D position,
    Vector3D size,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawCubeV(position, size, color),
    () => rl.Core.DrawCubeV.run3(
      rl.Temp.Vector3$.Ref1(position).toJS,
      rl.Temp.Vector3$.Ref2(size).toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawCubeWires(
    Vector3D position,
    num width,
    num height,
    num length,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawCubeWires(position, width, height, length, color),
    () => rl.Core.DrawCubeWires.run5(
      rl.Temp.Vector3$.Ref1(position).toJS,
      width.toJS,
      height.toJS,
      length.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawCubeWiresV(
    Vector3D position,
    Vector3D size,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawCubeWiresV(position, size, color),
    () => rl.Core.DrawCubeWiresV.run3(
      rl.Temp.Vector3$.Ref1(position).toJS,
      rl.Temp.Vector3$.Ref2(size).toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawSphere(
    Vector3D centerPos,
    num radius,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawSphere(centerPos, radius, color),
    () => rl.Core.DrawSphere.run3(
      rl.Temp.Vector3$.Ref1(centerPos).toJS,
      radius.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawSphereEx(
    Vector3D centerPos,
    num radius,
    num rings,
    num slices,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawSphereEx(centerPos, radius, rings, slices, color),
    () => rl.Core.DrawSphereEx.run5(
      rl.Temp.Vector3$.Ref1(centerPos).toJS,
      radius.toJS,
      rings.toJS,
      slices.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawSphereWires(
    Vector3D centerPos,
    num radius,
    num rings,
    num slices,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawSphereWires(centerPos, radius, rings, slices, color),
    () => rl.Core.DrawSphereWires.run5(
      rl.Temp.Vector3$.Ref1(centerPos).toJS,
      radius.toJS,
      rings.toJS,
      slices.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawCylinder(
    Vector3D position,
    num radiusTop,
    num radiusBottom,
    num height,
    num slices,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawCylinder(position, radiusTop, radiusBottom, height, slices, color),
    () => rl.Core.DrawCylinder.run6(
      rl.Temp.Vector3$.Ref1(position).toJS,
      radiusTop.toJS,
      radiusBottom.toJS,
      height.toJS,
      slices.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawCylinderEx(
    Vector3D startPos,
    Vector3D endPos,
    num startRadius,
    num endRadius,
    num sides,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawCylinderEx(startPos, endPos, startRadius, endRadius, sides, color),
    () => rl.Core.DrawCylinderEx.run6(
      rl.Temp.Vector3$.Ref1(startPos).toJS,
      rl.Temp.Vector3$.Ref2(endPos).toJS,
      startRadius.toJS,
      endRadius.toJS,
      sides.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawCylinderWires(
    Vector3D position,
    num radiusTop,
    num radiusBottom,
    num height,
    num slices,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawCylinderWires(position, radiusTop, radiusBottom, height, slices, color),
    () => rl.Core.DrawCylinderWires.run6(
      rl.Temp.Vector3$.Ref1(position).toJS,
      radiusTop.toJS,
      radiusBottom.toJS,
      height.toJS,
      slices.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawCylinderWiresEx(
    Vector3D startPos,
    Vector3D endPos,
    num startRadius,
    num endRadius,
    num sides,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawCylinderWiresEx(startPos, endPos, startRadius, endRadius, sides, color),
    () => rl.Core.DrawCylinderWiresEx.run6(
      rl.Temp.Vector3$.Ref1(startPos).toJS,
      rl.Temp.Vector3$.Ref2(endPos).toJS,
      startRadius.toJS,
      endRadius.toJS,
      sides.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawCapsule(
    Vector3D startPos,
    Vector3D endPos,
    num radius,
    num slices,
    num rings,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawCapsule(startPos, endPos, radius, slices, rings, color),
    () => rl.Core.DrawCapsule.run6(
      rl.Temp.Vector3$.Ref1(startPos).toJS,
      rl.Temp.Vector3$.Ref2(endPos).toJS,
      radius.toJS,
      slices.toJS,
      rings.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawCapsuleWires(
    Vector3D startPos,
    Vector3D endPos,
    num radius,
    num slices,
    num rings,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawCapsuleWires(startPos, endPos, radius, slices, rings, color),
    () => rl.Core.DrawCapsuleWires.run6(
      rl.Temp.Vector3$.Ref1(startPos).toJS,
      rl.Temp.Vector3$.Ref2(endPos).toJS,
      radius.toJS,
      slices.toJS,
      rings.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawPlane(
    Vector3D centerPos,
    Vector2D size,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawPlane(centerPos, size, color),
    () => rl.Core.DrawPlane.run3(
      rl.Temp.Vector3$.Ref1(centerPos).toJS,
      rl.Temp.Vector2$.Ref1(size).toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawRay(
    RayD ray,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawRay(ray, color),
    () => rl.Core.DrawRay.run2(
      rl.Temp.Ray$.Ref1(ray).toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );
    
  @override
  void DrawGrid(
    num slices,
    num spacing,
  ) => run(
    () => RaylibDebugLabels.DrawGrid(slices, spacing),
    () => rl.Core.DrawGrid.run2(
      slices.toJS,
      spacing.toJS,
    ),
  );
    
  @override
  ModelD LoadModel(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.LoadModel(fileName),
    () => rl.Temp.Model$.RefCapture(
      RaylibCaptureIds.LoadModel(fileName),
      (p) => rl.Core.LoadModel.run2(
        p.toJS,
        fileName.toJS,
      ),
    ),
  );
    
  @override
  ModelD LoadModelFromMesh(
    MeshD mesh,
  ) => run(
    () => RaylibDebugLabels.LoadModelFromMesh(mesh),
    () => rl.Temp.Model$.RefCapture(
      RaylibCaptureIds.LoadModelFromMesh(mesh),
      (p) => rl.Core.LoadModelFromMesh.run2(
        p.toJS,
        rl.Temp.Mesh$.Ref1(mesh).toJS,
      ),
    ),
  );
    
  @override
  bool IsModelValid(
    ModelD model,
  ) => run(
    () => RaylibDebugLabels.IsModelValid(model),
    () => rl.Core.IsModelValid.run1(
      rl.Temp.Model$.Ref1(model).toJS,
    ).toBool(),
  );
    
  @override
  void UnloadModel(
    ModelD model,
  ) => run(
    () => RaylibDebugLabels.UnloadModel(model),
    () => rl.Core.UnloadModel.run1(
      model.getOriginalPointerAndDispose().toJS,
    ),
  );
    
  @override
  BoundingBoxD GetModelBoundingBox(
    ModelD model,
  ) => run(
    () => RaylibDebugLabels.GetModelBoundingBox(model),
    () => rl.Temp.BoundingBox$.Extract1(
      (p) => rl.Core.GetModelBoundingBox.run2(
        p.toJS,
        rl.Temp.Model$.Ref1(model).toJS,
      ),
    ),
  );
    
  @override
  void DrawModel(
    ModelD model,
    Vector3D position,
    num scale,
    ColorD tint
  ) => run(
    () => RaylibDebugLabels.DrawModel(model, position, scale, tint),
    () => rl.Core.DrawModel.run4(
      rl.Temp.Model$.Ref1(model).toJS,
      rl.Temp.Vector3$.Ref1(position).toJS,
      scale.toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );
    
  @override
  void DrawModelEx(
    ModelD model,
    Vector3D position,
    Vector3D rotationAxis,
    num rotationAngle,
    Vector3D scale,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.DrawModelEx(model, position, rotationAxis, rotationAngle, scale, tint),
    () => rl.Core.DrawModelEx.run6(
      rl.Temp.Model$.Ref1(model).toJS,
      rl.Temp.Vector3$.Ref1(position).toJS,
      rl.Temp.Vector3$.Ref2(rotationAxis).toJS,
      rotationAngle.toJS,
      rl.Temp.Vector3$.Ref3(scale).toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );
    
  @override
  void DrawModelWires(
    ModelD model,
    Vector3D position,
    num scale,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.DrawModelWires(model, position, scale, tint),
    () => rl.Core.DrawModelWires.run4(
      rl.Temp.Model$.Ref1(model).toJS,
      rl.Temp.Vector3$.Ref1(position).toJS,
      scale.toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );
    
  @override
  void DrawModelWiresEx(
    ModelD model,
    Vector3D position,
    Vector3D rotationAxis,
    num rotationAngle,
    Vector3D scale,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.DrawModelWiresEx(model, position, rotationAxis, rotationAngle, scale, tint),
    () => rl.Core.DrawModelWiresEx.run6(
      rl.Temp.Model$.Ref1(model).toJS,
      rl.Temp.Vector3$.Ref1(position).toJS,
      rl.Temp.Vector3$.Ref2(rotationAxis).toJS,
      rotationAngle.toJS,
      rl.Temp.Vector3$.Ref3(scale).toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );
    
  @override
  void DrawModelPoints(
    ModelD model,
    Vector3D position,
    num scale,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.DrawModelPoints(model, position, scale, tint),
    () => rl.Core.DrawModelPoints.run4(
      rl.Temp.Model$.Ref1(model).toJS,
      rl.Temp.Vector3$.Ref1(position).toJS,
      scale.toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );
    
  @override
  void DrawModelPointsEx(
    ModelD model,
    Vector3D position,
    Vector3D rotationAxis,
    num rotationAngle,
    Vector3D scale,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.DrawModelPointsEx(model, position, rotationAxis, rotationAngle, scale, tint),
    () => rl.Core.DrawModelPointsEx.run6(
      rl.Temp.Model$.Ref1(model).toJS,
      rl.Temp.Vector3$.Ref1(position).toJS,
      rl.Temp.Vector3$.Ref2(rotationAxis).toJS,
      rotationAngle.toJS,
      rl.Temp.Vector3$.Ref3(scale).toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );
    
  @override
  void DrawBoundingBox(
    BoundingBoxD box,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.DrawBoundingBox(box, color),
    () => rl.Core.DrawBoundingBox.run2(
      rl.Temp.BoundingBox$.Ref1(box).toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  void DrawBillboard(
    Camera3DD camera,
    TextureD texture,
    Vector3D position,
    num scale,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.DrawBillboard(camera, texture, position, scale, tint),
    () => rl.Core.DrawBillboard.run5(
      rl.Temp.Camera3D$.Ref1(camera).toJS,
      rl.Temp.Texture$.Ref1(texture).toJS,
      rl.Temp.Vector3$.Ref1(position).toJS,
      scale.toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );

  @override
  void DrawBillboardRec(
    Camera3DD camera,
    TextureD texture,
    RectangleD source,
    Vector3D position,
    Vector2D size,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.DrawBillboardRec(camera, texture, source, position, size, tint),
    () => rl.Core.DrawBillboardRec.run6(
      rl.Temp.Camera3D$.Ref1(camera).toJS,
      rl.Temp.Texture$.Ref1(texture).toJS,
      rl.Temp.Rectangle$.Ref1(source).toJS,
      rl.Temp.Vector3$.Ref1(position).toJS,
      rl.Temp.Vector2$.Ref1(size).toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );

  @override
  void DrawBillboardPro(
    Camera3DD camera,
    TextureD texture,
    RectangleD source,
    Vector3D position,
    Vector3D up,
    Vector2D size,
    Vector2D origin,
    num rotation,
    ColorD tint,
  ) => run(
    () => RaylibDebugLabels.DrawBillboardPro(camera, texture, source, position, up, size, origin, rotation, tint),
    () => rl.Core.DrawBillboardPro.run9(
      rl.Temp.Camera3D$.Ref1(camera).toJS,
      rl.Temp.Texture$.Ref1(texture).toJS,
      rl.Temp.Rectangle$.Ref1(source).toJS,
      rl.Temp.Vector3$.Ref1(position).toJS,
      rl.Temp.Vector3$.Ref2(up).toJS,
      rl.Temp.Vector2$.Ref1(size).toJS,
      rl.Temp.Vector2$.Ref2(origin).toJS,
      rotation.toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ),
  );
  
  @override
  void UploadMesh(
    MeshD mesh,
    bool dynamic,
  ) => run(
    () => RaylibDebugLabels.UploadMesh(mesh, dynamic),
    () => rl.Temp.Mesh$.RefUpdate1(mesh,
      (p) => rl.Core.UploadMesh.run2(
        p.toJS,
        dynamic.toJS,
      ),
    ),
  );
    
  @override
  void UpdateMeshBuffer(
    MeshD mesh,
    num index,
    TypedDataList data,
    num offset,
  ) => run(
    () => RaylibDebugLabels.UpdateMeshBuffer(mesh, index, data, offset),
    () => rl.Core.UpdateMeshBuffer.run5(
      rl.Temp.Mesh$.Ref1(mesh).toJS,
      index.toJS,
      rl.Temp.TypedDataList$.Array(data).toJS,
      data.length.toJS,
      offset.toJS,
    ),
  );
    
  @override
  void UnloadMesh(
    MeshD mesh,
  ) => run(
    () => RaylibDebugLabels.UnloadMesh(mesh),
    () => rl.Core.UnloadMesh.run1(
      rl.Temp.Mesh$.Ref1(mesh).toJS,
    ),
  );
    
  @override
  void DrawMesh(
    MeshD mesh,
    MaterialD material,
    MatrixD transform,
  ) => run(
    () => RaylibDebugLabels.DrawMesh(mesh, material, transform),
    () => rl.Core.DrawMesh.run3(
      rl.Temp.Mesh$.Ref1(mesh).toJS,
      rl.Temp.Material$.Ref1(material).toJS,
      rl.Temp.Matrix$.Ref1(transform).toJS,
    ),
  );
    
  @override
  void DrawMeshInstanced(
    MeshD mesh,
    MaterialD material,
    List<MatrixD> transforms,
  ) => run(
    () => RaylibDebugLabels.DrawMeshInstanced(mesh, material, transforms),
    () => rl.Core.DrawMeshInstanced.run4(
      rl.Temp.Mesh$.Ref1(mesh).toJS,
      rl.Temp.Material$.Ref1(material).toJS,
      rl.Temp.Matrix$.Array(transforms).toJS,
      transforms.length.toJS,
    ),
  );
    
  @override
  BoundingBoxD GetMeshBoundingBox(
    MeshD mesh,
  ) => run(
    () => RaylibDebugLabels.GetMeshBoundingBox(mesh),
    () => rl.Temp.BoundingBox$.Extract1(
      (p) => rl.Core.GetMeshBoundingBox.run2(
        p.toJS,
        rl.Temp.Mesh$.Ref1(mesh).toJS,
      ),
    ),
  );
    
  @override
  void GenMeshTangents(
    MeshD mesh,
  ) => run(
    () => RaylibDebugLabels.GenMeshTangents(mesh),
    () => rl.Temp.Mesh$.RefUpdate1(mesh,
      (p) => rl.Core.GenMeshTangents.run1(
        p.toJS,
      ),
    ),
  );
    
  @override
  bool ExportMesh(
    MeshD mesh,
    String fileName,
  ) => run(
    () => RaylibDebugLabels.ExportMesh(mesh, fileName),
    () => rl.Core.ExportMesh.run2(
      rl.Temp.Mesh$.Ref1(mesh).toJS,
      fileName.toJS,
    ).toBool(),
  );
    
  @override
  bool ExportMeshAsCode(
    MeshD mesh,
    String fileName,
  ) => run(
    () => RaylibDebugLabels.ExportMeshAsCode(mesh, fileName),
    () => rl.Core.ExportMeshAsCode.run2(
      rl.Temp.Mesh$.Ref1(mesh).toJS,
      fileName.toJS,
    ).toBool(),
  );
    
  @override
  MeshD GenMeshPoly(
    num sides,
    num radius,
  ) => run(
    () => RaylibDebugLabels.GenMeshPoly(sides, radius),
    () => rl.Temp.Mesh$.RefCapture(
      RaylibCaptureIds.GenMeshPoly(sides, radius),
      (p) => rl.Core.GenMeshPoly.run3(
        p.toJS,
        sides.toJS,
        radius.toJS,
      ),
    ),
  );
    
  @override
  MeshD GenMeshPlane(
    num width,
    num length,
    num resX,
    num resZ,
  ) => run(
    () => RaylibDebugLabels.GenMeshPlane(width, length, resX, resZ),
    () => rl.Temp.Mesh$.RefCapture(
      RaylibCaptureIds.GenMeshPlane(width, length, resX, resZ),
      (p) => rl.Core.GenMeshPlane.run5(
        p.toJS,
        width.toJS,
        length.toJS,
        resX.toJS,
        resZ.toJS,
      ),
    ),
  );
    
  @override
  MeshD GenMeshCube(
    num width,
    num height,
    num length,
  ) => run(
    () => RaylibDebugLabels.GenMeshCube(width, height, length),
    () => rl.Temp.Mesh$.RefCapture(
      RaylibCaptureIds.GenMeshCube(width, height, length),
      (p) => rl.Core.GenMeshCube.run4(
        p.toJS,
        width.toJS,
        height.toJS,
        length.toJS,
      ),
    ),
  );
    
  @override
  MeshD GenMeshSphere(
    num radius,
    num rings,
    num slices,
  ) => run(
    () => RaylibDebugLabels.GenMeshSphere(radius, rings, slices),
    () => rl.Temp.Mesh$.RefCapture(
      RaylibCaptureIds.GenMeshSphere(radius, rings, slices),
      (p) => rl.Core.GenMeshSphere.run4(
        p.toJS,
        radius.toJS,
        rings.toJS,
        slices.toJS,
      ),
    ),
  );
    
  @override
  MeshD GenMeshHemiSphere(
    num radius,
    num rings,
    num slices,
  ) => run(
    () => RaylibDebugLabels.GenMeshHemiSphere(radius, rings, slices),
    () => rl.Temp.Mesh$.RefCapture(
      RaylibCaptureIds.GenMeshHemiSphere(radius, rings, slices),
      (p) => rl.Core.GenMeshHemiSphere.run4(
        p.toJS,
        radius.toJS,
        rings.toJS,
        slices.toJS,
      ),
    ),
  );
    
  @override
  MeshD GenMeshCylinder(
    num radius,
    num height,
    num slices,
  ) => run(
    () => RaylibDebugLabels.GenMeshCylinder(radius, height, slices),
    () => rl.Temp.Mesh$.RefCapture(
      RaylibCaptureIds.GenMeshCylinder(radius, height, slices),
      (p) => rl.Core.GenMeshCylinder.run4(
        p.toJS,
        radius.toJS,
        height.toJS,
        slices.toJS,
      ),
    ),
  );
    
  @override
  MeshD GenMeshCone(
    num radius,
    num height,
    num slices,
  ) => run(
    () => RaylibDebugLabels.GenMeshCone(radius, height, slices),
    () => rl.Temp.Mesh$.RefCapture(
      RaylibCaptureIds.GenMeshCone(radius, height, slices),
      (p) => rl.Core.GenMeshCone.run4(
        p.toJS,
        radius.toJS,
        height.toJS,
        slices.toJS,
      ),
    ),
  );
    
  @override
  MeshD GenMeshTorus(
    num radius,
    num size,
    num radSeg,
    num sides,
  ) => run(
    () => RaylibDebugLabels.GenMeshTorus(radius, size, radSeg, sides),
    () => rl.Temp.Mesh$.RefCapture(
      RaylibCaptureIds.GenMeshTorus(radius, size, radSeg, sides),
      (p) => rl.Core.GenMeshTorus.run5(
        p.toJS,
        radius.toJS,
        size.toJS,
        radSeg.toJS,
        sides.toJS,
      ),
    ),
  );
    
  @override
  MeshD GenMeshKnot(
    num radius,
    num size,
    num radSeg,
    num sides,
  ) => run(
    () => RaylibDebugLabels.GenMeshKnot(radius, size, radSeg, sides),
    () => rl.Temp.Mesh$.RefCapture(
      RaylibCaptureIds.GenMeshKnot(radius, size, radSeg, sides),
      (p) => rl.Core.GenMeshKnot.run5(
        p.toJS,
        radius.toJS,
        size.toJS,
        radSeg.toJS,
        sides.toJS,
      ),
    ),
  );
    
  @override
  MeshD GenMeshHeightmap(
    ImageD heightmap,
    Vector3D size,
  ) => run(
    () => RaylibDebugLabels.GenMeshHeightmap(heightmap, size),
    () => rl.Temp.Mesh$.RefCapture(
      RaylibCaptureIds.GenMeshHeightmap(heightmap, size),
      (p) => rl.Core.GenMeshHeightmap.run3(
        p.toJS,
        rl.Temp.Image$.Ref1(heightmap).toJS,
        rl.Temp.Vector3$.Ref1(size).toJS,
      ),
    ),
  );
    
  @override
  MeshD GenMeshCubicmap(
    ImageD cubicmap,
    Vector3D cubeSize,
  ) => run(
    () => RaylibDebugLabels.GenMeshCubicmap(cubicmap, cubeSize),
    () => rl.Temp.Mesh$.RefCapture(
      RaylibCaptureIds.GenMeshCubicmap(cubicmap, cubeSize),
      (p) => rl.Core.GenMeshCubicmap.run3(
        p.toJS,
        rl.Temp.Image$.Ref1(cubicmap).toJS,
        rl.Temp.Vector3$.Ref1(cubeSize).toJS,
      ),
    ),
  );
    
  @override
  List<MaterialD> LoadMaterials(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.LoadMaterials(fileName),
    () {
      final materialCountPtr = rl.Temp.Int32$.Ref1();
      final materialsPtr = rl.Core.LoadMaterials.run2(
        fileName.toJS,
        materialCountPtr.toJS,
      ).toInt();
      return MaterialD.wasmPointer(materialsPtr).readArray(materialCountPtr.value, owned: true);
    },
  );
    
  @override
  MaterialD LoadMaterialDefault() => run(
    () => RaylibDebugLabels.LoadMaterialDefault(),
    () => rl.Temp.Material$.RefCapture(
      RaylibCaptureIds.LoadMaterialDefault(),
      (p) => rl.Core.LoadMaterialDefault.run1(
        p.toJS,
      ),
    ),
  );
    
  @override
  bool IsMaterialValid(
    MaterialD material,
  ) => run(
    () => RaylibDebugLabels.IsMaterialValid(material),
    () => rl.Core.IsMaterialValid.run1(
      rl.Temp.Material$.Ref1(material).toJS,
    ).toBool(),
  );
    
  @override
  void UnloadMaterial(
    MaterialD material,
  ) => run(
    () => RaylibDebugLabels.UnloadMaterial(material),
    () => rl.Core.UnloadMaterial.run1(
      rl.Temp.Material$.Ref1(material).toJS,
    ),
  );
    
  @override
  void SetMaterialTexture(
    MaterialD material,
    MaterialMapIndex mapType,
    TextureD texture,
  ) => run(
    () => RaylibDebugLabels.SetMaterialTexture(material, mapType, texture),
    () => material.maps[mapType.value].texture = texture,
  );
    
  @override
  void SetModelMeshMaterial(
    ModelD model,
    num meshId,
    num materialId,
  ) => run(
    () => RaylibDebugLabels.SetModelMeshMaterial(model, meshId, materialId),
    () {
      if (meshId >= model.meshes.length) {
        TraceLog(.LOG_WARNING, "MESH: Id greater than mesh count");
        return;
      }
      if (materialId >= model.materials.length) {
        TraceLog(.LOG_WARNING, "MATERIAL: Id greater than material count");
        return;
      }
      model.meshMaterial[meshId.toInt()] = materialId.toInt();
    },
  );
    
  @override
  List<ModelAnimationD> LoadModelAnimations(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.LoadModelAnimations(fileName),
    () {
      final animCountPtr = rl.Temp.Int32$.Ref1();
      final animsPtr = rl.Core.LoadModelAnimations.run2(
        fileName.toJS,
        animCountPtr.toJS,
      ).toInt();
      return ModelAnimationD.wasmPointer(animsPtr).readArray(animCountPtr.value, owned: true);
    },
  );
    
  @override
  void UpdateModelAnimation(
    ModelD model,
    ModelAnimationD anim,
    num frame,
  ) => run(
    () => RaylibDebugLabels.UpdateModelAnimation(model, anim, frame),
    () => rl.Core.UpdateModelAnimation.run3(
      rl.Temp.Model$.Ref1(model).toJS,
      rl.Temp.ModelAnimation$.Ref1(anim).toJS,
      frame.toJS,
    ),
  );
    
  @override
  void UpdateModelAnimationBones(
    ModelD model,
    ModelAnimationD anim,
    num frame,
  ) => run(
    () => RaylibDebugLabels.UpdateModelAnimationBones(model, anim, frame),
    () => rl.Temp.Model$.RefUpdate1(model,
      (pm) => rl.Temp.ModelAnimation$.RefUpdate1(anim,
        (pma) => rl.Core.UpdateModelAnimationBones.run3(
          pm.toJS,
          pma.toJS,
          frame.toJS,
        ),
      ),
    ),
  );
    
  @override
  void UnloadModelAnimation(
    ModelAnimationD anim,
  ) => run(
    () => RaylibDebugLabels.UnloadModelAnimation(anim),
    () => rl.Core.UnloadModelAnimation.run1(
      rl.Temp.ModelAnimation$.Ref1(anim).toJS,
    ),
  );
    
  @override
  void UnloadModelAnimations(
    List<ModelAnimationD> animations,
  ) => run(
    () => RaylibDebugLabels.UnloadModelAnimations(animations),
    () => animations.forEach(UnloadModelAnimation),
  );
    
  @override
  bool IsModelAnimationValid(
    ModelD model,
    ModelAnimationD anim,
  ) => run(
    () => RaylibDebugLabels.IsModelAnimationValid(model, anim),
    () => rl.Core.IsModelAnimationValid.run2(
      rl.Temp.Model$.Ref1(model).toJS,
      rl.Temp.ModelAnimation$.Ref1(anim).toJS,
    ).toBool(),
  );
    
  @override
  bool CheckCollisionSpheres(
    Vector3D center1,
    num radius1,
    Vector3D center2,
    num radius2,
  ) => run(
    () => RaylibDebugLabels.CheckCollisionSpheres(center1, radius1, center2, radius2),
    () => rl.Core.CheckCollisionSpheres.run4(
      rl.Temp.Vector3$.Ref1(center1).toJS,
      radius1.toJS,
      rl.Temp.Vector3$.Ref2(center2).toJS,
      radius2.toJS,
    ).toBool(),
  );
    
  @override
  bool CheckCollisionBoxes(
    BoundingBoxD box1,
    BoundingBoxD box2,
  ) => run(
    () => RaylibDebugLabels.CheckCollisionBoxes(box1, box2),
    () => rl.Core.CheckCollisionBoxes.run2(
      rl.Temp.BoundingBox$.Ref1(box1).toJS,
      rl.Temp.BoundingBox$.Ref2(box2).toJS,
    ).toBool(),
  );
    
  @override
  bool CheckCollisionBoxSphere(
    BoundingBoxD box,
    Vector3D center,
    num radius,
  ) => run(
    () => RaylibDebugLabels.CheckCollisionBoxSphere(box, center, radius),
    () => rl.Core.CheckCollisionBoxSphere.run3(
      rl.Temp.BoundingBox$.Ref1(box).toJS,
      rl.Temp.Vector3$.Ref1(center).toJS,
      radius.toJS,
    ).toBool(),
  );
    
  @override
  RayCollisionD GetRayCollisionSphere(
    RayD ray,
    Vector3D center,
    num radius,
  ) => run(
    () => RaylibDebugLabels.GetRayCollisionSphere(ray, center, radius),
    () => rl.Temp.RayCollision$.Extract1(
      (p) => rl.Core.GetRayCollisionSphere.run4(
        p.toJS,
        rl.Temp.Ray$.Ref1(ray).toJS,
        rl.Temp.Vector3$.Ref1(center).toJS,
        radius.toJS,
      ),
    ),
  );
    
  @override
  RayCollisionD GetRayCollisionBox(
    RayD ray,
    BoundingBoxD box,
  ) => run(
    () => RaylibDebugLabels.GetRayCollisionBox(ray, box),
    () => rl.Temp.RayCollision$.Extract1(
      (p) => rl.Core.GetRayCollisionBox.run3(
        p.toJS,
        rl.Temp.Ray$.Ref1(ray).toJS,
        rl.Temp.BoundingBox$.Ref1(box).toJS,
      ),
    ),
  );
    
  @override
  RayCollisionD GetRayCollisionMesh(
    RayD ray,
    MeshD mesh,
    MatrixD transform,
  ) => run(
    () => RaylibDebugLabels.GetRayCollisionMesh(ray, mesh, transform),
    () => rl.Temp.RayCollision$.Extract1(
      (p) => rl.Core.GetRayCollisionMesh.run4(
        p.toJS,
        rl.Temp.Ray$.Ref1(ray).toJS,
        rl.Temp.Mesh$.Ref1(mesh).toJS,
        rl.Temp.Matrix$.Ref1(transform).toJS,
      ),
    ),
  );
    
  @override
  RayCollisionD GetRayCollisionTriangle(
    RayD ray,
    Vector3D p1,
    Vector3D p2,
    Vector3D p3,
  ) => run(
    () => RaylibDebugLabels.GetRayCollisionTriangle(ray, p1, p2, p3),
    () => rl.Temp.RayCollision$.Extract1(
      (p) => rl.Core.GetRayCollisionTriangle.run5(
        p.toJS,
        rl.Temp.Ray$.Ref1(ray).toJS,
        rl.Temp.Vector3$.Ref1(p1).toJS,
        rl.Temp.Vector3$.Ref2(p2).toJS,
        rl.Temp.Vector3$.Ref3(p3).toJS,
      ),
    ),
  );
    
  @override
  RayCollisionD GetRayCollisionQuad(
    RayD ray,
    Vector3D p1,
    Vector3D p2,
    Vector3D p3,
    Vector3D p4,
  ) => run(
    () => RaylibDebugLabels.GetRayCollisionQuad(ray, p1, p2, p3, p4),
    () => rl.Temp.RayCollision$.Extract1(
      (p) => rl.Core.GetRayCollisionQuad.run6(
        p.toJS,
        rl.Temp.Ray$.Ref1(ray).toJS,
        rl.Temp.Vector3$.Ref1(p1).toJS,
        rl.Temp.Vector3$.Ref2(p2).toJS,
        rl.Temp.Vector3$.Ref3(p3).toJS,
        rl.Temp.Vector3$.Ref4(p4).toJS,
      ),
    ),
  );
}