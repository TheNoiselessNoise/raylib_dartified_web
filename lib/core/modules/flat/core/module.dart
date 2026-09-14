part of '../../../raylib_dartified_web.dart';

class RaylibCoreFlat extends RaylibCoreFlatModule<Raylib> {

  RaylibCoreFlat(super.rl);

  RaylibCore get _wasm => rl.module();

  @override
  void InitWindow(
    int width,
    int height,
    MemoryPointer<RChar> title,
  ) => _wasm.InitWindow.run([
    width.toJS,
    height.toJS,
    title.toJS,
  ]);

  @override
  void CloseWindow() => _wasm.CloseWindow.run();

  @override
  bool WindowShouldClose() => _wasm.WindowShouldClose.run().toBool();

  @override
  bool IsWindowReady() => _wasm.IsWindowReady.run().toBool();

  @override
  bool IsWindowFullscreen() => _wasm.IsWindowFullscreen.run().toBool();

  @override
  bool IsWindowHidden() => _wasm.IsWindowHidden.run().toBool();

  @override
  bool IsWindowMinimized() => _wasm.IsWindowMinimized.run().toBool();

  @override
  bool IsWindowMaximized() => _wasm.IsWindowMaximized.run().toBool();

  @override
  bool IsWindowFocused() => _wasm.IsWindowFocused.run().toBool();

  @override
  bool IsWindowResized() => _wasm.IsWindowResized.run().toBool();

  @override
  bool IsWindowState(
    int flag,
  ) => _wasm.IsWindowState.run([
    flag.toJS,
  ]).toBool();

  @override
  void SetWindowState(
    int flags,
  ) => _wasm.SetWindowState.run([
    flags.toJS,
  ]);

  @override
  void ClearWindowState(
    int flags,
  ) => _wasm.ClearWindowState.run([
    flags.toJS,
  ]);

  @override
  void ToggleFullscreen() => _wasm.ToggleFullscreen.run();

  @override
  void ToggleBorderlessWindowed() => _wasm.ToggleBorderlessWindowed.run();

  @override
  void MaximizeWindow() => _wasm.MaximizeWindow.run();

  @override
  void MinimizeWindow() => _wasm.MinimizeWindow.run();

  @override
  void RestoreWindow() => _wasm.RestoreWindow.run();

  @override
  void SetWindowIcon(
    ImageD image,
  ) => _wasm.SetWindowIcon.run([
    rl.Temp.Image$.Ref1(image).toJS,
  ]);

  @override
  void SetWindowIcons(
    StructPointer<ImageD> images,
    int count,
  ) => _wasm.SetWindowIcons.run([
    images.toJS,
    count.toJS,
  ]);

  @override
  void SetWindowTitle(
    MemoryPointer<RChar> title,
  ) => _wasm.SetWindowTitle.run([
    title.toJS,
  ]);

  @override
  void SetWindowPosition(
    int x,
    int y,
  ) => _wasm.SetWindowPosition.run([
    x.toJS,
    y.toJS,
  ]);

  @override
  void SetWindowMonitor(
    int monitor,
  ) => _wasm.SetWindowMonitor.run([
    monitor.toJS,
  ]);

  @override
  void SetWindowMinSize(
    int width,
    int height,
  ) => _wasm.SetWindowMinSize.run([
    width.toJS,
    height.toJS,
  ]);

  @override
  void SetWindowMaxSize(
    int width,
    int height,
  ) => _wasm.SetWindowMaxSize.run([
    width.toJS,
    height.toJS,
  ]);

  @override
  void SetWindowSize(
    int width,
    int height,
  ) => _wasm.SetWindowSize.run([
    width.toJS,
    height.toJS,
  ]);

  @override
  void SetWindowOpacity(
    double opacity,
  ) => _wasm.SetWindowOpacity.run([
    opacity.toJS,
  ]);

  @override
  void SetWindowFocused() => _wasm.SetWindowFocused.run();

  @override
  WasmMemoryPointer<RVoid> GetWindowHandle() => _wasm.GetWindowHandle.run().asMemoryPointer();

  @override
  int GetScreenWidth() => _wasm.GetScreenWidth.run().toInt();

  @override
  int GetScreenHeight() => _wasm.GetScreenHeight.run().toInt();

  @override
  int GetRenderWidth() => _wasm.GetRenderWidth.run().toInt();

  @override
  int GetRenderHeight() => _wasm.GetRenderHeight.run().toInt();

  @override
  int GetMonitorCount() => _wasm.GetMonitorCount.run().toInt();

  @override
  int GetCurrentMonitor() => _wasm.GetCurrentMonitor.run().toInt();

  @override
  Vector2D GetMonitorPosition(
    int monitor,
  ) => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.GetMonitorPosition.run([
      p.toJS,
      monitor.toJS,
    ]),
  );

  @override
  int GetMonitorWidth(
    int monitor,
  ) => _wasm.GetMonitorWidth.run([
    monitor.toJS,
  ]).toInt();

  @override
  int GetMonitorHeight(
    int monitor,
  ) => _wasm.GetMonitorHeight.run([
    monitor.toJS,
  ]).toInt();

  @override
  int GetMonitorPhysicalWidth(
    int monitor,
  ) => _wasm.GetMonitorPhysicalWidth.run([
    monitor.toJS,
  ]).toInt();

  @override
  int GetMonitorPhysicalHeight(
    int monitor,
  ) => _wasm.GetMonitorPhysicalHeight.run([
    monitor.toJS,
  ]).toInt();

  @override
  int GetMonitorRefreshRate(
    int monitor,
  ) => _wasm.GetMonitorRefreshRate.run([
    monitor.toJS,
  ]).toInt();

  @override
  Vector2D GetWindowPosition() => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.GetWindowPosition.run([
      p.toJS,
    ]),
  );

  @override
  Vector2D GetWindowScaleDPI() => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.GetWindowScaleDPI.run([
      p.toJS,
    ]),
  );

  @override
  WasmMemoryPointer<RChar> GetMonitorName(
    int monitor,
  ) => _wasm.GetMonitorName.run([
    monitor.toJS,
  ]).asMemoryPointer();

  @override
  void SetClipboardText(
    MemoryPointer<RChar> text,
  ) => _wasm.SetClipboardText.run([
    text.toJS,
  ]);

  @override
  WasmMemoryPointer<RChar> GetClipboardText() => _wasm.GetClipboardText.run().asMemoryPointer();

  @override
  ImageD GetClipboardImage() => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.GetClipboardImage,
    (p) => _wasm.GetClipboardImage.run([
      p.toJS,
    ]),
  );

  @override
  void EnableEventWaiting() => _wasm.EnableEventWaiting.run();

  @override
  void DisableEventWaiting() => _wasm.DisableEventWaiting.run();

  @override
  void ShowCursor() => _wasm.ShowCursor.run();

  @override
  void HideCursor() => _wasm.HideCursor.run();

  @override
  bool IsCursorHidden() => _wasm.IsCursorHidden.run().toBool();

  @override
  void EnableCursor() => _wasm.EnableCursor.run();

  @override
  void DisableCursor() => _wasm.DisableCursor.run();

  @override
  bool IsCursorOnScreen() => _wasm.IsCursorOnScreen.run().toBool();

  @override
  void ClearBackground(
    ColorD color,
  ) => _wasm.ClearBackground.run([
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void BeginDrawing() => _wasm.BeginDrawing.run();

  @override
  void EndDrawing() => _wasm.EndDrawing.run();

  @override
  void BeginMode2D(
    Camera2DD camera,
  ) => _wasm.BeginMode2D.run([
    rl.Temp.Camera2D$.Ref1(camera).toJS,
  ]);

  @override
  void EndMode2D() => _wasm.EndMode2D.run();

  @override
  void BeginMode3D(
    Camera3DD camera,
  ) => _wasm.BeginMode3D.run([
    rl.Temp.Camera3D$.Ref1(camera).toJS,
  ]);

  @override
  void EndMode3D() => _wasm.EndMode3D.run();

  @override
  void BeginTextureMode(
    RenderTextureD target,
  ) => _wasm.BeginTextureMode.run([
    rl.Temp.RenderTexture$.Ref1(target).toJS,
  ]);

  @override
  void EndTextureMode() => _wasm.EndTextureMode.run();

  @override
  void BeginShaderMode(
    ShaderD shader,
  ) => _wasm.BeginShaderMode.run([
    rl.Temp.Shader$.Ref1(shader).toJS,
  ]);

  @override
  void EndShaderMode() => _wasm.EndShaderMode.run();

  @override
  void BeginBlendMode(
    int mode,
  ) => _wasm.BeginBlendMode.run([
    mode.toJS,
  ]);

  @override
  void EndBlendMode() => _wasm.EndBlendMode.run();

  @override
  void BeginScissorMode(
    int x,
    int y,
    int width,
    int height,
  ) => _wasm.BeginScissorMode.run([
    x.toJS,
    y.toJS,
    width.toJS,
    height.toJS,
  ]);

  @override
  void EndScissorMode() => _wasm.EndScissorMode.run();

  @override
  void BeginVrStereoMode(
    VrStereoConfigD config,
  ) => _wasm.BeginVrStereoMode.run([
    rl.Temp.VrStereoConfig$.Ref1(config).toJS,
  ]);

  @override
  void EndVrStereoMode() => _wasm.EndVrStereoMode.run();

  @override
  VrStereoConfigD LoadVrStereoConfig(
    VrDeviceInfoD device,
  ) => rl.Temp.VrStereoConfig$.RefCapture(
    RaylibCaptureIds.LoadVrStereoConfig,
    (p) => _wasm.LoadVrStereoConfig.run([
      p.toJS,
      rl.Temp.VrDeviceInfo$.Ref1(device).toJS,
    ]),
  );

  @override
  void UnloadVrStereoConfig(
    VrStereoConfigD config,
  ) => disposeStructWithOpFreed(config, (ptr) {
    _wasm.UnloadVrStereoConfig.run([
      ptr.toJS,
    ]);
  });

  @override
  ShaderD LoadShader(
    MemoryPointer<RChar> vsFileName,
    MemoryPointer<RChar> fsFileName,
  ) => rl.Temp.Shader$.RefCapture(
    RaylibCaptureIds.LoadShader,
    (p) => _wasm.LoadShader.run([
      p.toJS,
      vsFileName.toJS,
      fsFileName.toJS,
    ]),
  );

  @override
  ShaderD LoadShaderFromMemory(
    MemoryPointer<RChar> vsCode,
    MemoryPointer<RChar> fsCode,
  ) => rl.Temp.Shader$.RefCapture(
    RaylibCaptureIds.LoadShaderFromMemory,
    (p) => _wasm.LoadShaderFromMemory.run([
      p.toJS,
      vsCode.toJS,
      fsCode.toJS,
    ]),
  );

  @override
  bool IsShaderValid(
    ShaderD shader,
  ) => _wasm.IsShaderValid.run([
    rl.Temp.Shader$.Ref1(shader).toJS,
  ]).toBool();

  @override
  int GetShaderLocation(
    ShaderD shader,
    MemoryPointer<RChar> uniformName,
  ) => _wasm.GetShaderLocation.run([
    rl.Temp.Shader$.Ref1(shader).toJS,
    uniformName.toJS,
  ]).toInt();

  @override
  int GetShaderLocationAttrib(
    ShaderD shader,
    MemoryPointer<RChar> attribName,
  ) => _wasm.GetShaderLocationAttrib.run([
    rl.Temp.Shader$.Ref1(shader).toJS,
    attribName.toJS,
  ]).toInt();

  @override
  void SetShaderValueV(
    ShaderD shader,
    int locIndex,
    MemoryPointer<RVoid> value,
    int uniformType,
    int count,
  ) => _wasm.SetShaderValueV.run([
    rl.Temp.Shader$.Ref1(shader).toJS,
    locIndex.toJS,
    value.toJS,
    uniformType.toJS,
    count.toJS,
  ]);

  @override
  void SetShaderValueMatrix(
    ShaderD shader,
    int locIndex,
    MatrixD mat,
  ) => _wasm.SetShaderValueMatrix.run([
    rl.Temp.Shader$.Ref1(shader).toJS,
    locIndex.toJS,
    rl.Temp.Matrix$.Ref1(mat).toJS,
  ]);

  @override
  void SetShaderValueTexture(
    ShaderD shader,
    int locIndex,
    TextureD texture,
  ) => _wasm.SetShaderValueTexture.run([
    rl.Temp.Shader$.Ref1(shader).toJS,
    locIndex.toJS,
    rl.Temp.Texture$.Ref1(texture).toJS,
  ]);

  @override
  void UnloadShader(
    ShaderD shader,
  ) => disposeStructWithOpFreed(shader, (ptr) {
    _wasm.UnloadShader.run([
      ptr.toJS,
    ]);
  });

  @override
  RayD GetScreenToWorldRay(
    Vector2D position,
    Camera3DD camera,
  ) => rl.Temp.Ray$.Extract1(
    (p) => _wasm.GetScreenToWorldRay.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(position).toJS,
      rl.Temp.Camera3D$.Ref1(camera).toJS,
    ]),
  );

  @override
  RayD GetScreenToWorldRayEx(
    Vector2D position,
    Camera3DD camera,
    int width,
    int height,
  ) => rl.Temp.Ray$.Extract1(
    (p) => _wasm.GetScreenToWorldRay.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(position).toJS,
      rl.Temp.Camera3D$.Ref1(camera).toJS,
      width.toJS,
      height.toJS,
    ]),
  );

  @override
  Vector2D GetWorldToScreen(
    Vector3D position,
    Camera3DD camera,
  ) => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.GetWorldToScreen.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(position).toJS,
      rl.Temp.Camera3D$.Ref1(camera).toJS,
    ]),
  );

  @override
  Vector2D GetWorldToScreenEx(
    Vector3D position,
    Camera3DD camera,
    int width,
    int height,
  ) => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.GetWorldToScreenEx.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(position).toJS,
      rl.Temp.Camera3D$.Ref1(camera).toJS,
      width.toJS,
      height.toJS,
    ]),
  );

  @override
  Vector2D GetWorldToScreen2D(
    Vector2D position,
    Camera2DD camera,
  ) => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.GetWorldToScreen2D.run([
      p.toJS,
      rl.Temp.Vector2$.Ref2(position).toJS,
      rl.Temp.Camera2D$.Ref1(camera).toJS,
    ]),
  );

  @override
  Vector2D GetScreenToWorld2D(
    Vector2D position,
    Camera2DD camera,
  ) => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.GetScreenToWorld2D.run([
      p.toJS,
      rl.Temp.Vector2$.Ref2(position).toJS,
      rl.Temp.Camera2D$.Ref1(camera).toJS,
    ]),
  );

  @override
  MatrixD GetCameraMatrix(
    Camera3DD camera,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.GetCameraMatrix.run([
      p.toJS,
      rl.Temp.Camera3D$.Ref1(camera).toJS,
    ]),
  );

  @override
  MatrixD GetCameraMatrix2D(
    Camera2DD camera,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.GetCameraMatrix2D.run([
      p.toJS,
      rl.Temp.Camera2D$.Ref1(camera).toJS,
    ]),
  );

  @override
  void SetTargetFPS(
    int fps,
  ) => _wasm.SetTargetFPS.run([
    fps.toJS,
  ]);

  @override
  double GetFrameTime() => _wasm.GetFrameTime.run().toDouble();

  @override
  double GetTime() => _wasm.GetTime.run().toDouble();

  @override
  int GetFPS() => _wasm.GetFPS.run().toInt();

  @override
  void SwapScreenBuffer() => _wasm.SwapScreenBuffer.run();

  @override
  void PollInputEvents() => _wasm.PollInputEvents.run();

  @override
  void WaitTime(
    double seconds,
  ) => _wasm.WaitTime.run([
    seconds.toJS,
  ]);

  @override
  void SetRandomSeed(
    int seed,
  ) => _wasm.SetRandomSeed.run([
    seed.toJS,
  ]);

  @override
  int GetRandomValue(
    int min,
    int max,
  ) => _wasm.GetRandomValue.run([
    min.toJS,
    max.toJS,
  ]).toInt();

  @override
  WasmMemoryPointer<RInt> LoadRandomSequence(
    int count,
    int min,
    int max,
  ) => _wasm.LoadRandomSequence.run([
    count.toJS,
    min.toJS,
    max.toJS,
  ]).asMemoryPointer();

  @override
  void UnloadRandomSequence(
    MemoryPointer<RInt> sequence,
  ) => _wasm.UnloadRandomSequence.run([
    sequence.toJS,
  ]);

  @override
  void TakeScreenshot(
    MemoryPointer<RChar> fileName,
  ) => _wasm.TakeScreenshot.run([
    fileName.toJS,
  ]);

  @override
  void SetConfigFlags(
    int flags,
  ) => _wasm.SetConfigFlags.run([
    flags.toJS,
  ]);

  @override
  void OpenURL(
    MemoryPointer<RChar> url,
  ) => _wasm.OpenURL.run([
    url.toJS,
  ]);

  @override
  void TraceLog(
    int logLevel,
    MemoryPointer<RChar> text,
    // NOTE: missing va_list argument
  ) => _wasm.TraceLog.run([
    logLevel.toJS,
    text.toJS,
  ]);

  @override
  void SetTraceLogLevel(
    int logLevel,
  ) => _wasm.SetTraceLogLevel.run([
    logLevel.toJS,
  ]);

  @override
  void SetTraceLogCallback(
    MemoryPointer<RFunction<TraceLogCallbackBase>> callback,
  ) => _wasm.SetTraceLogCallback.run([
    callback.toJS,
  ]);

  @override
  void SetLoadFileDataCallback(
    MemoryPointer<RFunction<LoadFileDataCallbackBase>> callback,
  ) => _wasm.SetLoadFileDataCallback.run([
    callback.toJS,
  ]);

  @override
  void SetSaveFileDataCallback(
    MemoryPointer<RFunction<SaveFileDataCallbackBase>> callback,
  ) => _wasm.SetSaveFileDataCallback.run([
    callback.toJS,
  ]);

  @override
  void SetLoadFileTextCallback(
    MemoryPointer<RFunction<LoadFileTextCallbackBase>> callback,
  ) => _wasm.SetLoadFileTextCallback.run([
    callback.toJS,
  ]);

  @override
  void SetSaveFileTextCallback(
    MemoryPointer<RFunction<SaveFileTextCallbackBase>> callback,
  ) => _wasm.SetSaveFileTextCallback.run([
    callback.toJS,
  ]);

  @override
  WasmMemoryPointer<RUnsignedChar> LoadFileData(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RInt> dataSize,
  ) => _wasm.LoadFileData.run([
    fileName.toJS,
    dataSize.toJS,
  ]).asMemoryPointer();

  @override
  void UnloadFileData(
    MemoryPointer<RUnsignedChar> data,
  ) => _wasm.UnloadFileData.run([
    data.toJS,
  ]);

  @override
  bool SaveFileData(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RVoid> data,
    int dataSize,
  ) => _wasm.SaveFileData.run([
    fileName.toJS,
    data.toJS,
    dataSize.toJS,
  ]).toBool();

  @override
  bool ExportDataAsCode(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportDataAsCode.run([
    data.toJS,
    dataSize.toJS,
    fileName.toJS,
  ]).toBool();

  @override
  WasmMemoryPointer<RChar> LoadFileText(
    MemoryPointer<RChar> fileName,
  ) => _wasm.LoadFileText.run([
    fileName.toJS,
  ]).asMemoryPointer();

  @override
  void UnloadFileText(
    MemoryPointer<RChar> text,
  ) => _wasm.UnloadFileText.run([
    text.toJS,
  ]);

  @override
  bool SaveFileText(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RChar> text,
  ) => _wasm.SaveFileText.run([
    fileName.toJS,
    text.toJS,
  ]).toBool();

  @override
  int FileRename(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RChar> fileRename,
  ) => _wasm.FileRename.run([
    fileName.toJS,
    fileRename.toJS,
  ]).toInt();

  @override
  int FileRemove(
    MemoryPointer<RChar> fileName,
  ) => _wasm.FileRemove.run([
    fileName.toJS,
  ]).toInt();

  @override
  int FileCopy(
    MemoryPointer<RChar> srcPath,
    MemoryPointer<RChar> dstPath,
  ) => _wasm.FileCopy.run([
    srcPath.toJS,
    dstPath.toJS,
  ]).toInt();

  @override
  int FileMove(
    MemoryPointer<RChar> srcPath,
    MemoryPointer<RChar> dstPath,
  ) => _wasm.FileMove.run([
    srcPath.toJS,
    dstPath.toJS,
  ]).toInt();

  @override
  int FileTextReplace(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RChar> search,
    MemoryPointer<RChar> replacement,
  ) => _wasm.FileTextReplace.run([
    fileName.toJS,
    search.toJS,
    replacement.toJS,
  ]).toInt();

  @override
  int FileTextFindIndex(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RChar> search,
  ) => _wasm.FileTextFindIndex.run([
    fileName.toJS,
    search.toJS,
  ]).toInt();

  @override
  bool FileExists(
    MemoryPointer<RChar> fileName,
  ) => _wasm.FileExists.run([
    fileName.toJS,
  ]).toBool();

  @override
  bool DirectoryExists(
    MemoryPointer<RChar> dirPath,
  ) => _wasm.DirectoryExists.run([
    dirPath.toJS,
  ]).toBool();

  @override
  bool IsFileExtension(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RChar> ext,
  ) => _wasm.IsFileExtension.run([
    fileName.toJS,
    ext.toJS,
  ]).toBool();

  @override
  int GetFileLength(
    MemoryPointer<RChar> fileName,
  ) => _wasm.GetFileLength.run([
    fileName.toJS,
  ]).toInt();

  @override
  WasmMemoryPointer<RChar> GetFileExtension(
    MemoryPointer<RChar> fileName,
  ) => _wasm.GetFileExtension.run([
    fileName.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> GetFileName(
    MemoryPointer<RChar> filePath,
  ) => _wasm.GetFileName.run([
    filePath.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> GetFileNameWithoutExt(
    MemoryPointer<RChar> filePath,
  ) => _wasm.GetFileNameWithoutExt.run([
    filePath.toJS,
  ]).asMemoryPointer();

  @override
  int GetDirectoryFileCount(
    MemoryPointer<RChar> dirPath,
  ) => _wasm.GetDirectoryFileCount.run([
    dirPath.toJS,
  ]).toInt();

  @override
  int GetDirectoryFileCountEx(
    MemoryPointer<RChar> basePath,
    MemoryPointer<RChar> filter,
    bool scanSubdirs,
  ) => _wasm.GetDirectoryFileCountEx.run([
    basePath.toJS,
    filter.toJS,
    scanSubdirs.toJS,
  ]).toInt();

  @override
  WasmMemoryPointer<RChar> GetDirectoryPath(
    MemoryPointer<RChar> filePath,
  ) => _wasm.GetDirectoryPath.run([
    filePath.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> GetPrevDirectoryPath(
    MemoryPointer<RChar> dirPath,
  ) => _wasm.GetPrevDirectoryPath.run([
    dirPath.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> GetWorkingDirectory() => _wasm.GetWorkingDirectory.run().asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> GetApplicationDirectory() => _wasm.GetApplicationDirectory.run().asMemoryPointer();

  @override
  int MakeDirectory(
    MemoryPointer<RChar> dirPath,
  ) => _wasm.MakeDirectory.run([
    dirPath.toJS,
  ]).toInt();

  @override
  bool ChangeDirectory(
    MemoryPointer<RChar> dir,
  ) => _wasm.ChangeDirectory.run([
    dir.toJS,
  ]).toBool();

  @override
  bool IsPathFile(
    MemoryPointer<RChar> path,
  ) => _wasm.IsPathFile.run([
    path.toJS,
  ]).toBool();

  @override
  bool IsFileNameValid(
    MemoryPointer<RChar> fileName,
  ) => _wasm.IsFileNameValid.run([
    fileName.toJS,
  ]).toBool();

  @override
  FilePathListD LoadDirectoryFiles(
    MemoryPointer<RChar> dirPath,
  ) => rl.Temp.FilePathList$.RefCapture(
    RaylibCaptureIds.LoadDirectoryFiles,
    (p) => _wasm.LoadDirectoryFiles.run([
      p.toJS,
      dirPath.toJS,
    ]),
  );

  @override
  FilePathListD LoadDirectoryFilesEx(
    MemoryPointer<RChar> basePath,
    MemoryPointer<RChar> filter,
    bool scanSubdirs,
  ) => rl.Temp.FilePathList$.RefCapture(
    RaylibCaptureIds.LoadDirectoryFilesEx,
    (p) => _wasm.LoadDirectoryFilesEx.run([
      p.toJS,
      basePath.toJS,
      filter.toJS,
      scanSubdirs.toJS,
    ]),
  );

  @override
  void UnloadDirectoryFiles(
    FilePathListD files,
  ) => disposeStructWithOpFreed(files, (ptr) {
    _wasm.UnloadDirectoryFiles.run([
      ptr.toJS,
    ]);
  });

  @override
  bool IsFileDropped() => _wasm.IsFileDropped.run().toBool();

  @override
  FilePathListD LoadDroppedFiles() => rl.Temp.FilePathList$.RefCapture(
    RaylibCaptureIds.LoadDroppedFiles,
    (p) => _wasm.LoadDroppedFiles.run([
      p.toJS,
    ]),
  );

  @override
  void UnloadDroppedFiles(
    FilePathListD files,
  ) => disposeStructWithOpFreed(files, (ptr) {
    _wasm.UnloadDroppedFiles.run([
      ptr.toJS,
    ]);
  });

  @override
  int GetFileModTime(
    MemoryPointer<RChar> fileName,
  ) => _wasm.GetFileModTime.run([
    fileName.toJS,
  ]).toInt();

  @override
  WasmMemoryPointer<RUnsignedChar> CompressData(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
    MemoryPointer<RInt> compDataSize,
  ) => _wasm.CompressData.run([
    data.toJS,
    dataSize.toJS,
    compDataSize.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RUnsignedChar> DecompressData(
    MemoryPointer<RUnsignedChar> compData,
    int compDataSize,
    MemoryPointer<RInt> dataSize,
  ) => _wasm.DecompressData.run([
    compData.toJS,
    compDataSize.toJS,
    dataSize.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> EncodeDataBase64(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
    MemoryPointer<RInt> outputSize,
  ) => _wasm.EncodeDataBase64.run([
    data.toJS,
    dataSize.toJS,
    outputSize.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RUnsignedChar> DecodeDataBase64(
    MemoryPointer<RChar> data,
    MemoryPointer<RInt> outputSize,
  ) => _wasm.DecodeDataBase64.run([
    data.toJS,
    outputSize.toJS,
  ]).asMemoryPointer();

  @override
  int ComputeCRC32(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
  ) => _wasm.ComputeCRC32.run([
    data.toJS,
    dataSize.toJS,
  ]).toInt();

  @override
  WasmMemoryPointer<RUnsignedInt> ComputeMD5(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
  ) => _wasm.ComputeMD5.run([
    data.toJS,
    dataSize.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RUnsignedInt> ComputeSHA1(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
  ) => _wasm.ComputeSHA1.run([
    data.toJS,
    dataSize.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RUnsignedInt> ComputeSHA256(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
  ) => _wasm.ComputeSHA256.run([
    data.toJS,
    dataSize.toJS,
  ]).asMemoryPointer();

  @override
  AutomationEventListD LoadAutomationEventList(
    MemoryPointer<RChar> fileName,
  ) => rl.Temp.AutomationEventList$.RefCapture(
    RaylibCaptureIds.LoadAutomationEventList,
    (p) => _wasm.LoadAutomationEventList.run([
      p.toJS,
      fileName.toJS,
    ]),
  );

  @override
  void UnloadAutomationEventList(
    AutomationEventListD list,
  ) => disposeStructWithOpFreed(list, (ptr) {
    _wasm.UnloadAutomationEventList.run([
      ptr.toJS,
    ]);
  });

  @override
  bool ExportAutomationEventList(
    AutomationEventListD list,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportAutomationEventList.run([
    rl.Temp.AutomationEventList$.Ref1(list).toJS,
    fileName.toJS,
  ]).toBool();

  @override
  void SetAutomationEventList(
    StructPointer<AutomationEventListD> list,
  ) => _wasm.SetAutomationEventList.run([
    list.toJS,
  ]);

  @override
  void SetAutomationEventBaseFrame(
    int frame,
  ) => _wasm.SetAutomationEventBaseFrame.run([
    frame.toJS,
  ]);

  @override
  void StartAutomationEventRecording() => _wasm.StartAutomationEventRecording.run();

  @override
  void StopAutomationEventRecording() => _wasm.StopAutomationEventRecording.run();

  @override
  void PlayAutomationEvent(
    AutomationEventD event,
  ) => _wasm.PlayAutomationEvent.run([
    rl.Temp.AutomationEvent$.Ref1(event).toJS,
  ]);

  @override
  bool IsKeyPressed(
    int key,
  ) => _wasm.IsKeyPressed.run([
    key.toJS,
  ]).toBool();

  @override
  bool IsKeyPressedRepeat(
    int key,
  ) => _wasm.IsKeyPressedRepeat.run([
    key.toJS,
  ]).toBool();

  @override
  bool IsKeyDown(
    int key,
  ) => _wasm.IsKeyDown.run([
    key.toJS,
  ]).toBool();

  @override
  bool IsKeyReleased(
    int key,
  ) => _wasm.IsKeyReleased.run([
    key.toJS,
  ]).toBool();

  @override
  bool IsKeyUp(
    int key,
  ) => _wasm.IsKeyUp.run([
    key.toJS,
  ]).toBool();

  @override
  WasmMemoryPointer<RChar> GetKeyName(
    int key,
  ) => _wasm.GetKeyName.run([
    key.toJS,
  ]).asMemoryPointer();

  @override
  int GetKeyPressed() => _wasm.GetKeyPressed.run().toInt();

  @override
  int GetCharPressed() => _wasm.GetCharPressed.run().toInt();

  @override
  void SetExitKey(
    int key,
  ) => _wasm.SetExitKey.run([
    key.toJS,
  ]);

  @override
  bool IsGamepadAvailable(
    int gamepad,
  ) => _wasm.IsGamepadAvailable.run([
    gamepad.toJS,
  ]).toBool();

  @override
  WasmMemoryPointer<RChar> GetGamepadName(
    int gamepad,
  ) => _wasm.GetGamepadName.run([
    gamepad.toJS,
  ]).asMemoryPointer();

  @override
  bool IsGamepadButtonPressed(
    int gamepad,
    int button,
  ) => _wasm.IsGamepadButtonPressed.run([
    gamepad.toJS,
    button.toJS,
  ]).toBool();

  @override
  bool IsGamepadButtonDown(
    int gamepad,
    int button,
  ) => _wasm.IsGamepadButtonDown.run([
    gamepad.toJS,
    button.toJS,
  ]).toBool();

  @override
  bool IsGamepadButtonReleased(
    int gamepad,
    int button,
  ) => _wasm.IsGamepadButtonReleased.run([
    gamepad.toJS,
    button.toJS,
  ]).toBool();

  @override
  bool IsGamepadButtonUp(
    int gamepad,
    int button,
  ) => _wasm.IsGamepadButtonUp.run([
    gamepad.toJS,
    button.toJS,
  ]).toBool();

  @override
  int GetGamepadButtonPressed() => _wasm.GetGamepadButtonPressed.run().toInt();

  @override
  int GetGamepadAxisCount(
    int gamepad,
  ) => _wasm.GetGamepadAxisCount.run([
    gamepad.toJS,
  ]).toInt();

  @override
  double GetGamepadAxisMovement(
    int gamepad,
    int axis,
  ) => _wasm.GetGamepadAxisMovement.run([
    gamepad.toJS,
    axis.toJS,
  ]).toDouble();

  @override
  int SetGamepadMappings(
    MemoryPointer<RChar> mappings,
  ) => _wasm.SetGamepadMappings.run([
    mappings.toJS,
  ]).toInt();

  @override
  void SetGamepadVibration(
    int gamepad,
    double leftMotor,
    double rightMotor,
    double duration,
  ) => _wasm.SetGamepadVibration.run([
    gamepad.toJS,
    leftMotor.toJS,
    rightMotor.toJS,
    duration.toJS,
  ]);

  @override
  bool IsMouseButtonPressed(
    int button,
  ) => _wasm.IsMouseButtonPressed.run([
    button.toJS,
  ]).toBool();

  @override
  bool IsMouseButtonDown(
    int button,
  ) => _wasm.IsMouseButtonDown.run([
    button.toJS,
  ]).toBool();

  @override
  bool IsMouseButtonReleased(
    int button,
  ) => _wasm.IsMouseButtonReleased.run([
    button.toJS,
  ]).toBool();

  @override
  bool IsMouseButtonUp(
    int button,
  ) => _wasm.IsMouseButtonUp.run([
    button.toJS,
  ]).toBool();

  @override
  int GetMouseX() => _wasm.GetMouseX.run().toInt();

  @override
  int GetMouseY() => _wasm.GetMouseY.run().toInt();

  @override
  Vector2D GetMousePosition() => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.GetMousePosition.run([
      p.toJS,
    ]),
  );

  @override
  Vector2D GetMouseDelta() => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.GetMouseDelta.run([
      p.toJS,
    ]),
  );

  @override
  void SetMousePosition(
    int x,
    int y,
  ) => _wasm.SetMousePosition.run([
    x.toJS,
    y.toJS,
  ]);

  @override
  void SetMouseOffset(
    int offsetX,
    int offsetY,
  ) => _wasm.SetMouseOffset.run([
    offsetX.toJS,
    offsetY.toJS,
  ]);

  @override
  void SetMouseScale(
    double scaleX,
    double scaleY,
  ) => _wasm.SetMouseScale.run([
    scaleX.toJS,
    scaleY.toJS,
  ]);

  @override
  double GetMouseWheelMove() => _wasm.GetMouseWheelMove.run().toDouble();

  @override
  Vector2D GetMouseWheelMoveV() => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.GetMouseWheelMoveV.run([
      p.toJS,
    ]),
  );

  @override
  void SetMouseCursor(
    int cursor,
  ) => _wasm.SetMouseCursor.run([
    cursor.toJS,
  ]);

  @override
  int GetTouchX() => _wasm.GetTouchX.run().toInt();

  @override
  int GetTouchY() => _wasm.GetTouchY.run().toInt();

  @override
  Vector2D GetTouchPosition(
    int index,
  ) => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.GetTouchPosition.run([
      p.toJS,
      index.toJS,
    ]),
  );

  @override
  int GetTouchPointId(
    int index,
  ) => _wasm.GetTouchPointId.run([
    index.toJS,
  ]).toInt();

  @override
  int GetTouchPointCount() => _wasm.GetTouchPointCount.run().toInt();

  @override
  void SetGesturesEnabled(
    int flags,
  ) => _wasm.SetGesturesEnabled.run([
    flags.toJS,
  ]);

  @override
  bool IsGestureDetected(
    int gesture,
  ) => _wasm.IsGestureDetected.run([
    gesture.toJS,
  ]).toBool();

  @override
  int GetGestureDetected() => _wasm.GetGestureDetected.run().toInt();

  @override
  double GetGestureHoldDuration() => _wasm.GetGestureHoldDuration.run().toDouble();

  @override
  Vector2D GetGestureDragVector() => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.GetGestureDragVector.run([
      p.toJS,
    ]),
  );

  @override
  double GetGestureDragAngle() => _wasm.GetGestureDragAngle.run().toDouble();

  @override
  Vector2D GetGesturePinchVector() => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.GetGesturePinchVector.run([
      p.toJS,
    ]),
  );

  @override
  double GetGesturePinchAngle() => _wasm.GetGesturePinchAngle.run().toDouble();

  @override
  void ProcessGestureEvent(
    GestureEventD event,
  ) => _wasm.ProcessGestureEvent.run([
    rl.Temp.GestureEvent$.Ref1(event).toJS,
  ]);

  @override
  void UpdateGestures() => _wasm.UpdateGestures.run();

  @override
  void UpdateCamera(
    StructPointer<Camera3DD> camera,
    int mode,
  ) => _wasm.UpdateCamera.run([
    camera.toJS,
    mode.toJS,
  ]);

  @override
  void UpdateCameraPro(
    StructPointer<Camera3DD> camera,
    Vector3D movement,
    Vector3D rotation,
    double zoom,
  ) => _wasm.UpdateCameraPro.run([
    camera.toJS,
    rl.Temp.Vector3$.Ref1(movement).toJS,
    rl.Temp.Vector3$.Ref2(rotation).toJS,
    zoom.toJS,
  ]);

  @override
  void SetShapesTexture(
    TextureD texture,
    RectangleD source,
  ) => _wasm.SetShapesTexture.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
    rl.Temp.Rectangle$.Ref1(source).toJS,
  ]);

  @override
  TextureD GetShapesTexture() => rl.Temp.Texture$.Extract1(
    (p) => _wasm.GetShapesTexture.run([
      p.toJS,
    ]),
  );

  @override
  RectangleD GetShapesTextureRectangle() => rl.Temp.Rectangle$.Extract1(
    (p) => _wasm.GetShapesTextureRectangle.run([
      p.toJS,
    ]),
  );

  @override
  void DrawPixel(
    int posX,
    int posY,
    ColorD color,
  ) => _wasm.DrawPixel.run([
    posX.toJS,
    posY.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawPixelV(
    Vector2D position,
    ColorD color,
  ) => _wasm.DrawPixelV.run([
    rl.Temp.Vector2$.Ref1(position).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawLine(
    int startPosX,
    int startPosY,
    int endPosX,
    int endPosY,
    ColorD color,
  ) => _wasm.DrawLine.run([
    startPosX.toJS,
    startPosY.toJS,
    endPosX.toJS,
    endPosY.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawLineV(
    Vector2D startPos,
    Vector2D endPos,
    ColorD color,
  ) => _wasm.DrawLineV.run([
    rl.Temp.Vector2$.Ref1(startPos).toJS,
    rl.Temp.Vector2$.Ref2(endPos).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawLineEx(
    Vector2D startPos,
    Vector2D endPos,
    double thick,
    ColorD color,
  ) => _wasm.DrawLineEx.run([
    rl.Temp.Vector2$.Ref1(startPos).toJS,
    rl.Temp.Vector2$.Ref2(endPos).toJS,
    thick.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawLineStrip(
    StructPointer<Vector2D> points,
    int pointCount,
    ColorD color,
  ) => _wasm.DrawLineStrip.run([
    points.toJS,
    pointCount.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawLineBezier(
    Vector2D startPos,
    Vector2D endPos,
    double thick,
    ColorD color,
  ) => _wasm.DrawLineBezier.run([
    rl.Temp.Vector2$.Ref1(startPos).toJS,
    rl.Temp.Vector2$.Ref2(endPos).toJS,
    thick.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawLineDashed(
    Vector2D startPos,
    Vector2D endPos,
    int dashSize,
    int spaceSize,
    ColorD color,
  ) => _wasm.DrawLineDashed.run([
    rl.Temp.Vector2$.Ref1(startPos).toJS,
    rl.Temp.Vector2$.Ref2(endPos).toJS,
    dashSize.toJS,
    spaceSize.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawCircle(
    int centerX,
    int centerY,
    double radius,
    ColorD color,
  ) => _wasm.DrawCircle.run([
    centerX.toJS,
    centerY.toJS,
    radius.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawCircleSector(
    Vector2D center,
    double radius,
    double startAngle,
    double endAngle,
    int segments,
    ColorD color,
  ) => _wasm.DrawCircleSector.run([
    rl.Temp.Vector2$.Ref1(center).toJS,
    radius.toJS,
    startAngle.toJS,
    endAngle.toJS,
    segments.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawCircleSectorLines(
    Vector2D center,
    double radius,
    double startAngle,
    double endAngle,
    int segments,
    ColorD color,
  ) => _wasm.DrawCircleSectorLines.run([
    rl.Temp.Vector2$.Ref1(center).toJS,
    radius.toJS,
    startAngle.toJS,
    endAngle.toJS,
    segments.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawCircleGradient(
    Vector2D center,
    double radius,
    ColorD inner,
    ColorD outer,
  ) => _wasm.DrawCircleGradient.run([
    rl.Temp.Vector2$.Ref1(center).toJS,
    radius.toJS,
    rl.Temp.Color$.Ref1(inner).toJS,
    rl.Temp.Color$.Ref2(outer).toJS,
  ]);

  @override
  void DrawCircleV(
    Vector2D center,
    double radius,
    ColorD color,
  ) => _wasm.DrawCircleV.run([
    rl.Temp.Vector2$.Ref1(center).toJS,
    radius.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawCircleLines(
    int centerX,
    int centerY,
    double radius,
    ColorD color,
  ) => _wasm.DrawCircleLines.run([
    centerX.toJS,
    centerY.toJS,
    radius.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawCircleLinesV(
    Vector2D center,
    double radius,
    ColorD color,
  ) => _wasm.DrawCircleLinesV.run([
    rl.Temp.Vector2$.Ref1(center).toJS,
    radius.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawEllipse(
    int centerX,
    int centerY,
    double radiusH,
    double radiusV,
    ColorD color,
  ) => _wasm.DrawEllipse.run([
    centerX.toJS,
    centerY.toJS,
    radiusH.toJS,
    radiusV.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawEllipseV(
    Vector2D center,
    double radiusH,
    double radiusV,
    ColorD color,
  ) => _wasm.DrawEllipseV.run([
    rl.Temp.Vector2$.Ref1(center).toJS,
    radiusH.toJS,
    radiusV.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawEllipseLines(
    int centerX,
    int centerY,
    double radiusH,
    double radiusV,
    ColorD color,
  ) => _wasm.DrawEllipseLines.run([
    centerX.toJS,
    centerY.toJS,
    radiusH.toJS,
    radiusV.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawEllipseLinesV(
    Vector2D center,
    double radiusH,
    double radiusV,
    ColorD color,
  ) => _wasm.DrawEllipseLinesV.run([
    rl.Temp.Vector2$.Ref1(center).toJS,
    radiusH.toJS,
    radiusV.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawRing(
    Vector2D center,
    double innerRadius,
    double outerRadius,
    double startAngle,
    double endAngle,
    int segments,
    ColorD color,
  ) => _wasm.DrawRing.run([
    rl.Temp.Vector2$.Ref1(center).toJS,
    innerRadius.toJS,
    outerRadius.toJS,
    startAngle.toJS,
    endAngle.toJS,
    segments.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawRingLines(
    Vector2D center,
    double innerRadius,
    double outerRadius,
    double startAngle,
    double endAngle,
    int segments,
    ColorD color,
  ) => _wasm.DrawRingLines.run([
    rl.Temp.Vector2$.Ref1(center).toJS,
    innerRadius.toJS,
    outerRadius.toJS,
    startAngle.toJS,
    endAngle.toJS,
    segments.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawRectangle(
    int posX,
    int posY,
    int width,
    int height,
    ColorD color,
  ) => _wasm.DrawRectangle.run([
    posX.toJS,
    posY.toJS,
    width.toJS,
    height.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawRectangleV(
    Vector2D position,
    Vector2D size,
    ColorD color,
  ) => _wasm.DrawRectangleV.run([
    rl.Temp.Vector2$.Ref1(position).toJS,
    rl.Temp.Vector2$.Ref2(size).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawRectangleRec(
    RectangleD rec,
    ColorD color,
  ) => _wasm.DrawRectangleRec.run([
    rl.Temp.Rectangle$.Ref1(rec).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawRectanglePro(
    RectangleD rec,
    Vector2D origin,
    double rotation,
    ColorD color,
  ) => _wasm.DrawRectanglePro.run([
    rl.Temp.Rectangle$.Ref1(rec).toJS,
    rl.Temp.Vector2$.Ref1(origin).toJS,
    rotation.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawRectangleGradientV(
    int posX,
    int posY,
    int width,
    int height,
    ColorD top,
    ColorD bottom,
  ) => _wasm.DrawRectangleGradientV.run([
    posX.toJS,
    posY.toJS,
    width.toJS,
    height.toJS,
    rl.Temp.Color$.Ref1(top).toJS,
    rl.Temp.Color$.Ref2(bottom).toJS,
  ]);

  @override
  void DrawRectangleGradientH(
    int posX,
    int posY,
    int width,
    int height,
    ColorD left,
    ColorD right,
  ) => _wasm.DrawRectangleGradientH.run([
    posX.toJS,
    posY.toJS,
    width.toJS,
    height.toJS,
    rl.Temp.Color$.Ref1(left).toJS,
    rl.Temp.Color$.Ref2(right).toJS,
  ]);

  @override
  void DrawRectangleGradientEx(
    RectangleD rec,
    ColorD topLeft,
    ColorD bottomLeft,
    ColorD topRight,
    ColorD bottomRight,
  ) => _wasm.DrawRectangleGradientEx.run([
    rl.Temp.Rectangle$.Ref1(rec).toJS,
    rl.Temp.Color$.Ref1(topLeft).toJS,
    rl.Temp.Color$.Ref2(bottomLeft).toJS,
    rl.Temp.Color$.Ref3(topRight).toJS,
    rl.Temp.Color$.Ref4(bottomRight).toJS,
  ]);

  @override
  void DrawRectangleLines(
    int posX,
    int posY,
    int width,
    int height,
    ColorD color,
  ) => _wasm.DrawRectangleLines.run([
    posX.toJS,
    posY.toJS,
    width.toJS,
    height.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawRectangleLinesEx(
    RectangleD rec,
    double lineThick,
    ColorD color,
  ) => _wasm.DrawRectangleLinesEx.run([
    rl.Temp.Rectangle$.Ref1(rec).toJS,
    lineThick.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawRectangleRounded(
    RectangleD rec,
    double roundness,
    int segments,
    ColorD color,
  ) => _wasm.DrawRectangleRounded.run([
    rl.Temp.Rectangle$.Ref1(rec).toJS,
    roundness.toJS,
    segments.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawRectangleRoundedLines(
    RectangleD rec,
    double roundness,
    int segments,
    ColorD color,
  ) => _wasm.DrawRectangleRoundedLines.run([
    rl.Temp.Rectangle$.Ref1(rec).toJS,
    roundness.toJS,
    segments.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawRectangleRoundedLinesEx(
    RectangleD rec,
    double roundness,
    int segments,
    double lineThick,
    ColorD color,
  ) => _wasm.DrawRectangleRoundedLinesEx.run([
    rl.Temp.Rectangle$.Ref1(rec).toJS,
    roundness.toJS,
    segments.toJS,
    lineThick.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawTriangle(
    Vector2D v1,
    Vector2D v2,
    Vector2D v3,
    ColorD color,
  ) => _wasm.DrawTriangle.run([
    rl.Temp.Vector2$.Ref1(v1).toJS,
    rl.Temp.Vector2$.Ref2(v2).toJS,
    rl.Temp.Vector2$.Ref3(v3).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawTriangleLines(
    Vector2D v1,
    Vector2D v2,
    Vector2D v3,
    ColorD color,
  ) => _wasm.DrawTriangleLines.run([
    rl.Temp.Vector2$.Ref1(v1).toJS,
    rl.Temp.Vector2$.Ref2(v2).toJS,
    rl.Temp.Vector2$.Ref3(v3).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawTriangleFan(
    StructPointer<Vector2D> points,
    int pointCount,
    ColorD color,
  ) => _wasm.DrawTriangleFan.run([
    points.toJS,
    pointCount.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawTriangleStrip(
    StructPointer<Vector2D> points,
    int pointCount,
    ColorD color,
  ) => _wasm.DrawTriangleStrip.run([
    points.toJS,
    pointCount.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawPoly(
    Vector2D center,
    int sides,
    double radius,
    double rotation,
    ColorD color,
  ) => _wasm.DrawPoly.run([
    rl.Temp.Vector2$.Ref1(center).toJS,
    sides.toJS,
    radius.toJS,
    rotation.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawPolyLines(
    Vector2D center,
    int sides,
    double radius,
    double rotation,
    ColorD color,
  ) => _wasm.DrawPolyLines.run([
    rl.Temp.Vector2$.Ref1(center).toJS,
    sides.toJS,
    radius.toJS,
    rotation.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawPolyLinesEx(
    Vector2D center,
    int sides,
    double radius,
    double rotation,
    double lineThick,
    ColorD color,
  ) => _wasm.DrawPolyLinesEx.run([
    rl.Temp.Vector2$.Ref1(center).toJS,
    sides.toJS,
    radius.toJS,
    rotation.toJS,
    lineThick.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawSplineLinear(
    StructPointer<Vector2D> points,
    int pointCount,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineLinear.run([
    points.toJS,
    pointCount.toJS,
    thick.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawSplineBasis(
    StructPointer<Vector2D> points,
    int pointCount,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineBasis.run([
    points.toJS,
    pointCount.toJS,
    thick.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawSplineCatmullRom(
    StructPointer<Vector2D> points,
    int pointCount,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineCatmullRom.run([
    points.toJS,
    pointCount.toJS, 
    thick.toJS, 
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawSplineBezierQuadratic(
    StructPointer<Vector2D> points,
    int pointCount,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineBezierQuadratic.run([
    points.toJS,
    pointCount.toJS,
    thick.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawSplineBezierCubic(
    StructPointer<Vector2D> points,
    int pointCount,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineBezierCubic.run([
    points.toJS,
    pointCount.toJS,
    thick.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawSplineSegmentLinear(
    Vector2D p1,
    Vector2D p2,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineSegmentLinear.run([
    rl.Temp.Vector2$.Ref1(p1).toJS,
    rl.Temp.Vector2$.Ref2(p2).toJS,
    thick.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawSplineSegmentBasis(
    Vector2D p1,
    Vector2D p2,
    Vector2D p3,
    Vector2D p4,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineSegmentBasis.run([
    rl.Temp.Vector2$.Ref1(p1).toJS,
    rl.Temp.Vector2$.Ref2(p2).toJS,
    rl.Temp.Vector2$.Ref3(p3).toJS,
    rl.Temp.Vector2$.Ref4(p4).toJS,
    thick.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawSplineSegmentCatmullRom(
    Vector2D p1,
    Vector2D p2,
    Vector2D p3,
    Vector2D p4,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineSegmentCatmullRom.run([
    rl.Temp.Vector2$.Ref1(p1).toJS,
    rl.Temp.Vector2$.Ref2(p2).toJS,
    rl.Temp.Vector2$.Ref3(p3).toJS,
    rl.Temp.Vector2$.Ref4(p4).toJS,
    thick.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawSplineSegmentBezierQuadratic(
    Vector2D p1,
    Vector2D c2,
    Vector2D p3,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineSegmentBezierQuadratic.run([
    rl.Temp.Vector2$.Ref1(p1).toJS,
    rl.Temp.Vector2$.Ref2(c2).toJS,
    rl.Temp.Vector2$.Ref3(p3).toJS,
    thick.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawSplineSegmentBezierCubic(
    Vector2D p1,
    Vector2D c2,
    Vector2D c3,
    Vector2D p4,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineSegmentBezierCubic.run([
    rl.Temp.Vector2$.Ref1(p1).toJS,
    rl.Temp.Vector2$.Ref2(c2).toJS,
    rl.Temp.Vector2$.Ref3(c3).toJS,
    rl.Temp.Vector2$.Ref4(p4).toJS,
    thick.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  Vector2D GetSplinePointLinear(
    Vector2D startPos,
    Vector2D endPos,
    double t,
  ) => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.GetSplinePointLinear.run([
      p.toJS,
      rl.Temp.Vector2$.Ref2(startPos).toJS,
      rl.Temp.Vector2$.Ref3(endPos).toJS,
      t.toJS,
    ]),
  );

  @override
  Vector2D GetSplinePointBasis(
    Vector2D p1,
    Vector2D p2,
    Vector2D p3,
    Vector2D p4,
    double t,
  ) => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.GetSplinePointBasis.run([
      p.toJS,
      rl.Temp.Vector2$.Ref2(p1).toJS,
      rl.Temp.Vector2$.Ref3(p2).toJS,
      rl.Temp.Vector2$.Ref4(p3).toJS,
      rl.Temp.Vector2$.Ref5(p4).toJS,
      t.toJS,
    ]),
  );

  @override
  Vector2D GetSplinePointCatmullRom(
    Vector2D p1,
    Vector2D p2,
    Vector2D p3,
    Vector2D p4,
    double t,
  ) => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.GetSplinePointBasis.run([
      p.toJS,
      rl.Temp.Vector2$.Ref2(p1).toJS,
      rl.Temp.Vector2$.Ref3(p2).toJS,
      rl.Temp.Vector2$.Ref4(p3).toJS,
      rl.Temp.Vector2$.Ref5(p4).toJS,
      t.toJS,
    ]),
  );

  @override
  Vector2D GetSplinePointBezierQuad(
    Vector2D p1,
    Vector2D c2,
    Vector2D p3,
    double t,
  ) => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.GetSplinePointBasis.run([
      p.toJS,
      rl.Temp.Vector2$.Ref2(p1).toJS,
      rl.Temp.Vector2$.Ref3(c2).toJS,
      rl.Temp.Vector2$.Ref4(p3).toJS,
      t.toJS,
    ]),
  );

  @override
  Vector2D GetSplinePointBezierCubic(
    Vector2D p1,
    Vector2D c2,
    Vector2D c3,
    Vector2D p4,
    double t,
  ) => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.GetSplinePointBasis.run([
      p.toJS,
      rl.Temp.Vector2$.Ref2(p1).toJS,
      rl.Temp.Vector2$.Ref3(c2).toJS,
      rl.Temp.Vector2$.Ref4(c3).toJS,
      rl.Temp.Vector2$.Ref5(p4).toJS,
      t.toJS,
    ]),
  );

  @override
  bool CheckCollisionRecs(
    RectangleD rec1,
    RectangleD rec2,
  ) => _wasm.CheckCollisionRecs.run([
    rl.Temp.Rectangle$.Ref1(rec1).toJS,
    rl.Temp.Rectangle$.Ref2(rec2).toJS,
  ]).toBool();

  @override
  bool CheckCollisionCircles(
    Vector2D center1,
    double radius1,
    Vector2D center2,
    double radius2,
  ) => _wasm.CheckCollisionCircles.run([
    rl.Temp.Vector2$.Ref1(center1).toJS,
    radius1.toJS,
    rl.Temp.Vector2$.Ref2(center2).toJS,
    radius2.toJS,
  ]).toBool();

  @override
  bool CheckCollisionCircleRec(
    Vector2D center,
    double radius,
    RectangleD rec,
  ) => _wasm.CheckCollisionCircleRec.run([
    rl.Temp.Vector2$.Ref1(center).toJS,
    radius.toJS,
    rl.Temp.Rectangle$.Ref1(rec).toJS,
  ]).toBool();

  @override
  bool CheckCollisionCircleLine(
    Vector2D center,
    double radius,
    Vector2D p1,
    Vector2D p2,
  ) => _wasm.CheckCollisionCircleLine.run([
    rl.Temp.Vector2$.Ref1(center).toJS,
    radius.toJS,
    rl.Temp.Vector2$.Ref2(p1).toJS,
    rl.Temp.Vector2$.Ref3(p2).toJS,
  ]).toBool();

  @override
  bool CheckCollisionPointRec(
    Vector2D point,
    RectangleD rec,
  ) => _wasm.CheckCollisionPointRec.run([
    rl.Temp.Vector2$.Ref1(point).toJS,
    rl.Temp.Rectangle$.Ref1(rec).toJS,
  ]).toBool();

  @override
  bool CheckCollisionPointCircle(
    Vector2D point,
    Vector2D center,
    double radius,
  ) => _wasm.CheckCollisionPointCircle.run([
    rl.Temp.Vector2$.Ref1(point).toJS,
    rl.Temp.Vector2$.Ref2(center).toJS,
    radius.toJS,
  ]).toBool();

  @override
  bool CheckCollisionPointTriangle(
    Vector2D point,
    Vector2D p1,
    Vector2D p2,
    Vector2D p3,
  ) => _wasm.CheckCollisionPointTriangle.run([
    rl.Temp.Vector2$.Ref1(point).toJS,
    rl.Temp.Vector2$.Ref2(p1).toJS,
    rl.Temp.Vector2$.Ref3(p2).toJS,
    rl.Temp.Vector2$.Ref4(p3).toJS,
  ]).toBool();

  @override
  bool CheckCollisionPointLine(
    Vector2D point,
    Vector2D p1,
    Vector2D p2,
    int threshold,
  ) => _wasm.CheckCollisionPointLine.run([
    rl.Temp.Vector2$.Ref1(point).toJS,
    rl.Temp.Vector2$.Ref2(p1).toJS,
    rl.Temp.Vector2$.Ref3(p2).toJS,
    threshold.toJS,
  ]).toBool();

  @override
  bool CheckCollisionPointPoly(
    Vector2D point,
    StructPointer<Vector2D> points,
    int pointCount,
  ) => _wasm.CheckCollisionPointPoly.run([
    rl.Temp.Vector2$.Ref1(point).toJS,
    points.toJS,
    pointCount.toJS,
  ]).toBool();

  @override
  bool CheckCollisionLines(
    Vector2D startPos1,
    Vector2D endPos1,
    Vector2D startPos2,
    Vector2D endPos2,
    StructPointer<Vector2D> collisionPoint,
  ) => _wasm.CheckCollisionLines.run([
    rl.Temp.Vector2$.Ref1(startPos1).toJS,
    rl.Temp.Vector2$.Ref2(endPos1).toJS,
    rl.Temp.Vector2$.Ref3(startPos2).toJS,
    rl.Temp.Vector2$.Ref4(endPos2).toJS,
    collisionPoint.toJS,
  ]).toBool();

  @override
  RectangleD GetCollisionRec(
    RectangleD rec1,
    RectangleD rec2,
  ) => rl.Temp.Rectangle$.Extract1(
    (p) => _wasm.GetCollisionRec.run([
      p.toJS,
      rl.Temp.Rectangle$.Ref2(rec1).toJS,
      rl.Temp.Rectangle$.Ref3(rec2).toJS,
    ]),
  );

  @override
  ImageD LoadImage(
    MemoryPointer<RChar> fileName,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.LoadImage,
    (p) => _wasm.LoadImage.run([
      p.toJS,
      fileName.toJS,
    ]),
  );

  @override
  ImageD LoadImageRaw(
    MemoryPointer<RChar> fileName,
    int width,
    int height,
    int format,
    int headerSize,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.LoadImageRaw,
    (p) => _wasm.LoadImageRaw.run([
      p.toJS,
      fileName.toJS,
      width.toJS,
      height.toJS,
      format.toJS,
      headerSize.toJS,
    ]),
  );

  @override
  ImageD LoadImageAnim(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RInt> frames,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.LoadImageAnim,
    (p) => _wasm.LoadImageAnim.run([
      p.toJS,
      fileName.toJS,
      frames.toJS,
    ]),
  );

  @override
  ImageD LoadImageAnimFromMemory(
    MemoryPointer<RChar> fileType,
    MemoryPointer<RUnsignedChar> fileData,
    int dataSize,
    MemoryPointer<RInt> frames,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.LoadImageAnimFromMemory,
    (p) => _wasm.LoadImageAnimFromMemory.run([
      p.toJS,
      fileType.toJS,
      fileData.toJS,
      dataSize.toJS,
      frames.toJS,
    ]),
  );

  @override
  ImageD LoadImageFromMemory(
    MemoryPointer<RChar> fileType,
    MemoryPointer<RUnsignedChar> fileData,
    int dataSize,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.LoadImageFromMemory,
    (p) => _wasm.LoadImageFromMemory.run([
      p.toJS,
      fileType.toJS,
      fileData.toJS,
      dataSize.toJS,
    ]),
  );

  @override
  ImageD LoadImageFromTexture(
    TextureD texture,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.LoadImageFromTexture,
    (p) => _wasm.LoadImageFromTexture.run([
      p.toJS,
      rl.Temp.Texture$.Ref1(texture).toJS,
    ]),
  );

  @override
  ImageD LoadImageFromScreen() => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.LoadImageFromScreen,
    (p) => _wasm.LoadImageFromScreen.run([
      p.toJS,
    ]),
  );

  @override
  bool IsImageValid(
    ImageD image,
  ) => _wasm.IsImageValid.run([
    rl.Temp.Image$.Ref1(image).toJS,
  ]).toBool();

  @override
  void UnloadImage(
    ImageD image,
  ) => _wasm.UnloadImage.run([
    rl.Temp.Image$.Ref1(image).toJS,
  ]);

  @override
  bool ExportImage(
    ImageD image,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportImage.run([
    rl.Temp.Image$.Ref1(image).toJS,
    fileName.toJS,
  ]).toBool();

  @override
  WasmMemoryPointer<RUnsignedChar> ExportImageToMemory(
    ImageD image,
    MemoryPointer<RChar> fileType,
    MemoryPointer<RInt> fileSize,
  ) => _wasm.ExportImageToMemory.run([
    rl.Temp.Image$.Ref1(image).toJS,
    fileType.toJS,
    fileSize.toJS,
  ]).asMemoryPointer();

  @override
  bool ExportImageAsCode(
    ImageD image,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportImageAsCode.run([
    rl.Temp.Image$.Ref1(image).toJS,
    fileName.toJS,
  ]).toBool();

  @override
  ImageD GenImageColor(
    int width,
    int height,
    ColorD color,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.GenImageColor,
    (p) => _wasm.GenImageColor.run([
      p.toJS,
      width.toJS,
      height.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ]),
  );

  @override
  ImageD GenImageGradientLinear(
    int width,
    int height,
    int direction,
    ColorD start,
    ColorD end,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.GenImageGradientLinear,
    (p) => _wasm.GenImageGradientLinear.run([
      p.toJS,
      width.toJS,
      height.toJS,
      direction.toJS,
      rl.Temp.Color$.Ref1(start).toJS,
      rl.Temp.Color$.Ref2(end).toJS,
    ]),
  );

  @override
  ImageD GenImageGradientRadial(
    int width,
    int height,
    double density,
    ColorD inner,
    ColorD outer,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.GenImageGradientRadial,
    (p) => _wasm.GenImageGradientRadial.run([
      p.toJS,
      width.toJS,
      height.toJS,
      density.toJS,
      rl.Temp.Color$.Ref1(inner).toJS,
      rl.Temp.Color$.Ref2(outer).toJS,
    ]),
  );

  @override
  ImageD GenImageGradientSquare(
    int width,
    int height,
    double density,
    ColorD inner,
    ColorD outer,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.GenImageGradientSquare,
    (p) => _wasm.GenImageGradientSquare.run([
      p.toJS,
      width.toJS,
      height.toJS,
      density.toJS,
      rl.Temp.Color$.Ref1(inner).toJS,
      rl.Temp.Color$.Ref2(outer).toJS,
    ]),
  );

  @override
  ImageD GenImageChecked(
    int width,
    int height,
    int checksX,
    int checksY,
    ColorD col1,
    ColorD col2,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.GenImageChecked,
    (p) => _wasm.GenImageChecked.run([
      p.toJS,
      width.toJS,
      height.toJS,
      checksX.toJS,
      checksY.toJS,
      rl.Temp.Color$.Ref1(col1).toJS,
      rl.Temp.Color$.Ref2(col2).toJS,
    ]),
  );

  @override
  ImageD GenImageWhiteNoise(
    int width,
    int height,
    double factor,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.GenImageWhiteNoise,
    (p) => _wasm.GenImageWhiteNoise.run([
      p.toJS,
      width.toJS,
      height.toJS,
      factor.toJS,
    ]),
  );

  @override
  ImageD GenImagePerlinNoise(
    int width,
    int height,
    int offsetX,
    int offsetY,
    double scale,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.GenImagePerlinNoise,
    (p) => _wasm.GenImagePerlinNoise.run([
      p.toJS,
      width.toJS,
      height.toJS,
      offsetX.toJS,
      offsetY.toJS,
      scale.toJS,
    ]),
  );

  @override
  ImageD GenImageCellular(
    int width,
    int height,
    int tileSize,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.GenImageCellular,
    (p) => _wasm.GenImageCellular.run([
      p.toJS,
      width.toJS,
      height.toJS,
      tileSize.toJS,
    ]),
  );

  @override
  ImageD GenImageText(
    int width,
    int height,
    MemoryPointer<RChar> text,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.GenImageText,
    (p) => _wasm.GenImageText.run([
      p.toJS,
      width.toJS,
      height.toJS,
      text.toJS,
    ]),
  );

  @override
  ImageD ImageCopy(
    ImageD image,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.ImageCopy,
    (p) => _wasm.ImageCopy.run([
      p.toJS,
      rl.Temp.Image$.Ref1(image).toJS,
    ]),
  );

  @override
  ImageD ImageFromImage(
    ImageD image,
    RectangleD rec,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.ImageFromImage,
    (p) => _wasm.ImageFromImage.run([
      p.toJS,
      rl.Temp.Image$.Ref1(image).toJS,
      rl.Temp.Rectangle$.Ref1(rec).toJS,
    ]),
  );

  @override
  ImageD ImageFromChannel(
    ImageD image,
    int selectedChannel,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.ImageFromChannel,
    (p) => _wasm.ImageFromChannel.run([
      p.toJS,
      rl.Temp.Image$.Ref1(image).toJS,
      selectedChannel.toJS,
    ]),
  );

  @override
  ImageD ImageText(
    MemoryPointer<RChar> text,
    int fontSize,
    ColorD color,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.ImageText,
    (p) => _wasm.ImageText.run([
      p.toJS,
      text.toJS,
      fontSize.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ]),
  );

  @override
  ImageD ImageTextEx(
    FontD font,
    MemoryPointer<RChar> text,
    double fontSize,
    double spacing,
    ColorD tint,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.ImageTextEx,
    (p) => _wasm.ImageTextEx.run([
      p.toJS,
      rl.Temp.Font$.Ref1(font).toJS,
      text.toJS,
      fontSize.toJS,
      spacing.toJS,
      rl.Temp.Color$.Ref1(tint).toJS,
    ]),
  );

  @override
  void ImageFormat(
    StructPointer<ImageD> image,
    int newFormat,
  ) => _wasm.ImageFormat.run([
    image.toJS,
    newFormat.toJS,
  ]);

  @override
  void ImageToPOT(
    StructPointer<ImageD> image,
    ColorD fill,
  ) => _wasm.ImageToPOT.run([
    image.toJS,
    rl.Temp.Color$.Ref1(fill).toJS,
  ]);

  @override
  void ImageCrop(
    StructPointer<ImageD> image,
    RectangleD crop,
  ) => _wasm.ImageCrop.run([
    image.toJS,
    rl.Temp.Rectangle$.Ref1(crop).toJS,
  ]);

  @override
  void ImageAlphaCrop(
    StructPointer<ImageD> image,
    double threshold,
  ) => _wasm.ImageAlphaCrop.run([
    image.toJS,
    threshold.toJS,
  ]);

  @override
  void ImageAlphaClear(
    StructPointer<ImageD> image,
    ColorD color,
    double threshold,
  ) => _wasm.ImageAlphaClear.run([
    image.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
    threshold.toJS,
  ]);

  @override
  void ImageAlphaMask(
    StructPointer<ImageD> image,
    ImageD alphaMask,
  ) => _wasm.ImageAlphaMask.run([
    image.toJS,
    rl.Temp.Image$.Ref2(alphaMask).toJS,
  ]);

  @override
  void ImageAlphaPremultiply(
    StructPointer<ImageD> image,
  ) => _wasm.ImageAlphaPremultiply.run([
    image.toJS,
  ]);

  @override
  void ImageBlurGaussian(
    StructPointer<ImageD> image,
    int blurSize,
  ) => _wasm.ImageBlurGaussian.run([
    image.toJS,
    blurSize.toJS,
  ]);

  @override
  void ImageKernelConvolution(
    StructPointer<ImageD> image,
    MemoryPointer<RFloat> kernel,
    int kernelSize,
  ) => _wasm.ImageKernelConvolution.run([
    image.toJS,
    kernel.toJS,
    kernelSize.toJS,
  ]);

  @override
  void ImageResize(
    StructPointer<ImageD> image,
    int newWidth,
    int newHeight,
  ) => _wasm.ImageResize.run([
    image.toJS,
    newWidth.toJS,
    newHeight.toJS,
  ]);

  @override
  void ImageResizeNN(
    StructPointer<ImageD> image,
    int newWidth,
    int newHeight,
  ) => _wasm.ImageResizeNN.run([
    image.toJS,
    newWidth.toJS,
    newHeight.toJS,
  ]);

  @override
  void ImageResizeCanvas(
    StructPointer<ImageD> image,
    int newWidth,
    int newHeight,
    int offsetX,
    int offsetY,
    ColorD fill,
  ) => _wasm.ImageResizeCanvas.run([
    image.toJS,
    newWidth.toJS,
    newHeight.toJS,
    offsetX.toJS,
    offsetY.toJS,
    rl.Temp.Color$.Ref1(fill).toJS,
  ]);

  @override
  void ImageMipmaps(
    StructPointer<ImageD> image,
  ) => _wasm.ImageMipmaps.run([
    image.toJS,
  ]);

  @override
  void ImageDither(
    StructPointer<ImageD> image,
    int rBpp,
    int gBpp,
    int bBpp,
    int aBpp,
  ) => _wasm.ImageDither.run([
    image.toJS,
    rBpp.toJS,
    gBpp.toJS,
    bBpp.toJS,
    aBpp.toJS,
  ]);

  @override
  void ImageFlipVertical(
    StructPointer<ImageD> image,
  ) => _wasm.ImageFlipVertical.run([
    image.toJS,
  ]);

  @override
  void ImageFlipHorizontal(
    StructPointer<ImageD> image,
  ) => _wasm.ImageFlipHorizontal.run([
    image.toJS,
  ]);

  @override
  void ImageRotate(
    StructPointer<ImageD> image,
    int degrees,
  ) => _wasm.ImageRotate.run([
    image.toJS,
    degrees.toJS,
  ]);

  @override
  void ImageRotateCW(
    StructPointer<ImageD> image,
  ) => _wasm.ImageRotateCW.run([
    image.toJS,
  ]);

  @override
  void ImageRotateCCW(
    StructPointer<ImageD> image,
  ) => _wasm.ImageRotateCCW.run([
    image.toJS,
  ]);

  @override
  void ImageColorTint(
    StructPointer<ImageD> image,
    ColorD color,
  ) => _wasm.ImageColorTint.run([
    image.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageColorInvert(
    StructPointer<ImageD> image,
  ) => _wasm.ImageColorInvert.run([
    image.toJS,
  ]);

  @override
  void ImageColorGrayscale(
    StructPointer<ImageD> image,
  ) => _wasm.ImageColorGrayscale.run([
    image.toJS,
  ]);

  @override
  void ImageColorContrast(
    StructPointer<ImageD> image,
    double contrast,
  ) => _wasm.ImageColorContrast.run([
    image.toJS,
    contrast.toJS,
  ]);

  @override
  void ImageColorBrightness(
    StructPointer<ImageD> image,
    int brightness,
  ) => _wasm.ImageColorBrightness.run([
    image.toJS,
    brightness.toJS,
  ]);

  @override
  void ImageColorReplace(
    StructPointer<ImageD> image,
    ColorD color,
    ColorD replace,
  ) => _wasm.ImageColorReplace.run([
    image.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
    rl.Temp.Color$.Ref2(replace).toJS,
  ]);

  @override
  StructPointer<ColorD> LoadImageColors(
    ImageD image,
  ) => ColorD.pointer(_wasm.LoadImageColors.run([
    rl.Temp.Image$.Ref1(image).toJS,
  ]).asMemoryPointer());

  @override
  StructPointer<ColorD> LoadImagePalette(
    ImageD image,
    int maxPaletteSize,
    MemoryPointer<RInt> colorCount,
  ) => ColorD.pointer(_wasm.LoadImagePalette.run([
    rl.Temp.Image$.Ref1(image).toJS,
    maxPaletteSize.toJS,
    colorCount.toJS,
  ]).asMemoryPointer());

  @override
  void UnloadImageColors(
    StructPointer<ColorD> colors,
  ) => _wasm.UnloadImageColors.run([
    colors.toJS,
  ]);

  @override
  void UnloadImagePalette(
    StructPointer<ColorD> colors,
  ) => _wasm.UnloadImagePalette.run([
    colors.toJS,
  ]);

  @override
  RectangleD GetImageAlphaBorder(
    ImageD image,
    double threshold,
  ) => rl.Temp.Rectangle$.Extract1(
    (p) => _wasm.GetImageAlphaBorder.run([
      p.toJS,
      rl.Temp.Image$.Ref1(image).toJS,
      threshold.toJS,
    ]),
  );

  @override
  ColorD GetImageColor(
    ImageD image,
    int x,
    int y,
  ) => rl.Temp.Color$.Extract1(
    (p) => _wasm.GetImageColor.run([
      p.toJS,
      rl.Temp.Image$.Ref1(image).toJS,
      x.toJS,
      y.toJS,
    ]),
  );

  @override
  void ImageClearBackground(
    StructPointer<ImageD> dst,
    ColorD color,
  ) => _wasm.ImageClearBackground.run([
    dst.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawPixel(
    StructPointer<ImageD> dst,
    int posX,
    int posY,
    ColorD color,
  ) => _wasm.ImageDrawPixel.run([
    dst.toJS,
    posX.toJS,
    posY.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawPixelV(
    StructPointer<ImageD> dst,
    Vector2D position,
    ColorD color,
  ) => _wasm.ImageDrawPixelV.run([
    dst.toJS,
    rl.Temp.Vector2$.Ref1(position).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawLine(
    StructPointer<ImageD> dst,
    int startPosX,
    int startPosY,
    int endPosX,
    int endPosY,
    ColorD color,
  ) => _wasm.ImageDrawLine.run([
    dst.toJS,
    startPosX.toJS,
    startPosY.toJS,
    endPosX.toJS,
    endPosY.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawLineV(
    StructPointer<ImageD> dst,
    Vector2D start,
    Vector2D end,
    ColorD color,
  ) => _wasm.ImageDrawLineV.run([
    dst.toJS,
    rl.Temp.Vector2$.Ref1(start).toJS,
    rl.Temp.Vector2$.Ref2(end).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawLineEx(
    StructPointer<ImageD> dst,
    Vector2D start,
    Vector2D end,
    int thick,
    ColorD color,
  ) => _wasm.ImageDrawLineEx.run([
    dst.toJS,
    rl.Temp.Vector2$.Ref1(start).toJS,
    rl.Temp.Vector2$.Ref2(end).toJS,
    thick.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawCircle(
    StructPointer<ImageD> dst,
    int centerX,
    int centerY,
    int radius,
    ColorD color,
  ) => _wasm.ImageDrawCircle.run([
    dst.toJS,
    centerX.toJS,
    centerY.toJS,
    radius.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawCircleV(
    StructPointer<ImageD> dst,
    Vector2D center,
    int radius,
    ColorD color,
  ) => _wasm.ImageDrawCircleV.run([
    dst.toJS,
    rl.Temp.Vector2$.Ref1(center).toJS,
    radius.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawCircleLines(
    StructPointer<ImageD> dst,
    int centerX,
    int centerY,
    int radius,
    ColorD color,
  ) => _wasm.ImageDrawCircleLines.run([
    dst.toJS,
    centerX.toJS,
    centerY.toJS,
    radius.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawCircleLinesV(
    StructPointer<ImageD> dst,
    Vector2D center,
    int radius,
    ColorD color,
  ) => _wasm.ImageDrawCircleLinesV.run([
    dst.toJS,
    rl.Temp.Vector2$.Ref1(center).toJS,
    radius.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawRectangle(
    StructPointer<ImageD> dst,
    int posX,
    int posY,
    int width,
    int height,
    ColorD color,
  ) => _wasm.ImageDrawRectangle.run([
    dst.toJS,
    posX.toJS,
    posY.toJS,
    width.toJS,
    height.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawRectangleV(
    StructPointer<ImageD> dst,
    Vector2D position,
    Vector2D size,
    ColorD color,
  ) => _wasm.ImageDrawRectangleV.run([
    dst.toJS,
    rl.Temp.Vector2$.Ref1(position).toJS,
    rl.Temp.Vector2$.Ref2(size).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawRectangleRec(
    StructPointer<ImageD> dst,
    RectangleD rec,
    ColorD color,
  ) => _wasm.ImageDrawRectangleRec.run([
    dst.toJS,
    rl.Temp.Rectangle$.Ref1(rec).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawRectangleLines(
    StructPointer<ImageD> dst,
    RectangleD rec,
    int thick,
    ColorD color,
  ) => _wasm.ImageDrawRectangleLines.run([
    dst.toJS,
    rl.Temp.Rectangle$.Ref1(rec).toJS,
    thick.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawTriangle(
    StructPointer<ImageD> dst,
    Vector2D v1,
    Vector2D v2,
    Vector2D v3,
    ColorD color,
  ) => _wasm.ImageDrawTriangle.run([
    dst.toJS,
    rl.Temp.Vector2$.Ref1(v1).toJS,
    rl.Temp.Vector2$.Ref2(v2).toJS,
    rl.Temp.Vector2$.Ref3(v3).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawTriangleEx(
    StructPointer<ImageD> dst,
    Vector2D v1,
    Vector2D v2,
    Vector2D v3,
    ColorD c1,
    ColorD c2,
    ColorD c3,
  ) => _wasm.ImageDrawTriangleEx.run([
    dst.toJS,
    rl.Temp.Vector2$.Ref1(v1).toJS,
    rl.Temp.Vector2$.Ref2(v2).toJS,
    rl.Temp.Vector2$.Ref3(v3).toJS,
    rl.Temp.Color$.Ref1(c1).toJS,
    rl.Temp.Color$.Ref2(c2).toJS,
    rl.Temp.Color$.Ref3(c3).toJS,
  ]);

  @override
  void ImageDrawTriangleLines(
    StructPointer<ImageD> dst,
    Vector2D v1,
    Vector2D v2,
    Vector2D v3,
    ColorD color,
  ) => _wasm.ImageDrawTriangleLines.run([
    dst.toJS,
    rl.Temp.Vector2$.Ref1(v1).toJS,
    rl.Temp.Vector2$.Ref2(v2).toJS,
    rl.Temp.Vector2$.Ref3(v3).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawTriangleFan(
    StructPointer<ImageD> dst,
    StructPointer<Vector2D> points,
    int pointCount,
    ColorD color,
  ) => _wasm.ImageDrawTriangleFan.run([
    dst.toJS,
    points.toJS,
    pointCount.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawTriangleStrip(
    StructPointer<ImageD> dst,
    StructPointer<Vector2D> points,
    int pointCount,
    ColorD color,
  ) => _wasm.ImageDrawTriangleStrip.run([
    dst.toJS,
    points.toJS,
    pointCount.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDraw(
    StructPointer<ImageD> dst,
    ImageD src,
    RectangleD srcRec,
    RectangleD dstRec,
    ColorD tint,
  ) => _wasm.ImageDraw.run([
    dst.toJS,
    rl.Temp.Image$.Ref2(src).toJS,
    rl.Temp.Rectangle$.Ref1(srcRec).toJS,
    rl.Temp.Rectangle$.Ref2(dstRec).toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  void ImageDrawText(
    StructPointer<ImageD> dst,
    MemoryPointer<RChar> text,
    int posX,
    int posY,
    int fontSize,
    ColorD color,
  ) => _wasm.ImageDrawText.run([
    dst.toJS,
    text.toJS,
    posX.toJS,
    posY.toJS,
    fontSize.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawTextEx(
    StructPointer<ImageD> dst,
    FontD font,
    MemoryPointer<RChar> text,
    Vector2D position,
    double fontSize,
    double spacing,
    ColorD tint,
  ) => _wasm.ImageDrawTextEx.run([
    dst.toJS,
    rl.Temp.Font$.Ref1(font).toJS,
    text.toJS,
    rl.Temp.Vector2$.Ref1(position).toJS,
    fontSize.toJS,
    spacing.toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  TextureD LoadTexture(
    MemoryPointer<RChar> fileName,
  ) => rl.Temp.Texture$.RefCapture(
    RaylibCaptureIds.LoadTexture,
    (p) => _wasm.LoadTexture.run([
      p.toJS,
      fileName.toJS,
    ]),
  );

  @override
  TextureD LoadTextureFromImage(
    ImageD image,
  ) => rl.Temp.Texture$.RefCapture(
    RaylibCaptureIds.LoadTextureFromImage,
    (p) => _wasm.LoadTextureFromImage.run([
      p.toJS,
      rl.Temp.Image$.Ref1(image).toJS,
    ]),
  );

  @override
  TextureD LoadTextureCubemap(
    ImageD image,
    int layout,
  ) => rl.Temp.Texture$.RefCapture(
    RaylibCaptureIds.LoadTextureCubemap,
    (p) => _wasm.LoadTextureCubemap.run([
      p.toJS,
      rl.Temp.Image$.Ref1(image).toJS,
      layout.toJS,
    ]),
  );

  @override
  RenderTextureD LoadRenderTexture(
    int width,
    int height,
  ) => rl.Temp.RenderTexture$.RefCapture(
    RaylibCaptureIds.LoadRenderTexture,
    (p) => _wasm.LoadRenderTexture.run([
      p.toJS,
      width.toJS,
      height.toJS,
    ]),
  );

  @override
  bool IsTextureValid(
    TextureD texture,
  ) => _wasm.IsTextureValid.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
  ]).toBool();

  @override
  void UnloadTexture(
    TextureD texture,
  ) => _wasm.UnloadTexture.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
  ]);

  @override
  bool IsRenderTextureValid(
    RenderTextureD target,
  ) => _wasm.IsRenderTextureValid.run([
    rl.Temp.RenderTexture$.Ref1(target).toJS,
  ]).toBool();

  @override
  void UnloadRenderTexture(
    RenderTextureD target,
  ) => _wasm.UnloadRenderTexture.run([
    rl.Temp.RenderTexture$.Ref1(target).toJS,
  ]);

  @override
  void UpdateTexture(
    TextureD texture,
    MemoryPointer<RVoid> pixels,
  ) => _wasm.UpdateTexture.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
    pixels.toJS,
  ]);

  @override
  void UpdateTextureRec(
    TextureD texture,
    RectangleD rec,
    MemoryPointer<RVoid> pixels,
  ) => _wasm.UpdateTextureRec.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
    rl.Temp.Rectangle$.Ref1(rec).toJS,
    pixels.toJS,
  ]);

  @override
  void GenTextureMipmaps(
    StructPointer<TextureD> texture,
  ) => _wasm.GenTextureMipmaps.run([
    texture.toJS,
  ]);

  @override
  void SetTextureFilter(
    TextureD texture,
    int filter,
  ) => _wasm.SetTextureFilter.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
    filter.toJS,
  ]);

  @override
  void SetTextureWrap(
    TextureD texture,
    int wrap,
  ) => _wasm.SetTextureWrap.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
    wrap.toJS,
  ]);

  @override
  void DrawTexture(
    TextureD texture,
    int posX,
    int posY,
    ColorD tint,
  ) => _wasm.DrawTexture.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
    posX.toJS,
    posY.toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  void DrawTextureV(
    TextureD texture,
    Vector2D position,
    ColorD tint,
  ) => _wasm.DrawTextureV.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
    rl.Temp.Vector2$.Ref1(position).toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  void DrawTextureEx(
    TextureD texture,
    Vector2D position,
    double rotation,
    double scale,
    ColorD tint,
  ) => _wasm.DrawTextureEx.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
    rl.Temp.Vector2$.Ref1(position).toJS,
    rotation.toJS,
    scale.toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  void DrawTextureRec(
    TextureD texture,
    RectangleD source,
    Vector2D position,
    ColorD tint,
  ) => _wasm.DrawTextureRec.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
    rl.Temp.Rectangle$.Ref1(source).toJS,
    rl.Temp.Vector2$.Ref1(position).toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  void DrawTexturePro(
    TextureD texture,
    RectangleD source,
    RectangleD dest,
    Vector2D origin,
    double rotation,
    ColorD tint,
  ) => _wasm.DrawTexturePro.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
    rl.Temp.Rectangle$.Ref1(source).toJS,
    rl.Temp.Rectangle$.Ref2(dest).toJS,
    rl.Temp.Vector2$.Ref1(origin).toJS,
    rotation.toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  void DrawTextureNPatch(
    TextureD texture,
    NPatchInfoD nPatchInfo,
    RectangleD dest,
    Vector2D origin,
    double rotation,
    ColorD tint,
  ) => _wasm.DrawTextureNPatch.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
    rl.Temp.NPatchInfo$.Ref1(nPatchInfo).toJS,
    rl.Temp.Rectangle$.Ref1(dest).toJS,
    rl.Temp.Vector2$.Ref1(origin).toJS,
    rotation.toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  bool ColorIsEqual(
    ColorD col1,
    ColorD col2,
  ) => _wasm.ColorIsEqual.run([
    rl.Temp.Color$.Ref1(col1).toJS,
    rl.Temp.Color$.Ref2(col2).toJS,
  ]).toBool();

  @override
  ColorD Fade(
    ColorD color,
    double alpha,
  ) => rl.Temp.Color$.Extract1(
    (p) => _wasm.Fade.run([
      p.toJS,
      rl.Temp.Color$.Ref2(color).toJS,
      alpha.toJS,
    ]),
  );

  @override
  int ColorToInt(
    ColorD color,
  ) => _wasm.ColorToInt.run([
    rl.Temp.Color$.Ref1(color).toJS,
  ]).toInt();

  @override
  Vector4D ColorNormalize(
    ColorD color,
  ) => rl.Temp.Vector4$.Extract1(
    (p) => _wasm.ColorNormalize.run([
      p.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ]),
  );

  @override
  ColorD ColorFromNormalized(
    Vector4D normalized,
  ) => rl.Temp.Color$.Extract1(
    (p) => _wasm.ColorFromNormalized.run([
      p.toJS,
      rl.Temp.Vector4$.Ref1(normalized).toJS,
    ]),
  );

  @override
  Vector3D ColorToHSV(
    ColorD color,
  ) => rl.Temp.Vector3$.Extract1(
    (p) => _wasm.ColorToHSV.run([
      p.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ]),
  );

  @override
  ColorD ColorFromHSV(
    double hue,
    double saturation,
    double value,
  ) => rl.Temp.Color$.Extract1(
    (p) => _wasm.ColorFromHSV.run([
      p.toJS,
      hue.toJS,
      saturation.toJS,
      value.toJS,
    ]),
  );

  @override
  ColorD ColorTint(
    ColorD color,
    ColorD tint,
  ) => rl.Temp.Color$.Extract1(
    (p) => _wasm.ColorTint.run([
      p.toJS,
      rl.Temp.Color$.Ref2(color).toJS,
      rl.Temp.Color$.Ref3(tint).toJS,
    ]),
  );

  @override
  ColorD ColorBrightness(
    ColorD color,
    double factor,
  ) => rl.Temp.Color$.Extract1(
    (p) => _wasm.ColorBrightness.run([
      p.toJS,
      rl.Temp.Color$.Ref2(color).toJS,
      factor.toJS,
    ]),
  );

  @override
  ColorD ColorContrast(
    ColorD color,
    double contrast,
  ) => rl.Temp.Color$.Extract1(
    (p) => _wasm.ColorContrast.run([
      p.toJS,
      rl.Temp.Color$.Ref2(color).toJS,
      contrast.toJS,
    ]),
  );

  @override
  ColorD ColorAlpha(
    ColorD color,
    double alpha,
  ) => rl.Temp.Color$.Extract1(
    (p) => _wasm.ColorAlpha.run([
      p.toJS,
      rl.Temp.Color$.Ref2(color).toJS,
      alpha.toJS,
    ]),
  );

  @override
  ColorD ColorAlphaBlend(
    ColorD dst,
    ColorD src,
    ColorD tint,
  ) => rl.Temp.Color$.Extract1(
    (p) => _wasm.ColorAlphaBlend.run([
      p.toJS,
      rl.Temp.Color$.Ref2(dst).toJS,
      rl.Temp.Color$.Ref3(src).toJS,
      rl.Temp.Color$.Ref4(tint).toJS,
    ]),
  );

  @override
  ColorD ColorLerp(
    ColorD color1,
    ColorD color2,
    double factor,
  ) => rl.Temp.Color$.Extract1(
    (p) => _wasm.ColorLerp.run([
      p.toJS,
      rl.Temp.Color$.Ref2(color1).toJS,
      rl.Temp.Color$.Ref3(color2).toJS,
      factor.toJS,
    ]),
  );

  @override
  ColorD GetColor(
    int hexValue,
  ) => rl.Temp.Color$.Extract1(
    (p) => _wasm.GetColor.run([
      p.toJS,
      hexValue.toJS,
    ]),
  );

  @override
  ColorD GetPixelColor(
    MemoryPointer<RVoid> srcPtr,
    int format,
  ) => rl.Temp.Color$.Extract1(
    (p) => _wasm.GetPixelColor.run([
      p.toJS,
      srcPtr.toJS,
      format.toJS,
    ]),
  );

  @override
  void SetPixelColor(
    MemoryPointer<RVoid> dstPtr,
    ColorD color,
    int format,
  ) => _wasm.SetPixelColor.run([
    dstPtr.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
    format.toJS,
  ]);

  @override
  int GetPixelDataSize(
    int width,
    int height,
    int format,
  ) => _wasm.GetPixelDataSize.run([
    width.toJS,
    height.toJS,
    format.toJS,
  ]).toInt();

  @override
  FontD GetFontDefault() => rl.Temp.Font$.RefCaptureCached(
    RaylibCaptureIds.GetFontDefault,
    (p) => _wasm.GetFontDefault.run([
      p.toJS,
    ]),
  );

  @override
  FontD LoadFont(
    MemoryPointer<RChar> fileName,
  ) => rl.Temp.Font$.RefCapture(
    RaylibCaptureIds.LoadFont,
    (p) => _wasm.LoadFont.run([
      p.toJS,
      fileName.toJS,
    ]),
  );

  @override
  FontD LoadFontEx(
    MemoryPointer<RChar> fileName,
    int fontSize,
    MemoryPointer<RInt> codepoints,
    int codepointCount,
  ) => rl.Temp.Font$.RefCapture(
    RaylibCaptureIds.LoadFontEx,
    (p) => _wasm.LoadFontEx.run([
      p.toJS,
      fileName.toJS,
      fontSize.toJS,
      codepoints.toJS,
      codepointCount.toJS,
    ]),
  );

  @override
  FontD LoadFontFromImage(
    ImageD image,
    ColorD key,
    int firstChar,
  ) => rl.Temp.Font$.RefCapture(
    RaylibCaptureIds.LoadFontFromImage,
    (p) => _wasm.LoadFontFromImage.run([
      p.toJS,
      rl.Temp.Image$.Ref1(image).toJS,
      rl.Temp.Color$.Ref1(key).toJS,
      firstChar.toJS,
    ]),
  );

  @override
  FontD LoadFontFromMemory(
    MemoryPointer<RChar> fileType,
    MemoryPointer<RUnsignedChar> fileData,
    int dataSize,
    int fontSize,
    MemoryPointer<RInt> codepoints,
    int codepointCount,
  ) => rl.Temp.Font$.RefCapture(
    RaylibCaptureIds.LoadFontFromMemory,
    (p) => _wasm.LoadFontFromMemory.run([
      p.toJS,
      fileType.toJS,
      fileData.toJS,
      dataSize.toJS,
      fontSize.toJS,
      codepoints.toJS,
      codepointCount.toJS,
    ]),
  );

  @override
  bool IsFontValid(
    FontD font,
  ) => _wasm.IsFontValid.run([
    rl.Temp.Font$.Ref1(font).toJS,
  ]).toBool();

  @override
  StructPointer<GlyphInfoD> LoadFontData(
    MemoryPointer<RUnsignedChar> fileData,
    int dataSize,
    int fontSize,
    MemoryPointer<RInt> codepoints,
    int codepointCount,
    int type,
    MemoryPointer<RInt> glyphCount,
  ) => GlyphInfoD.pointer(_wasm.LoadFontData.run([
    fileData.toJS,
    dataSize.toJS,
    fontSize.toJS,
    codepoints.toJS,
    codepointCount.toJS,
    type.toJS,
    glyphCount.toJS,
  ]).asMemoryPointer());

  @override
  ImageD GenImageFontAtlas(
    StructPointer<GlyphInfoD> glyphs,
    MemoryPointer<RPointer<RStruct>> glyphRecs, // RectangleD
    int glyphCount,
    int fontSize,
    int padding,
    int packMethod,
  ) => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.GenImageFontAtlas,
    (p) => _wasm.GenImageFontAtlas.run([
      p.toJS,
      glyphs.toJS,
      glyphRecs.toJS,
      glyphCount.toJS,
      fontSize.toJS,
      padding.toJS,
      packMethod.toJS,
    ]),
  );

  @override
  void UnloadFontData(
    StructPointer<GlyphInfoD> glyphs,
    int glyphCount,
  ) => _wasm.UnloadFontData.run([
    glyphs.toJS,
    glyphCount.toJS,
  ]);

  @override
  void UnloadFont(
    FontD font,
  ) => _wasm.UnloadFont.run([
    rl.Temp.Font$.Ref1(font).toJS,
  ]);

  @override
  bool ExportFontAsCode(
    FontD font,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportFontAsCode.run([
    rl.Temp.Font$.Ref1(font).toJS,
    fileName.toJS,
  ]).toBool();

  @override
  void DrawFPS(
    int posX,
    int posY,
  ) => _wasm.DrawFPS.run([
    posX.toJS,
    posY.toJS,
  ]);

  @override
  void DrawText(
    MemoryPointer<RChar> text,
    int posX,
    int posY,
    int fontSize,
    ColorD color,
  ) => _wasm.DrawText.run([
    text.toJS,
    posX.toJS,
    posY.toJS,
    fontSize.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawTextEx(
    FontD font,
    MemoryPointer<RChar> text,
    Vector2D position,
    double fontSize,
    double spacing,
    ColorD tint,
  ) => _wasm.DrawTextEx.run([
    rl.Temp.Font$.Ref1(font).toJS,
    text.toJS,
    rl.Temp.Vector2$.Ref1(position).toJS,
    fontSize.toJS,
    spacing.toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  void DrawTextPro(
    FontD font,
    MemoryPointer<RChar> text,
    Vector2D position,
    Vector2D origin,
    double rotation,
    double fontSize,
    double spacing,
    ColorD tint,
  ) => _wasm.DrawTextPro.run([
    rl.Temp.Font$.Ref1(font).toJS,
    text.toJS,
    rl.Temp.Vector2$.Ref1(position).toJS,
    rl.Temp.Vector2$.Ref2(origin).toJS,
    rotation.toJS,
    fontSize.toJS,
    spacing.toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  void DrawTextCodepoint(
    FontD font,
    int codepoint,
    Vector2D position,
    double fontSize,
    ColorD tint,
  ) => _wasm.DrawTextCodepoint.run([
    rl.Temp.Font$.Ref1(font).toJS,
    codepoint.toJS,
    rl.Temp.Vector2$.Ref1(position).toJS,
    fontSize.toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  void DrawTextCodepoints(
    FontD font,
    MemoryPointer<RInt> codepoints,
    int codepointCount,
    Vector2D position,
    double fontSize,
    double spacing,
    ColorD tint,
  ) => _wasm.DrawTextCodepoints.run([
    rl.Temp.Font$.Ref1(font).toJS,
    codepoints.toJS,
    codepointCount.toJS,
    rl.Temp.Vector2$.Ref1(position).toJS,
    fontSize.toJS,
    spacing.toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  void SetTextLineSpacing(
    int spacing,
  ) => _wasm.SetTextLineSpacing.run([
    spacing.toJS,
  ]);

  @override
  int MeasureText(
    MemoryPointer<RChar> text,
    int fontSize,
  ) => _wasm.MeasureText.run([
    text.toJS,
    fontSize.toJS,
  ]).toInt();

  @override
  Vector2D MeasureTextEx(
    FontD font,
    MemoryPointer<RChar> text,
    double fontSize,
    double spacing,
  ) => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.MeasureTextEx.run([
      p.toJS,
      rl.Temp.Font$.Ref1(font).toJS,
      text.toJS,
      fontSize.toJS,
      spacing.toJS,
    ]),
  );

  @override
  Vector2D MeasureTextCodepoints(
    FontD font,
    MemoryPointer<RInt> codepoints,
    int length,
    double fontSize,
    double spacing,
  ) => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.MeasureTextCodepoints.run([
      p.toJS,
      rl.Temp.Font$.Ref1(font).toJS,
      codepoints.toJS,
      length.toJS,
      fontSize.toJS,
      spacing.toJS,
    ]),
  );

  @override
  int GetGlyphIndex(
    FontD font,
    int codepoint,
  ) => _wasm.GetGlyphIndex.run([
    rl.Temp.Font$.Ref1(font).toJS,
    codepoint.toJS,
  ]).toInt();

  @override
  GlyphInfoD GetGlyphInfo(
    FontD font,
    int codepoint,
  ) => rl.Temp.GlyphInfo$.Extract1(
    (p) => _wasm.GetGlyphInfo.run([
      p.toJS,
      rl.Temp.Font$.Ref1(font).toJS,
      codepoint.toJS,
    ]),
  );

  @override
  RectangleD GetGlyphAtlasRec(
    FontD font,
    int codepoint,
  ) => rl.Temp.Rectangle$.Extract1(
    (p) => _wasm.GetGlyphAtlasRec.run([
      p.toJS,
      rl.Temp.Font$.Ref1(font).toJS,
      codepoint.toJS,
    ]),
  );

  @override
  WasmMemoryPointer<RChar> LoadUTF8(
    MemoryPointer<RInt> codepoints,
    int length,
  ) => _wasm.LoadUTF8.run([
    codepoints.toJS,
    length.toJS,
  ]).asMemoryPointer();

  @override
  void UnloadUTF8(
    MemoryPointer<RChar> text,
  ) => _wasm.UnloadUTF8.run([
    text.toJS,
  ]);

  @override
  WasmMemoryPointer<RInt> LoadCodepoints(
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> count,
  ) => _wasm.LoadCodepoints.run([
    text.toJS,
    count.toJS,
  ]).asMemoryPointer();

  @override
  void UnloadCodepoints(
    MemoryPointer<RInt> codepoints,
  ) => _wasm.UnloadCodepoints.run([
    codepoints.toJS,
  ]);

  @override
  int GetCodepointCount(
    MemoryPointer<RChar> text,
  ) => _wasm.GetCodepointCount.run([
    text.toJS,
  ]).toInt();

  @override
  int GetCodepoint(
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> codepointSize,
  ) => _wasm.GetCodepoint.run([
    text.toJS,
    codepointSize.toJS,
  ]).toInt();

  @override
  int GetCodepointNext(
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> codepointSize,
  ) => _wasm.GetCodepointNext.run([
    text.toJS,
    codepointSize.toJS,
  ]).toInt();

  @override
  int GetCodepointPrevious(
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> codepointSize,
  ) => _wasm.GetCodepointPrevious.run([
    text.toJS,
    codepointSize.toJS,
  ]).toInt();

  @override
  WasmMemoryPointer<RChar> CodepointToUTF8(
    int codepoint,
    MemoryPointer<RInt> utf8Size,
  ) => _wasm.CodepointToUTF8.run([
    codepoint.toJS,
    utf8Size.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RPointer<RChar>> LoadTextLines(
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> count,
  ) => _wasm.LoadTextLines.run([
    text.toJS,
    count.toJS,
  ]).asMemoryPointer();

  @override
  void UnloadTextLines(
    MemoryPointer<RPointer<RChar>> text,
    int lineCount,
  ) => _wasm.UnloadTextLines.run([
    text.toJS,
    lineCount.toJS,
  ]);

  @override
  int TextCopy(
    MemoryPointer<RChar> dst,
    MemoryPointer<RChar> src,
  ) => _wasm.TextCopy.run([
    dst.toJS,
    src.toJS,
  ]).toInt();

  @override
  bool TextIsEqual(
    MemoryPointer<RChar> text1,
    MemoryPointer<RChar> text2,
  ) => _wasm.TextIsEqual.run([
    text1.toJS,
    text2.toJS,
  ]).toBool();

  @override
  int TextLength(
    MemoryPointer<RChar> text,
  ) => _wasm.TextLength.run([
    text.toJS,
  ]).toInt();

  @override
  WasmMemoryPointer<RChar> TextSubtext(
    MemoryPointer<RChar> text,
    int position,
    int length,
  ) => _wasm.TextSubtext.run([
    text.toJS,
    position.toJS,
    length.toJS
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextRemoveSpaces(
    MemoryPointer<RChar> text,
  ) => _wasm.TextRemoveSpaces.run([
    text.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> GetTextBetween(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> begin,
    MemoryPointer<RChar> end,
  ) => _wasm.GetTextBetween.run([
    text.toJS,
    begin.toJS,
    end.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextReplace(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> replace,
    MemoryPointer<RChar> by,
  ) => _wasm.TextReplace.run([
    text.toJS,
    replace.toJS,
    by.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextReplaceAlloc(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> replace,
    MemoryPointer<RChar> by,
  ) => _wasm.TextReplaceAlloc.run([
    text.toJS,
    replace.toJS,
    by.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextReplaceBetween(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> begin,
    MemoryPointer<RChar> end,
    MemoryPointer<RChar> replacement,
  ) => _wasm.TextReplaceBetween.run([
    text.toJS,
    begin.toJS,
    end.toJS,
    replacement.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextReplaceBetweenAlloc(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> begin,
    MemoryPointer<RChar> end,
    MemoryPointer<RChar> replacement,
  ) => _wasm.TextReplaceBetweenAlloc.run([
    text.toJS,
    begin.toJS,
    end.toJS,
    replacement.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextInsert(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> insert,
    int position,
  ) => _wasm.TextInsert.run([
    text.toJS,
    insert.toJS,
    position.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextInsertAlloc(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> insert,
    int position,
  ) => _wasm.TextInsertAlloc.run([
    text.toJS,
    insert.toJS,
    position.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextJoin(
    MemoryPointer<RPointer<RChar>> textList,
    int count,
    MemoryPointer<RChar> delimiter,
  ) => _wasm.TextJoin.run([
    textList.toJS,
    count.toJS,
    delimiter.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RPointer<RChar>> TextSplit(
    MemoryPointer<RChar> text,
    int delimiter,
    MemoryPointer<RInt> count,
  ) => _wasm.TextSplit.run([
    text.toJS,
    delimiter.toJS,
    count.toJS,
  ]).asMemoryPointer();

  @override
  void TextAppend(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> append,
    MemoryPointer<RInt> position,
  ) => _wasm.TextAppend.run([
    text.toJS,
    append.toJS,
    position.toJS,
  ]);

  @override
  int TextFindIndex(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> find,
  ) => _wasm.TextFindIndex.run([
    text.toJS,
    find.toJS,
  ]).toInt();

  @override
  WasmMemoryPointer<RChar> TextToUpper(
    MemoryPointer<RChar> text,
  ) => _wasm.TextToUpper.run([
    text.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextToLower(
    MemoryPointer<RChar> text,
  ) => _wasm.TextToLower.run([
    text.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextToPascal(
    MemoryPointer<RChar> text,
  ) => _wasm.TextToPascal.run([
    text.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextToSnake(
    MemoryPointer<RChar> text,
  ) => _wasm.TextToSnake.run([
    text.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextToCamel(
    MemoryPointer<RChar> text,
  ) => _wasm.TextToCamel.run([
    text.toJS,
  ]).asMemoryPointer();

  @override
  int TextToInteger(
    MemoryPointer<RChar> text,
  ) => _wasm.TextToInteger.run([
    text.toJS,
  ]).toInt();

  @override
  double TextToFloat(
    MemoryPointer<RChar> text,
  ) => _wasm.TextToFloat.run([
    text.toJS,
  ]).toDouble();

  @override
  void DrawLine3D(
    Vector3D startPos,
    Vector3D endPos,
    ColorD color,
  ) => _wasm.DrawLine3D.run([
    rl.Temp.Vector3$.Ref1(startPos).toJS,
    rl.Temp.Vector3$.Ref2(endPos).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawPoint3D(
    Vector3D position,
    ColorD color,
  ) => _wasm.DrawPoint3D.run([
    rl.Temp.Vector3$.Ref1(position).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawCircle3D(
    Vector3D center,
    double radius,
    Vector3D rotationAxis,
    double rotationAngle,
    ColorD color,
  ) => _wasm.DrawCircle3D.run([
    rl.Temp.Vector3$.Ref1(center).toJS,
    radius.toJS,
    rl.Temp.Vector3$.Ref2(rotationAxis).toJS,
    rotationAngle.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawTriangle3D(
    Vector3D v1,
    Vector3D v2,
    Vector3D v3,
    ColorD color,
  ) => _wasm.DrawTriangle3D.run([
    rl.Temp.Vector3$.Ref1(v1).toJS,
    rl.Temp.Vector3$.Ref2(v2).toJS,
    rl.Temp.Vector3$.Ref3(v3).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawTriangleStrip3D(
    StructPointer<Vector3D> points,
    int pointCount,
    ColorD color,
  ) => _wasm.DrawTriangleStrip3D.run([
    points.toJS,
    pointCount.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawCube(
    Vector3D position,
    double width,
    double height,
    double length,
    ColorD color,
  ) => _wasm.DrawCube.run([
    rl.Temp.Vector3$.Ref1(position).toJS,
    width.toJS,
    height.toJS,
    length.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawCubeV(
    Vector3D position,
    Vector3D size,
    ColorD color,
  ) => _wasm.DrawCubeV.run([
    rl.Temp.Vector3$.Ref1(position).toJS,
    rl.Temp.Vector3$.Ref2(size).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawCubeWires(
    Vector3D position,
    double width,
    double height,
    double length,
    ColorD color,
  ) => _wasm.DrawCubeWires.run([
    rl.Temp.Vector3$.Ref1(position).toJS,
    width.toJS,
    height.toJS,
    length.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawCubeWiresV(
    Vector3D position,
    Vector3D size,
    ColorD color,
  ) => _wasm.DrawCubeWiresV.run([
    rl.Temp.Vector3$.Ref1(position).toJS,
    rl.Temp.Vector3$.Ref2(size).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawSphere(
    Vector3D centerPos,
    double radius,
    ColorD color,
  ) => _wasm.DrawSphere.run([
    rl.Temp.Vector3$.Ref1(centerPos).toJS,
    radius.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawSphereEx(
    Vector3D centerPos,
    double radius,
    int rings,
    int slices,
    ColorD color,
  ) => _wasm.DrawSphereEx.run([
    rl.Temp.Vector3$.Ref1(centerPos).toJS,
    radius.toJS,
    rings.toJS,
    slices.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawSphereWires(
    Vector3D centerPos,
    double radius,
    int rings,
    int slices,
    ColorD color,
  ) => _wasm.DrawSphereWires.run([
    rl.Temp.Vector3$.Ref1(centerPos).toJS,
    radius.toJS,
    rings.toJS,
    slices.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawCylinder(
    Vector3D position,
    double radiusTop,
    double radiusBottom,
    double height,
    int slices,
    ColorD color,
  ) => _wasm.DrawCylinder.run([
    rl.Temp.Vector3$.Ref1(position).toJS,
    radiusTop.toJS,
    radiusBottom.toJS,
    height.toJS,
    slices.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawCylinderEx(
    Vector3D startPos,
    Vector3D endPos,
    double startRadius,
    double endRadius,
    int sides,
    ColorD color,
  ) => _wasm.DrawCylinderEx.run([
    rl.Temp.Vector3$.Ref1(startPos).toJS,
    rl.Temp.Vector3$.Ref2(endPos).toJS,
    startRadius.toJS,
    endRadius.toJS,
    sides.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawCylinderWires(
    Vector3D position,
    double radiusTop,
    double radiusBottom,
    double height,
    int slices,
    ColorD color,
  ) => _wasm.DrawCylinderWires.run([
    rl.Temp.Vector3$.Ref1(position).toJS,
    radiusTop.toJS,
    radiusBottom.toJS,
    height.toJS,
    slices.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawCylinderWiresEx(
    Vector3D startPos,
    Vector3D endPos,
    double startRadius,
    double endRadius,
    int sides,
    ColorD color,
  ) => _wasm.DrawCylinderWiresEx.run([
    rl.Temp.Vector3$.Ref1(startPos).toJS,
    rl.Temp.Vector3$.Ref2(endPos).toJS,
    startRadius.toJS,
    endRadius.toJS,
    sides.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawCapsule(
    Vector3D startPos,
    Vector3D endPos,
    double radius,
    int slices,
    int rings,
    ColorD color,
  ) => _wasm.DrawCapsule.run([
    rl.Temp.Vector3$.Ref1(startPos).toJS,
    rl.Temp.Vector3$.Ref2(endPos).toJS,
    radius.toJS,
    slices.toJS,
    rings.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawCapsuleWires(
    Vector3D startPos,
    Vector3D endPos,
    double radius,
    int slices,
    int rings,
    ColorD color,
  ) => _wasm.DrawCapsuleWires.run([
    rl.Temp.Vector3$.Ref1(startPos).toJS,
    rl.Temp.Vector3$.Ref2(endPos).toJS,
    radius.toJS,
    slices.toJS,
    rings.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawPlane(
    Vector3D centerPos,
    Vector2D size,
    ColorD color,
  ) => _wasm.DrawPlane.run([
    rl.Temp.Vector3$.Ref1(centerPos).toJS,
    rl.Temp.Vector2$.Ref1(size).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawRay(
    RayD ray,
    ColorD color,
  ) => _wasm.DrawRay.run([
    rl.Temp.Ray$.Ref1(ray).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawGrid(
    int slices,
    double spacing,
  ) => _wasm.DrawGrid.run([
    slices.toJS,
    spacing.toJS,
  ]);

  @override
  ModelD LoadModel(
    MemoryPointer<RChar> fileName,
  ) => rl.Temp.Model$.RefCapture(
    RaylibCaptureIds.LoadModel,
    (p) => _wasm.LoadModel.run([
      p.toJS,
      fileName.toJS,
    ]),
  );

  @override
  ModelD LoadModelFromMesh(
    MeshD mesh,
  ) => rl.Temp.Model$.RefCapture(
    RaylibCaptureIds.LoadModelFromMesh,
    (p) => _wasm.LoadModelFromMesh.run([
      p.toJS,
      rl.Temp.Mesh$.Ref1(mesh).toJS,
    ]),
  );

  @override
  bool IsModelValid(
    ModelD model,
  ) => _wasm.IsModelValid.run([
    rl.Temp.Model$.Ref1(model).toJS,
  ]).toBool();

  @override
  void UnloadModel(
    ModelD model,
  ) => _wasm.UnloadModel.run([
    rl.Temp.Model$.Ref1(model).toJS,
  ]);

  @override
  BoundingBoxD GetModelBoundingBox(
    ModelD model,
  ) => rl.Temp.BoundingBox$.Extract1(
    (p) => _wasm.GetModelBoundingBox.run([
      p.toJS,
      rl.Temp.Model$.Ref1(model).toJS,
    ]),
  );

  @override
  void DrawModel(
    ModelD model,
    Vector3D position,
    double scale,
    ColorD tint,
  ) => _wasm.DrawModel.run([
    rl.Temp.Model$.Ref1(model).toJS,
    rl.Temp.Vector3$.Ref1(position).toJS,
    scale.toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  void DrawModelEx(
    ModelD model,
    Vector3D position,
    Vector3D rotationAxis,
    double rotationAngle,
    Vector3D scale,
    ColorD tint,
  ) => _wasm.DrawModelEx.run([
    rl.Temp.Model$.Ref1(model).toJS,
    rl.Temp.Vector3$.Ref1(position).toJS,
    rl.Temp.Vector3$.Ref2(rotationAxis).toJS,
    rotationAngle.toJS,
    rl.Temp.Vector3$.Ref3(scale).toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  void DrawModelWires(
    ModelD model,
    Vector3D position,
    double scale,
    ColorD tint,
  ) => _wasm.DrawModelWires.run([
    rl.Temp.Model$.Ref1(model).toJS,
    rl.Temp.Vector3$.Ref1(position).toJS,
    scale.toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  void DrawModelWiresEx(
    ModelD model,
    Vector3D position,
    Vector3D rotationAxis,
    double rotationAngle,
    Vector3D scale,
    ColorD tint,
  ) => _wasm.DrawModelWiresEx.run([
    rl.Temp.Model$.Ref1(model).toJS,
    rl.Temp.Vector3$.Ref1(position).toJS,
    rl.Temp.Vector3$.Ref2(rotationAxis).toJS,
    rotationAngle.toJS,
    rl.Temp.Vector3$.Ref3(scale).toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  void DrawBoundingBox(
    BoundingBoxD box,
    ColorD color,
  ) => _wasm.DrawBoundingBox.run([
    rl.Temp.BoundingBox$.Ref1(box).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawBillboard(
    Camera3DD camera,
    TextureD texture,
    Vector3D position,
    double scale,
    ColorD tint,
  ) => _wasm.DrawBillboard.run([
    rl.Temp.Camera3D$.Ref1(camera).toJS,
    rl.Temp.Texture$.Ref1(texture).toJS,
    rl.Temp.Vector3$.Ref1(position).toJS,
    scale.toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  void DrawBillboardRec(
    Camera3DD camera,
    TextureD texture,
    RectangleD source,
    Vector3D position,
    Vector2D size,
    ColorD tint,
  ) => _wasm.DrawBillboardRec.run([
    rl.Temp.Camera3D$.Ref1(camera).toJS,
    rl.Temp.Texture$.Ref1(texture).toJS,
    rl.Temp.Rectangle$.Ref1(source).toJS,
    rl.Temp.Vector3$.Ref1(position).toJS,
    rl.Temp.Vector2$.Ref1(size).toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  @Deprecated(
    "Broken by a dart:ffi bug: the trailing Color argument gets corrupted "
    "(or crashes) once the preceding float-only args exceed the CPU's 8 "
    "float registers. Use DrawBillboard/DrawBillboardRec, or wait for the fix. "
    "See dart-lang/sdk#63976."
  )
  void DrawBillboardPro(
    Camera3DD camera,
    TextureD texture,
    RectangleD source,
    Vector3D position,
    Vector3D up,
    Vector2D size,
    Vector2D origin,
    double rotation,
    ColorD tint,
  ) => _wasm.DrawBillboardPro.run([
    rl.Temp.Camera3D$.Ref1(camera).toJS,
    rl.Temp.Texture$.Ref1(texture).toJS,
    rl.Temp.Rectangle$.Ref1(source).toJS,
    rl.Temp.Vector3$.Ref1(position).toJS,
    rl.Temp.Vector3$.Ref2(up).toJS,
    rl.Temp.Vector2$.Ref1(size).toJS,
    rl.Temp.Vector2$.Ref2(origin).toJS,
    rotation.toJS,
    rl.Temp.Color$.Ref1(tint).toJS,
  ]);

  @override
  void UploadMesh(
    StructPointer<MeshD> mesh,
    bool dynamic,
  ) => _wasm.UploadMesh.run([
    mesh.toJS,
    dynamic.toJS,
  ]);

  @override
  void UpdateMeshBuffer(
    MeshD mesh,
    int index,
    MemoryPointer<RVoid> data,
    int dataSize,
    int offset,
  ) => _wasm.UpdateMeshBuffer.run([
    rl.Temp.Mesh$.Ref1(mesh).toJS,
    index.toJS,
    data.toJS,
    dataSize.toJS,
    offset.toJS,
  ]);

  @override
  void UnloadMesh(
    MeshD mesh,
  ) => _wasm.UnloadMesh.run([
    rl.Temp.Mesh$.Ref1(mesh).toJS,
  ]);

  @override
  void DrawMesh(
    MeshD mesh,
    MaterialD material,
    MatrixD transform,
  ) => _wasm.DrawMesh.run([
    rl.Temp.Mesh$.Ref1(mesh).toJS,
    rl.Temp.Material$.Ref1(material).toJS,
    rl.Temp.Matrix$.Ref1(transform).toJS,
  ]);

  @override
  void DrawMeshInstanced(
    MeshD mesh,
    MaterialD material,
    StructPointer<MatrixD> transforms,
    int instances,
  ) => _wasm.DrawMeshInstanced.run([
    rl.Temp.Mesh$.Ref1(mesh).toJS,
    rl.Temp.Material$.Ref1(material).toJS,
    transforms.toJS,
    instances.toJS,
  ]);

  @override
  BoundingBoxD GetMeshBoundingBox(
    MeshD mesh,
  ) => rl.Temp.BoundingBox$.Extract1(
    (p) => _wasm.GetMeshBoundingBox.run([
      p.toJS,
      rl.Temp.Mesh$.Ref1(mesh).toJS,
    ]),
  );

  @override
  void GenMeshTangents(
    StructPointer<MeshD> mesh,
  ) => _wasm.GenMeshTangents.run([
    mesh.toJS,
  ]);

  @override
  bool ExportMesh(
    MeshD mesh,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportMesh.run([
    rl.Temp.Mesh$.Ref1(mesh).toJS,
    fileName.toJS,
  ]).toBool();

  @override
  bool ExportMeshAsCode(
    MeshD mesh,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportMeshAsCode.run([
    rl.Temp.Mesh$.Ref1(mesh).toJS,
    fileName.toJS,
  ]).toBool();

  @override
  MeshD GenMeshPoly(
    int sides,
    double radius,
  ) => rl.Temp.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshPoly,
    (p) => _wasm.GenMeshPoly.run([
      p.toJS,
      sides.toJS,
      radius.toJS,
    ]),
  );

  @override
  MeshD GenMeshPlane(
    double width,
    double length,
    int resX,
    int resZ,
  ) => rl.Temp.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshPlane,
    (p) => _wasm.GenMeshPlane.run([
      p.toJS,
      width.toJS,
      length.toJS,
      resX.toJS,
      resZ.toJS,
    ]),
  );

  @override
  MeshD GenMeshCube(
    double width,
    double height,
    double length,
  ) => rl.Temp.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshCube,
    (p) => _wasm.GenMeshCube.run([
      p.toJS,
      width.toJS,
      height.toJS,
      length.toJS,
    ]),
  );

  @override
  MeshD GenMeshSphere(
    double radius,
    int rings,
    int slices,
  ) => rl.Temp.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshSphere,
    (p) => _wasm.GenMeshSphere.run([
      p.toJS,
      radius.toJS,
      rings.toJS,
      slices.toJS,
    ]),
  );

  @override
  MeshD GenMeshHemiSphere(
    double radius,
    int rings,
    int slices,
  ) => rl.Temp.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshHemiSphere,
    (p) => _wasm.GenMeshHemiSphere.run([
      p.toJS,
      radius.toJS,
      rings.toJS,
      slices.toJS,
    ]),
  );

  @override
  MeshD GenMeshCylinder(
    double radius,
    double height,
    int slices,
  ) => rl.Temp.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshCylinder,
    (p) => _wasm.GenMeshCylinder.run([
      p.toJS,
      radius.toJS,
      height.toJS,
      slices.toJS,
    ]),
  );

  @override
  MeshD GenMeshCone(
    double radius,
    double height,
    int slices,
  ) => rl.Temp.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshCone,
    (p) => _wasm.GenMeshCone.run([
      p.toJS,
      radius.toJS,
      height.toJS,
      slices.toJS,
    ]),
  );

  @override
  MeshD GenMeshTorus(
    double radius,
    double size,
    int radSeg,
    int sides,
  ) => rl.Temp.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshTorus,
    (p) => _wasm.GenMeshTorus.run([
      p.toJS,
      radius.toJS,
      size.toJS,
      radSeg.toJS,
      sides.toJS,
    ]),
  );

  @override
  MeshD GenMeshKnot(
    double radius,
    double size,
    int radSeg,
    int sides,
  ) => rl.Temp.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshKnot,
    (p) => _wasm.GenMeshKnot.run([
      p.toJS,
      radius.toJS,
      size.toJS,
      radSeg.toJS,
      sides.toJS,
    ]),
  );

  @override
  MeshD GenMeshHeightmap(
    ImageD heightmap,
    Vector3D size,
  ) => rl.Temp.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshHeightmap,
    (p) => _wasm.GenMeshHeightmap.run([
      p.toJS,
      rl.Temp.Image$.Ref1(heightmap).toJS,
      rl.Temp.Vector3$.Ref1(size).toJS,
    ]),
  );

  @override
  MeshD GenMeshCubicmap(
    ImageD cubicmap,
    Vector3D cubeSize,
  ) => rl.Temp.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshCubicmap,
    (p) => _wasm.GenMeshCubicmap.run([
      p.toJS,
      rl.Temp.Image$.Ref1(cubicmap).toJS,
      rl.Temp.Vector3$.Ref1(cubeSize).toJS,
    ]),
  );

  @override
  StructPointer<MaterialD> LoadMaterials(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RInt> materialCount,
  ) => MaterialD.pointer(_wasm.LoadMaterials.run([
    fileName.toJS,
    materialCount.toJS,
  ]).asMemoryPointer());

  @override
  MaterialD LoadMaterialDefault() => rl.Temp.Material$.RefCapture(
    RaylibCaptureIds.LoadMaterialDefault,
    (p) => _wasm.LoadMaterialDefault.run([
      p.toJS,
    ]),
  );

  @override
  bool IsMaterialValid(
    MaterialD material,
  ) => _wasm.IsMaterialValid.run([
    rl.Temp.Material$.Ref1(material).toJS,
  ]).toBool();

  @override
  void UnloadMaterial(
    MaterialD material,
  ) => _wasm.UnloadMaterial.run([
    rl.Temp.Material$.Ref1(material).toJS,
  ]);

  @override
  void SetMaterialTexture(
    StructPointer<MaterialD> material,
    int mapType,
    TextureD texture,
  ) => _wasm.SetMaterialTexture.run([
    material.toJS,
    mapType.toJS,
    rl.Temp.Texture$.Ref1(texture).toJS,
  ]);

  @override
  void SetModelMeshMaterial(
    StructPointer<ModelD> model,
    int meshId,
    int materialId,
  ) => _wasm.SetModelMeshMaterial.run([
    model.toJS,
    meshId.toJS,
    materialId.toJS,
  ]);

  @override
  StructPointer<ModelAnimationD> LoadModelAnimations(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RInt> animCount,
  ) => ModelAnimationD.pointer(_wasm.LoadModelAnimations.run([
    fileName.toJS,
    animCount.toJS,
  ]).asMemoryPointer());

  @override
  void UpdateModelAnimation(
    ModelD model,
    ModelAnimationD anim,
    double frame,
  ) => _wasm.UpdateModelAnimation.run([
    rl.Temp.Model$.Ref1(model).toJS,
    rl.Temp.ModelAnimation$.Ref1(anim).toJS,
    frame.toJS,
  ]);

  @override
  void UpdateModelAnimationEx(
    ModelD model,
    ModelAnimationD animA,
    double frameA,
    ModelAnimationD animB,
    double frameB,
    double blend,
  ) => _wasm.UpdateModelAnimationEx.run([
    rl.Temp.Model$.Ref1(model).toJS,
    rl.Temp.ModelAnimation$.Ref1(animA).toJS,
    frameA.toJS,
    rl.Temp.ModelAnimation$.Ref2(animB).toJS,
    frameB.toJS,
    blend.toJS,
  ]);

  @override
  void UnloadModelAnimations(
    StructPointer<ModelAnimationD> animations,
    int animCount,
  ) => _wasm.UnloadModelAnimations.run([
    animations.toJS,
    animCount.toJS,
  ]);

  @override
  bool IsModelAnimationValid(
    ModelD model,
    ModelAnimationD anim,
  ) => _wasm.IsModelAnimationValid.run([
    rl.Temp.Model$.Ref1(model).toJS,
    rl.Temp.ModelAnimation$.Ref1(anim).toJS,
  ]).toBool();

  @override
  bool CheckCollisionSpheres(
    Vector3D center1,
    double radius1,
    Vector3D center2,
    double radius2,
  ) => _wasm.CheckCollisionSpheres.run([
    rl.Temp.Vector3$.Ref1(center1).toJS,
    radius1.toJS,
    rl.Temp.Vector3$.Ref2(center2).toJS,
    radius2.toJS,
  ]).toBool();

  @override
  bool CheckCollisionBoxes(
    BoundingBoxD box1,
    BoundingBoxD box2,
  ) => _wasm.CheckCollisionBoxes.run([
    rl.Temp.BoundingBox$.Ref1(box1).toJS,
    rl.Temp.BoundingBox$.Ref2(box2).toJS,
  ]).toBool();

  @override
  bool CheckCollisionBoxSphere(
    BoundingBoxD box,
    Vector3D center,
    double radius,
  ) => _wasm.CheckCollisionBoxSphere.run([
    rl.Temp.BoundingBox$.Ref1(box).toJS,
    rl.Temp.Vector3$.Ref1(center).toJS,
    radius.toJS,
  ]).toBool();

  @override
  RayCollisionD GetRayCollisionSphere(
    RayD ray,
    Vector3D center,
    double radius,
  ) => rl.Temp.RayCollision$.Extract1(
    (p) => _wasm.GetRayCollisionSphere.run([
      p.toJS,
      rl.Temp.Ray$.Ref1(ray).toJS,
      rl.Temp.Vector3$.Ref1(center).toJS,
      radius.toJS,
    ]),
  );

  @override
  RayCollisionD GetRayCollisionBox(
    RayD ray,
    BoundingBoxD box,
  ) => rl.Temp.RayCollision$.Extract1(
    (p) => _wasm.GetRayCollisionBox.run([
      p.toJS,
      rl.Temp.Ray$.Ref1(ray).toJS,
      rl.Temp.BoundingBox$.Ref1(box).toJS,
    ]),
  );

  @override
  RayCollisionD GetRayCollisionMesh(
    RayD ray,
    MeshD mesh,
    MatrixD transform,
  ) => rl.Temp.RayCollision$.Extract1(
    (p) => _wasm.GetRayCollisionMesh.run([
      p.toJS,
      rl.Temp.Ray$.Ref1(ray).toJS,
      rl.Temp.Mesh$.Ref1(mesh).toJS,
      rl.Temp.Matrix$.Ref1(transform).toJS,
    ]),
  );

  @override
  RayCollisionD GetRayCollisionTriangle(
    RayD ray,
    Vector3D p1,
    Vector3D p2,
    Vector3D p3,
  ) => rl.Temp.RayCollision$.Extract1(
    (p) => _wasm.GetRayCollisionTriangle.run([
      p.toJS,
      rl.Temp.Ray$.Ref1(ray).toJS,
      rl.Temp.Vector3$.Ref1(p1).toJS,
      rl.Temp.Vector3$.Ref2(p2).toJS,
      rl.Temp.Vector3$.Ref3(p3).toJS,
    ]),
  );

  @override
  RayCollisionD GetRayCollisionQuad(
    RayD ray,
    Vector3D p1,
    Vector3D p2,
    Vector3D p3,
    Vector3D p4,
  ) => rl.Temp.RayCollision$.Extract1(
    (p) => _wasm.GetRayCollisionQuad.run([
      p.toJS,
      rl.Temp.Ray$.Ref1(ray).toJS,
      rl.Temp.Vector3$.Ref1(p1).toJS,
      rl.Temp.Vector3$.Ref2(p2).toJS,
      rl.Temp.Vector3$.Ref3(p3).toJS,
      rl.Temp.Vector3$.Ref4(p4).toJS,
    ]),
  );
}