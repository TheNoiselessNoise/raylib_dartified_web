part of '../../../raylib_dartified_web.dart';

class RaylibCoreFlat extends RaylibCoreFlatModule<Raylib> {

  RaylibCoreFlat(super.rl);

  @override
  void InitWindow(
    int width,
    int height,
    MemoryPointer<RChar> title,
  ) => rl.Core.InitWindow.run([
    width.toJS,
    height.toJS,
    title.toJS,
  ]);

  @override
  void CloseWindow() => rl.Core.CloseWindow.run();

  @override
  bool WindowShouldClose() => rl.Core.WindowShouldClose.run().toBool();

  @override
  bool IsWindowReady() => rl.Core.IsWindowReady.run().toBool();

  @override
  bool IsWindowFullscreen() => rl.Core.IsWindowFullscreen.run().toBool();

  @override
  bool IsWindowHidden() => rl.Core.IsWindowHidden.run().toBool();

  @override
  bool IsWindowMinimized() => rl.Core.IsWindowMinimized.run().toBool();

  @override
  bool IsWindowMaximized() => rl.Core.IsWindowMaximized.run().toBool();

  @override
  bool IsWindowFocused() => rl.Core.IsWindowFocused.run().toBool();

  @override
  bool IsWindowResized() => rl.Core.IsWindowResized.run().toBool();

  @override
  bool IsWindowState(
    int flag,
  ) => rl.Core.IsWindowState.run([
    flag.toJS,
  ]).toBool();

  @override
  void SetWindowState(
    int flags,
  ) => rl.Core.SetWindowState.run([
    flags.toJS,
  ]);

  @override
  void ClearWindowState(
    int flags,
  ) => rl.Core.ClearWindowState.run([
    flags.toJS,
  ]);

  @override
  void ToggleFullscreen() => rl.Core.ToggleFullscreen.run();

  @override
  void ToggleBorderlessWindowed() => rl.Core.ToggleBorderlessWindowed.run();

  @override
  void MaximizeWindow() => rl.Core.MaximizeWindow.run();

  @override
  void MinimizeWindow() => rl.Core.MinimizeWindow.run();

  @override
  void RestoreWindow() => rl.Core.RestoreWindow.run();

  @override
  void SetWindowIcon(
    ImageD image,
  ) => rl.Core.SetWindowIcon.run([
    rl.Temp.Image$.Ref1(image).toJS,
  ]);

  @override
  void SetWindowIcons(
    StructPointer<ImageD> images,
    int count,
  ) => rl.Core.SetWindowIcons.run([
    images.toJS,
    count.toJS,
  ]);

  @override
  void SetWindowTitle(
    MemoryPointer<RChar> title,
  ) => rl.Core.SetWindowTitle.run([
    title.toJS,
  ]);

  @override
  void SetWindowPosition(
    int x,
    int y,
  ) => rl.Core.SetWindowPosition.run([
    x.toJS,
    y.toJS,
  ]);

  @override
  void SetWindowMonitor(
    int monitor,
  ) => rl.Core.SetWindowMonitor.run([
    monitor.toJS,
  ]);

  @override
  void SetWindowMinSize(
    int width,
    int height,
  ) => rl.Core.SetWindowMinSize.run([
    width.toJS,
    height.toJS,
  ]);

  @override
  void SetWindowMaxSize(
    int width,
    int height,
  ) => rl.Core.SetWindowMaxSize.run([
    width.toJS,
    height.toJS,
  ]);

  @override
  void SetWindowSize(
    int width,
    int height,
  ) => rl.Core.SetWindowSize.run([
    width.toJS,
    height.toJS,
  ]);

  @override
  void SetWindowOpacity(
    double opacity,
  ) => rl.Core.SetWindowOpacity.run([
    opacity.toJS,
  ]);

  @override
  void SetWindowFocused() => rl.Core.SetWindowFocused.run();

  @override
  WasmMemoryPointer<RVoid> GetWindowHandle() => rl.Core.GetWindowHandle.run().asMemoryPointer();

  @override
  int GetScreenWidth() => rl.Core.GetScreenWidth.run().toInt();

  @override
  int GetScreenHeight() => rl.Core.GetScreenHeight.run().toInt();

  @override
  int GetRenderWidth() => rl.Core.GetRenderWidth.run().toInt();

  @override
  int GetRenderHeight() => rl.Core.GetRenderHeight.run().toInt();

  @override
  int GetMonitorCount() => rl.Core.GetMonitorCount.run().toInt();

  @override
  int GetCurrentMonitor() => rl.Core.GetCurrentMonitor.run().toInt();

  @override
  Vector2D GetMonitorPosition(
    int monitor,
  ) => rl.Temp.Vector2$.Extract1(
    (p) => rl.Core.GetMonitorPosition.run([
      p.toJS,
      monitor.toJS,
    ]),
  );

  @override
  int GetMonitorWidth(
    int monitor,
  ) => rl.Core.GetMonitorWidth.run([
    monitor.toJS,
  ]).toInt();

  @override
  int GetMonitorHeight(
    int monitor,
  ) => rl.Core.GetMonitorHeight.run([
    monitor.toJS,
  ]).toInt();

  @override
  int GetMonitorPhysicalWidth(
    int monitor,
  ) => rl.Core.GetMonitorPhysicalWidth.run([
    monitor.toJS,
  ]).toInt();

  @override
  int GetMonitorPhysicalHeight(
    int monitor,
  ) => rl.Core.GetMonitorPhysicalHeight.run([
    monitor.toJS,
  ]).toInt();

  @override
  int GetMonitorRefreshRate(
    int monitor,
  ) => rl.Core.GetMonitorRefreshRate.run([
    monitor.toJS,
  ]).toInt();

  @override
  Vector2D GetWindowPosition() => rl.Temp.Vector2$.Extract1(
    (p) => rl.Core.GetWindowPosition.run([
      p.toJS,
    ]),
  );

  @override
  Vector2D GetWindowScaleDPI() => rl.Temp.Vector2$.Extract1(
    (p) => rl.Core.GetWindowScaleDPI.run([
      p.toJS,
    ]),
  );

  @override
  WasmMemoryPointer<RChar> GetMonitorName(
    int monitor,
  ) => rl.Core.GetMonitorName.run([
    monitor.toJS,
  ]).asMemoryPointer();

  @override
  void SetClipboardText(
    MemoryPointer<RChar> text,
  ) => rl.Core.SetClipboardText.run([
    text.toJS,
  ]);

  @override
  WasmMemoryPointer<RChar> GetClipboardText() => rl.Core.GetClipboardText.run().asMemoryPointer();

  @override
  ImageD GetClipboardImage() => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.GetClipboardImage,
    (p) => rl.Core.GetClipboardImage.run([
      p.toJS,
    ]),
  );

  @override
  void EnableEventWaiting() => rl.Core.EnableEventWaiting.run();

  @override
  void DisableEventWaiting() => rl.Core.DisableEventWaiting.run();

  @override
  void ShowCursor() => rl.Core.ShowCursor.run();

  @override
  void HideCursor() => rl.Core.HideCursor.run();

  @override
  bool IsCursorHidden() => rl.Core.IsCursorHidden.run().toBool();

  @override
  void EnableCursor() => rl.Core.EnableCursor.run();

  @override
  void DisableCursor() => rl.Core.DisableCursor.run();

  @override
  bool IsCursorOnScreen() => rl.Core.IsCursorOnScreen.run().toBool();

  @override
  void ClearBackground(
    ColorD color,
  ) => rl.Core.ClearBackground.run([
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void BeginDrawing() => rl.Core.BeginDrawing.run();

  @override
  void EndDrawing() => rl.Core.EndDrawing.run();

  @override
  void BeginMode2D(
    Camera2DD camera,
  ) => rl.Core.BeginMode2D.run([
    rl.Temp.Camera2D$.Ref1(camera).toJS,
  ]);

  @override
  void EndMode2D() => rl.Core.EndMode2D.run();

  @override
  void BeginMode3D(
    Camera3DD camera,
  ) => rl.Core.BeginMode3D.run([
    rl.Temp.Camera3D$.Ref1(camera).toJS,
  ]);

  @override
  void EndMode3D() => rl.Core.EndMode3D.run();

  @override
  void BeginTextureMode(
    RenderTextureD target,
  ) => rl.Core.BeginTextureMode.run([
    rl.Temp.RenderTexture$.Ref1(target).toJS,
  ]);

  @override
  void EndTextureMode() => rl.Core.EndTextureMode.run();

  @override
  void BeginShaderMode(
    ShaderD shader,
  ) => rl.Core.BeginShaderMode.run([
    rl.Temp.Shader$.Ref1(shader).toJS,
  ]);

  @override
  void EndShaderMode() => rl.Core.EndShaderMode.run();

  @override
  void BeginBlendMode(
    int mode,
  ) => rl.Core.BeginBlendMode.run([
    mode.toJS,
  ]);

  @override
  void EndBlendMode() => rl.Core.EndBlendMode.run();

  @override
  void BeginScissorMode(
    int x,
    int y,
    int width,
    int height,
  ) => rl.Core.BeginScissorMode.run([
    x.toJS,
    y.toJS,
    width.toJS,
    height.toJS,
  ]);

  @override
  void EndScissorMode() => rl.Core.EndScissorMode.run();

  @override
  void BeginVrStereoMode(
    VrStereoConfigD config,
  ) => rl.Core.BeginVrStereoMode.run([
    rl.Temp.VrStereoConfig$.Ref1(config).toJS,
  ]);

  @override
  void EndVrStereoMode() => rl.Core.EndVrStereoMode.run();

  @override
  VrStereoConfigD LoadVrStereoConfig(
    VrDeviceInfoD device,
  ) => rl.Temp.VrStereoConfig$.RefCapture(
    RaylibCaptureIds.LoadVrStereoConfig,
    (p) => rl.Core.LoadVrStereoConfig.run([
      p.toJS,
      rl.Temp.VrDeviceInfo$.Ref1(device).toJS,
    ]),
  );

  @override
  void UnloadVrStereoConfig(
    VrStereoConfigD config,
  ) => rl.Core.UnloadVrStereoConfig.run([
    config.getOpAndDispose().toJS,
  ]);

  @override
  ShaderD LoadShader(
    MemoryPointer<RChar> vsFileName,
    MemoryPointer<RChar> fsFileName,
  ) => rl.Temp.Shader$.RefCapture(
    RaylibCaptureIds.LoadShader,
    (p) => rl.Core.LoadShader.run([
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
    (p) => rl.Core.LoadShaderFromMemory.run([
      p.toJS,
      vsCode.toJS,
      fsCode.toJS,
    ]),
  );

  @override
  bool IsShaderValid(
    ShaderD shader,
  ) => rl.Core.IsShaderValid.run([
    rl.Temp.Shader$.Ref1(shader).toJS,
  ]).toBool();

  @override
  int GetShaderLocation(
    ShaderD shader,
    MemoryPointer<RChar> uniformName,
  ) => rl.Core.GetShaderLocation.run([
    rl.Temp.Shader$.Ref1(shader).toJS,
    uniformName.toJS,
  ]).toInt();

  @override
  int GetShaderLocationAttrib(
    ShaderD shader,
    MemoryPointer<RChar> attribName,
  ) => rl.Core.GetShaderLocationAttrib.run([
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
  ) => rl.Core.SetShaderValueV.run([
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
  ) => rl.Core.SetShaderValueMatrix.run([
    rl.Temp.Shader$.Ref1(shader).toJS,
    locIndex.toJS,
    rl.Temp.Matrix$.Ref1(mat).toJS,
  ]);

  @override
  void SetShaderValueTexture(
    ShaderD shader,
    int locIndex,
    TextureD texture,
  ) => rl.Core.SetShaderValueTexture.run([
    rl.Temp.Shader$.Ref1(shader).toJS,
    locIndex.toJS,
    rl.Temp.Texture$.Ref1(texture).toJS,
  ]);

  @override
  void UnloadShader(
    ShaderD shader,
  ) => rl.Core.UnloadShader.run([
    shader.getOpAndDispose().toJS,
  ]);

  @override
  RayD GetScreenToWorldRay(
    Vector2D position,
    Camera3DD camera,
  ) => rl.Temp.Ray$.Extract1(
    (p) => rl.Core.GetScreenToWorldRay.run([
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
    (p) => rl.Core.GetScreenToWorldRay.run([
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
    (p) => rl.Core.GetWorldToScreen.run([
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
    (p) => rl.Core.GetWorldToScreenEx.run([
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
    (p) => rl.Core.GetWorldToScreen2D.run([
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
    (p) => rl.Core.GetScreenToWorld2D.run([
      p.toJS,
      rl.Temp.Vector2$.Ref2(position).toJS,
      rl.Temp.Camera2D$.Ref1(camera).toJS,
    ]),
  );

  @override
  MatrixD GetCameraMatrix(
    Camera3DD camera,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => rl.Core.GetCameraMatrix.run([
      p.toJS,
      rl.Temp.Camera3D$.Ref1(camera).toJS,
    ]),
  );

  @override
  MatrixD GetCameraMatrix2D(
    Camera2DD camera,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => rl.Core.GetCameraMatrix2D.run([
      p.toJS,
      rl.Temp.Camera2D$.Ref1(camera).toJS,
    ]),
  );

  @override
  void SetTargetFPS(
    int fps,
  ) => rl.Core.SetTargetFPS.run([
    fps.toJS,
  ]);

  @override
  double GetFrameTime() => rl.Core.GetFrameTime.run().toDouble();

  @override
  double GetTime() => rl.Core.GetTime.run().toDouble();

  @override
  int GetFPS() => rl.Core.GetFPS.run().toInt();

  @override
  void SwapScreenBuffer() => rl.Core.SwapScreenBuffer.run();

  @override
  void PollInputEvents() => rl.Core.PollInputEvents.run();

  @override
  void WaitTime(
    double seconds,
  ) => rl.Core.WaitTime.run([
    seconds.toJS,
  ]);

  @override
  void SetRandomSeed(
    int seed,
  ) => rl.Core.SetRandomSeed.run([
    seed.toJS,
  ]);

  @override
  int GetRandomValue(
    int min,
    int max,
  ) => rl.Core.GetRandomValue.run([
    min.toJS,
    max.toJS,
  ]).toInt();

  @override
  WasmMemoryPointer<RInt> LoadRandomSequence(
    int count,
    int min,
    int max,
  ) => rl.Core.LoadRandomSequence.run([
    count.toJS,
    min.toJS,
    max.toJS,
  ]).asMemoryPointer();

  @override
  void UnloadRandomSequence(
    MemoryPointer<RInt> sequence,
  ) => rl.Core.UnloadRandomSequence.run([
    sequence.toJS,
  ]);

  @override
  void TakeScreenshot(
    MemoryPointer<RChar> fileName,
  ) => rl.Core.TakeScreenshot.run([
    fileName.toJS,
  ]);

  @override
  void SetConfigFlags(
    int flags,
  ) => rl.Core.SetConfigFlags.run([
    flags.toJS,
  ]);

  @override
  void OpenURL(
    MemoryPointer<RChar> url,
  ) => rl.Core.OpenURL.run([
    url.toJS,
  ]);

  @override
  void TraceLog(
    int logLevel,
    MemoryPointer<RChar> text,
    // NOTE: missing va_list argument
  ) => rl.Core.TraceLog.run([
    logLevel.toJS,
    text.toJS,
  ]);

  @override
  void SetTraceLogLevel(
    int logLevel,
  ) => rl.Core.SetTraceLogLevel.run([
    logLevel.toJS,
  ]);

  @override
  void SetTraceLogCallback(
    MemoryPointer<RFunction<TraceLogCallbackBase>> callback,
  ) => rl.Core.SetTraceLogCallback.run([
    callback.toJS,
  ]);

  @override
  void SetLoadFileDataCallback(
    MemoryPointer<RFunction<LoadFileDataCallbackBase>> callback,
  ) => rl.Core.SetLoadFileDataCallback.run([
    callback.toJS,
  ]);

  @override
  void SetSaveFileDataCallback(
    MemoryPointer<RFunction<SaveFileDataCallbackBase>> callback,
  ) => rl.Core.SetSaveFileDataCallback.run([
    callback.toJS,
  ]);

  @override
  void SetLoadFileTextCallback(
    MemoryPointer<RFunction<LoadFileTextCallbackBase>> callback,
  ) => rl.Core.SetLoadFileTextCallback.run([
    callback.toJS,
  ]);

  @override
  void SetSaveFileTextCallback(
    MemoryPointer<RFunction<SaveFileTextCallbackBase>> callback,
  ) => rl.Core.SetSaveFileTextCallback.run([
    callback.toJS,
  ]);

  @override
  WasmMemoryPointer<RUnsignedChar> LoadFileData(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RInt> dataSize,
  ) => rl.Core.LoadFileData.run([
    fileName.toJS,
    dataSize.toJS,
  ]).asMemoryPointer();

  @override
  void UnloadFileData(
    MemoryPointer<RUnsignedChar> data,
  ) => rl.Core.UnloadFileData.run([
    data.toJS,
  ]);

  @override
  bool SaveFileData(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RVoid> data,
    int dataSize,
  ) => rl.Core.SaveFileData.run([
    fileName.toJS,
    data.toJS,
    dataSize.toJS,
  ]).toBool();

  @override
  bool ExportDataAsCode(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
    MemoryPointer<RChar> fileName,
  ) => rl.Core.ExportDataAsCode.run([
    data.toJS,
    dataSize.toJS,
    fileName.toJS,
  ]).toBool();

  @override
  WasmMemoryPointer<RChar> LoadFileText(
    MemoryPointer<RChar> fileName,
  ) => rl.Core.LoadFileText.run([
    fileName.toJS,
  ]).asMemoryPointer();

  @override
  void UnloadFileText(
    MemoryPointer<RChar> text,
  ) => rl.Core.UnloadFileText.run([
    text.toJS,
  ]);

  @override
  bool SaveFileText(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RChar> text,
  ) => rl.Core.SaveFileText.run([
    fileName.toJS,
    text.toJS,
  ]).toBool();

  @override
  int FileRename(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RChar> fileRename,
  ) => rl.Core.FileRename.run([
    fileName.toJS,
    fileRename.toJS,
  ]).toInt();

  @override
  int FileRemove(
    MemoryPointer<RChar> fileName,
  ) => rl.Core.FileRemove.run([
    fileName.toJS,
  ]).toInt();

  @override
  int FileCopy(
    MemoryPointer<RChar> srcPath,
    MemoryPointer<RChar> dstPath,
  ) => rl.Core.FileCopy.run([
    srcPath.toJS,
    dstPath.toJS,
  ]).toInt();

  @override
  int FileMove(
    MemoryPointer<RChar> srcPath,
    MemoryPointer<RChar> dstPath,
  ) => rl.Core.FileMove.run([
    srcPath.toJS,
    dstPath.toJS,
  ]).toInt();

  @override
  int FileTextReplace(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RChar> search,
    MemoryPointer<RChar> replacement,
  ) => rl.Core.FileTextReplace.run([
    fileName.toJS,
    search.toJS,
    replacement.toJS,
  ]).toInt();

  @override
  int FileTextFindIndex(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RChar> search,
  ) => rl.Core.FileTextFindIndex.run([
    fileName.toJS,
    search.toJS,
  ]).toInt();

  @override
  bool FileExists(
    MemoryPointer<RChar> fileName,
  ) => rl.Core.FileExists.run([
    fileName.toJS,
  ]).toBool();

  @override
  bool DirectoryExists(
    MemoryPointer<RChar> dirPath,
  ) => rl.Core.DirectoryExists.run([
    dirPath.toJS,
  ]).toBool();

  @override
  bool IsFileExtension(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RChar> ext,
  ) => rl.Core.IsFileExtension.run([
    fileName.toJS,
    ext.toJS,
  ]).toBool();

  @override
  int GetFileLength(
    MemoryPointer<RChar> fileName,
  ) => rl.Core.GetFileLength.run([
    fileName.toJS,
  ]).toInt();

  @override
  WasmMemoryPointer<RChar> GetFileExtension(
    MemoryPointer<RChar> fileName,
  ) => rl.Core.GetFileExtension.run([
    fileName.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> GetFileName(
    MemoryPointer<RChar> filePath,
  ) => rl.Core.GetFileName.run([
    filePath.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> GetFileNameWithoutExt(
    MemoryPointer<RChar> filePath,
  ) => rl.Core.GetFileNameWithoutExt.run([
    filePath.toJS,
  ]).asMemoryPointer();

  @override
  int GetDirectoryFileCount(
    MemoryPointer<RChar> dirPath,
  ) => rl.Core.GetDirectoryFileCount.run([
    dirPath.toJS,
  ]).toInt();

  @override
  int GetDirectoryFileCountEx(
    MemoryPointer<RChar> basePath,
    MemoryPointer<RChar> filter,
    bool scanSubdirs,
  ) => rl.Core.GetDirectoryFileCountEx.run([
    basePath.toJS,
    filter.toJS,
    scanSubdirs.toJS,
  ]).toInt();

  @override
  WasmMemoryPointer<RChar> GetDirectoryPath(
    MemoryPointer<RChar> filePath,
  ) => rl.Core.GetDirectoryPath.run([
    filePath.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> GetPrevDirectoryPath(
    MemoryPointer<RChar> dirPath,
  ) => rl.Core.GetPrevDirectoryPath.run([
    dirPath.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> GetWorkingDirectory() => rl.Core.GetWorkingDirectory.run().asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> GetApplicationDirectory() => rl.Core.GetApplicationDirectory.run().asMemoryPointer();

  @override
  int MakeDirectory(
    MemoryPointer<RChar> dirPath,
  ) => rl.Core.MakeDirectory.run([
    dirPath.toJS,
  ]).toInt();

  @override
  bool ChangeDirectory(
    MemoryPointer<RChar> dir,
  ) => rl.Core.ChangeDirectory.run([
    dir.toJS,
  ]).toBool();

  @override
  bool IsPathFile(
    MemoryPointer<RChar> path,
  ) => rl.Core.IsPathFile.run([
    path.toJS,
  ]).toBool();

  @override
  bool IsFileNameValid(
    MemoryPointer<RChar> fileName,
  ) => rl.Core.IsFileNameValid.run([
    fileName.toJS,
  ]).toBool();

  @override
  FilePathListD LoadDirectoryFiles(
    MemoryPointer<RChar> dirPath,
  ) => rl.Temp.FilePathList$.RefCapture(
    RaylibCaptureIds.LoadDirectoryFiles,
    (p) => rl.Core.LoadDirectoryFiles.run([
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
    (p) => rl.Core.LoadDirectoryFilesEx.run([
      p.toJS,
      basePath.toJS,
      filter.toJS,
      scanSubdirs.toJS,
    ]),
  );

  @override
  void UnloadDirectoryFiles(
    FilePathListD files,
  ) => rl.Core.UnloadDirectoryFiles.run([
    files.getOpAndDispose().toJS,
  ]);

  @override
  bool IsFileDropped() => rl.Core.IsFileDropped.run().toBool();

  @override
  FilePathListD LoadDroppedFiles() => rl.Temp.FilePathList$.RefCapture(
    RaylibCaptureIds.LoadDroppedFiles,
    (p) => rl.Core.LoadDroppedFiles.run([
      p.toJS,
    ]),
  );

  @override
  void UnloadDroppedFiles(
    FilePathListD files,
  ) => rl.Core.UnloadDroppedFiles.run([
    files.getOpAndDispose().toJS,
  ]);

  @override
  int GetFileModTime(
    MemoryPointer<RChar> fileName,
  ) => rl.Core.GetFileModTime.run([
    fileName.toJS,
  ]).toInt();

  @override
  WasmMemoryPointer<RUnsignedChar> CompressData(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
    MemoryPointer<RInt> compDataSize,
  ) => rl.Core.CompressData.run([
    data.toJS,
    dataSize.toJS,
    compDataSize.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RUnsignedChar> DecompressData(
    MemoryPointer<RUnsignedChar> compData,
    int compDataSize,
    MemoryPointer<RInt> dataSize,
  ) => rl.Core.DecompressData.run([
    compData.toJS,
    compDataSize.toJS,
    dataSize.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> EncodeDataBase64(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
    MemoryPointer<RInt> outputSize,
  ) => rl.Core.EncodeDataBase64.run([
    data.toJS,
    dataSize.toJS,
    outputSize.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RUnsignedChar> DecodeDataBase64(
    MemoryPointer<RChar> data,
    MemoryPointer<RInt> outputSize,
  ) => rl.Core.DecodeDataBase64.run([
    data.toJS,
    outputSize.toJS,
  ]).asMemoryPointer();

  @override
  int ComputeCRC32(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
  ) => rl.Core.ComputeCRC32.run([
    data.toJS,
    dataSize.toJS,
  ]).toInt();

  @override
  WasmMemoryPointer<RUnsignedInt> ComputeMD5(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
  ) => rl.Core.ComputeMD5.run([
    data.toJS,
    dataSize.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RUnsignedInt> ComputeSHA1(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
  ) => rl.Core.ComputeSHA1.run([
    data.toJS,
    dataSize.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RUnsignedInt> ComputeSHA256(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
  ) => rl.Core.ComputeSHA256.run([
    data.toJS,
    dataSize.toJS,
  ]).asMemoryPointer();

  @override
  AutomationEventListD LoadAutomationEventList(
    MemoryPointer<RChar> fileName,
  ) => rl.Temp.AutomationEventList$.RefCapture(
    RaylibCaptureIds.LoadAutomationEventList,
    (p) => rl.Core.LoadAutomationEventList.run([
      p.toJS,
      fileName.toJS,
    ]),
  );

  @override
  void UnloadAutomationEventList(
    AutomationEventListD list,
  ) => rl.Core.UnloadAutomationEventList.run([
    list.getOpAndDispose().toJS,
  ]);

  @override
  bool ExportAutomationEventList(
    AutomationEventListD list,
    MemoryPointer<RChar> fileName,
  ) => rl.Core.ExportAutomationEventList.run([
    rl.Temp.AutomationEventList$.Ref1(list).toJS,
    fileName.toJS,
  ]).toBool();

  @override
  void SetAutomationEventList(
    StructPointer<AutomationEventListD> list,
  ) => rl.Core.SetAutomationEventList.run([
    list.toJS,
  ]);

  @override
  void SetAutomationEventBaseFrame(
    int frame,
  ) => rl.Core.SetAutomationEventBaseFrame.run([
    frame.toJS,
  ]);

  @override
  void StartAutomationEventRecording() => rl.Core.StartAutomationEventRecording.run();

  @override
  void StopAutomationEventRecording() => rl.Core.StopAutomationEventRecording.run();

  @override
  void PlayAutomationEvent(
    AutomationEventD event,
  ) => rl.Core.PlayAutomationEvent.run([
    rl.Temp.AutomationEvent$.Ref1(event).toJS,
  ]);

  @override
  bool IsKeyPressed(
    int key,
  ) => rl.Core.IsKeyPressed.run([
    key.toJS,
  ]).toBool();

  @override
  bool IsKeyPressedRepeat(
    int key,
  ) => rl.Core.IsKeyPressedRepeat.run([
    key.toJS,
  ]).toBool();

  @override
  bool IsKeyDown(
    int key,
  ) => rl.Core.IsKeyDown.run([
    key.toJS,
  ]).toBool();

  @override
  bool IsKeyReleased(
    int key,
  ) => rl.Core.IsKeyReleased.run([
    key.toJS,
  ]).toBool();

  @override
  bool IsKeyUp(
    int key,
  ) => rl.Core.IsKeyUp.run([
    key.toJS,
  ]).toBool();

  @override
  WasmMemoryPointer<RChar> GetKeyName(
    int key,
  ) => rl.Core.GetKeyName.run([
    key.toJS,
  ]).asMemoryPointer();

  @override
  int GetKeyPressed() => rl.Core.GetKeyPressed.run().toInt();

  @override
  int GetCharPressed() => rl.Core.GetCharPressed.run().toInt();

  @override
  void SetExitKey(
    int key,
  ) => rl.Core.SetExitKey.run([
    key.toJS,
  ]);

  @override
  bool IsGamepadAvailable(
    int gamepad,
  ) => rl.Core.IsGamepadAvailable.run([
    gamepad.toJS,
  ]).toBool();

  @override
  WasmMemoryPointer<RChar> GetGamepadName(
    int gamepad,
  ) => rl.Core.GetGamepadName.run([
    gamepad.toJS,
  ]).asMemoryPointer();

  @override
  bool IsGamepadButtonPressed(
    int gamepad,
    int button,
  ) => rl.Core.IsGamepadButtonPressed.run([
    gamepad.toJS,
    button.toJS,
  ]).toBool();

  @override
  bool IsGamepadButtonDown(
    int gamepad,
    int button,
  ) => rl.Core.IsGamepadButtonDown.run([
    gamepad.toJS,
    button.toJS,
  ]).toBool();

  @override
  bool IsGamepadButtonReleased(
    int gamepad,
    int button,
  ) => rl.Core.IsGamepadButtonReleased.run([
    gamepad.toJS,
    button.toJS,
  ]).toBool();

  @override
  bool IsGamepadButtonUp(
    int gamepad,
    int button,
  ) => rl.Core.IsGamepadButtonUp.run([
    gamepad.toJS,
    button.toJS,
  ]).toBool();

  @override
  int GetGamepadButtonPressed() => rl.Core.GetGamepadButtonPressed.run().toInt();

  @override
  int GetGamepadAxisCount(
    int gamepad,
  ) => rl.Core.GetGamepadAxisCount.run([
    gamepad.toJS,
  ]).toInt();

  @override
  double GetGamepadAxisMovement(
    int gamepad,
    int axis,
  ) => rl.Core.GetGamepadAxisMovement.run([
    gamepad.toJS,
    axis.toJS,
  ]).toDouble();

  @override
  int SetGamepadMappings(
    MemoryPointer<RChar> mappings,
  ) => rl.Core.SetGamepadMappings.run([
    mappings.toJS,
  ]).toInt();

  @override
  void SetGamepadVibration(
    int gamepad,
    double leftMotor,
    double rightMotor,
    double duration,
  ) => rl.Core.SetGamepadVibration.run([
    gamepad.toJS,
    leftMotor.toJS,
    rightMotor.toJS,
    duration.toJS,
  ]);

  @override
  bool IsMouseButtonPressed(
    int button,
  ) => rl.Core.IsMouseButtonPressed.run([
    button.toJS,
  ]).toBool();

  @override
  bool IsMouseButtonDown(
    int button,
  ) => rl.Core.IsMouseButtonDown.run([
    button.toJS,
  ]).toBool();

  @override
  bool IsMouseButtonReleased(
    int button,
  ) => rl.Core.IsMouseButtonReleased.run([
    button.toJS,
  ]).toBool();

  @override
  bool IsMouseButtonUp(
    int button,
  ) => rl.Core.IsMouseButtonUp.run([
    button.toJS,
  ]).toBool();

  @override
  int GetMouseX() => rl.Core.GetMouseX.run().toInt();

  @override
  int GetMouseY() => rl.Core.GetMouseY.run().toInt();

  @override
  Vector2D GetMousePosition() => rl.Temp.Vector2$.Extract1(
    (p) => rl.Core.GetMousePosition.run([
      p.toJS,
    ]),
  );

  @override
  Vector2D GetMouseDelta() => rl.Temp.Vector2$.Extract1(
    (p) => rl.Core.GetMouseDelta.run([
      p.toJS,
    ]),
  );

  @override
  void SetMousePosition(
    int x,
    int y,
  ) => rl.Core.SetMousePosition.run([
    x.toJS,
    y.toJS,
  ]);

  @override
  void SetMouseOffset(
    int offsetX,
    int offsetY,
  ) => rl.Core.SetMouseOffset.run([
    offsetX.toJS,
    offsetY.toJS,
  ]);

  @override
  void SetMouseScale(
    double scaleX,
    double scaleY,
  ) => rl.Core.SetMouseScale.run([
    scaleX.toJS,
    scaleY.toJS,
  ]);

  @override
  double GetMouseWheelMove() => rl.Core.GetMouseWheelMove.run().toDouble();

  @override
  Vector2D GetMouseWheelMoveV() => rl.Temp.Vector2$.Extract1(
    (p) => rl.Core.GetMouseWheelMoveV.run([
      p.toJS,
    ]),
  );

  @override
  void SetMouseCursor(
    int cursor,
  ) => rl.Core.SetMouseCursor.run([
    cursor.toJS,
  ]);

  @override
  int GetTouchX() => rl.Core.GetTouchX.run().toInt();

  @override
  int GetTouchY() => rl.Core.GetTouchY.run().toInt();

  @override
  Vector2D GetTouchPosition(
    int index,
  ) => rl.Temp.Vector2$.Extract1(
    (p) => rl.Core.GetTouchPosition.run([
      p.toJS,
      index.toJS,
    ]),
  );

  @override
  int GetTouchPointId(
    int index,
  ) => rl.Core.GetTouchPointId.run([
    index.toJS,
  ]).toInt();

  @override
  int GetTouchPointCount() => rl.Core.GetTouchPointCount.run().toInt();

  @override
  void SetGesturesEnabled(
    int flags,
  ) => rl.Core.SetGesturesEnabled.run([
    flags.toJS,
  ]);

  @override
  bool IsGestureDetected(
    int gesture,
  ) => rl.Core.IsGestureDetected.run([
    gesture.toJS,
  ]).toBool();

  @override
  int GetGestureDetected() => rl.Core.GetGestureDetected.run().toInt();

  @override
  double GetGestureHoldDuration() => rl.Core.GetGestureHoldDuration.run().toDouble();

  @override
  Vector2D GetGestureDragVector() => rl.Temp.Vector2$.Extract1(
    (p) => rl.Core.GetGestureDragVector.run([
      p.toJS,
    ]),
  );

  @override
  double GetGestureDragAngle() => rl.Core.GetGestureDragAngle.run().toDouble();

  @override
  Vector2D GetGesturePinchVector() => rl.Temp.Vector2$.Extract1(
    (p) => rl.Core.GetGesturePinchVector.run([
      p.toJS,
    ]),
  );

  @override
  double GetGesturePinchAngle() => rl.Core.GetGesturePinchAngle.run().toDouble();

  @override
  void ProcessGestureEvent(
    GestureEventD event,
  ) => rl.Core.ProcessGestureEvent.run([
    rl.Temp.GestureEvent$.Ref1(event).toJS,
  ]);

  @override
  void UpdateGestures() => rl.Core.UpdateGestures.run();

  @override
  void UpdateCamera(
    StructPointer<Camera3DD> camera,
    int mode,
  ) => rl.Core.UpdateCamera.run([
    camera.toJS,
    mode.toJS,
  ]);

  @override
  void UpdateCameraPro(
    StructPointer<Camera3DD> camera,
    Vector3D movement,
    Vector3D rotation,
    double zoom,
  ) => rl.Core.UpdateCameraPro.run([
    camera.toJS,
    rl.Temp.Vector3$.Ref1(movement).toJS,
    rl.Temp.Vector3$.Ref2(rotation).toJS,
    zoom.toJS,
  ]);

  @override
  void SetShapesTexture(
    TextureD texture,
    RectangleD source,
  ) => rl.Core.SetShapesTexture.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
    rl.Temp.Rectangle$.Ref1(source).toJS,
  ]);

  @override
  TextureD GetShapesTexture() => rl.Temp.Texture$.Extract1(
    (p) => rl.Core.GetShapesTexture.run([
      p.toJS,
    ]),
  );

  @override
  RectangleD GetShapesTextureRectangle() => rl.Temp.Rectangle$.Extract1(
    (p) => rl.Core.GetShapesTextureRectangle.run([
      p.toJS,
    ]),
  );

  @override
  void DrawPixel(
    int posX,
    int posY,
    ColorD color,
  ) => rl.Core.DrawPixel.run([
    posX.toJS,
    posY.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawPixelV(
    Vector2D position,
    ColorD color,
  ) => rl.Core.DrawPixelV.run([
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
  ) => rl.Core.DrawLine.run([
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
  ) => rl.Core.DrawLineV.run([
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
  ) => rl.Core.DrawLineEx.run([
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
  ) => rl.Core.DrawLineStrip.run([
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
  ) => rl.Core.DrawLineBezier.run([
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
  ) => rl.Core.DrawLineDashed.run([
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
  ) => rl.Core.DrawCircle.run([
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
  ) => rl.Core.DrawCircleSector.run([
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
  ) => rl.Core.DrawCircleSectorLines.run([
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
  ) => rl.Core.DrawCircleGradient.run([
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
  ) => rl.Core.DrawCircleV.run([
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
  ) => rl.Core.DrawCircleLines.run([
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
  ) => rl.Core.DrawCircleLinesV.run([
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
  ) => rl.Core.DrawEllipse.run([
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
  ) => rl.Core.DrawEllipseV.run([
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
  ) => rl.Core.DrawEllipseLines.run([
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
  ) => rl.Core.DrawEllipseLinesV.run([
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
  ) => rl.Core.DrawRing.run([
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
  ) => rl.Core.DrawRingLines.run([
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
  ) => rl.Core.DrawRectangle.run([
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
  ) => rl.Core.DrawRectangleV.run([
    rl.Temp.Vector2$.Ref1(position).toJS,
    rl.Temp.Vector2$.Ref2(size).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawRectangleRec(
    RectangleD rec,
    ColorD color,
  ) => rl.Core.DrawRectangleRec.run([
    rl.Temp.Rectangle$.Ref1(rec).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawRectanglePro(
    RectangleD rec,
    Vector2D origin,
    double rotation,
    ColorD color,
  ) => rl.Core.DrawRectanglePro.run([
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
  ) => rl.Core.DrawRectangleGradientV.run([
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
  ) => rl.Core.DrawRectangleGradientH.run([
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
  ) => rl.Core.DrawRectangleGradientEx.run([
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
  ) => rl.Core.DrawRectangleLines.run([
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
  ) => rl.Core.DrawRectangleLinesEx.run([
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
  ) => rl.Core.DrawRectangleRounded.run([
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
  ) => rl.Core.DrawRectangleRoundedLines.run([
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
  ) => rl.Core.DrawRectangleRoundedLinesEx.run([
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
  ) => rl.Core.DrawTriangle.run([
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
  ) => rl.Core.DrawTriangleLines.run([
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
  ) => rl.Core.DrawTriangleFan.run([
    points.toJS,
    pointCount.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawTriangleStrip(
    StructPointer<Vector2D> points,
    int pointCount,
    ColorD color,
  ) => rl.Core.DrawTriangleStrip.run([
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
  ) => rl.Core.DrawPoly.run([
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
  ) => rl.Core.DrawPolyLines.run([
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
  ) => rl.Core.DrawPolyLinesEx.run([
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
  ) => rl.Core.DrawSplineLinear.run([
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
  ) => rl.Core.DrawSplineBasis.run([
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
  ) => rl.Core.DrawSplineCatmullRom.run([
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
  ) => rl.Core.DrawSplineBezierQuadratic.run([
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
  ) => rl.Core.DrawSplineBezierCubic.run([
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
  ) => rl.Core.DrawSplineSegmentLinear.run([
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
  ) => rl.Core.DrawSplineSegmentBasis.run([
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
  ) => rl.Core.DrawSplineSegmentCatmullRom.run([
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
  ) => rl.Core.DrawSplineSegmentBezierQuadratic.run([
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
  ) => rl.Core.DrawSplineSegmentBezierCubic.run([
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
    (p) => rl.Core.GetSplinePointLinear.run([
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
    (p) => rl.Core.GetSplinePointBasis.run([
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
    (p) => rl.Core.GetSplinePointBasis.run([
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
    (p) => rl.Core.GetSplinePointBasis.run([
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
    (p) => rl.Core.GetSplinePointBasis.run([
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
  ) => rl.Core.CheckCollisionRecs.run([
    rl.Temp.Rectangle$.Ref1(rec1).toJS,
    rl.Temp.Rectangle$.Ref2(rec2).toJS,
  ]).toBool();

  @override
  bool CheckCollisionCircles(
    Vector2D center1,
    double radius1,
    Vector2D center2,
    double radius2,
  ) => rl.Core.CheckCollisionCircles.run([
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
  ) => rl.Core.CheckCollisionCircleRec.run([
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
  ) => rl.Core.CheckCollisionCircleLine.run([
    rl.Temp.Vector2$.Ref1(center).toJS,
    radius.toJS,
    rl.Temp.Vector2$.Ref2(p1).toJS,
    rl.Temp.Vector2$.Ref3(p2).toJS,
  ]).toBool();

  @override
  bool CheckCollisionPointRec(
    Vector2D point,
    RectangleD rec,
  ) => rl.Core.CheckCollisionPointRec.run([
    rl.Temp.Vector2$.Ref1(point).toJS,
    rl.Temp.Rectangle$.Ref1(rec).toJS,
  ]).toBool();

  @override
  bool CheckCollisionPointCircle(
    Vector2D point,
    Vector2D center,
    double radius,
  ) => rl.Core.CheckCollisionPointCircle.run([
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
  ) => rl.Core.CheckCollisionPointTriangle.run([
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
  ) => rl.Core.CheckCollisionPointLine.run([
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
  ) => rl.Core.CheckCollisionPointPoly.run([
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
  ) => rl.Core.CheckCollisionLines.run([
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
    (p) => rl.Core.GetCollisionRec.run([
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
    (p) => rl.Core.LoadImage.run([
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
    (p) => rl.Core.LoadImageRaw.run([
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
    (p) => rl.Core.LoadImageAnim.run([
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
    (p) => rl.Core.LoadImageAnimFromMemory.run([
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
    (p) => rl.Core.LoadImageFromMemory.run([
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
    (p) => rl.Core.LoadImageFromTexture.run([
      p.toJS,
      rl.Temp.Texture$.Ref1(texture).toJS,
    ]),
  );

  @override
  ImageD LoadImageFromScreen() => rl.Temp.Image$.RefCapture(
    RaylibCaptureIds.LoadImageFromScreen,
    (p) => rl.Core.LoadImageFromScreen.run([
      p.toJS,
    ]),
  );

  @override
  bool IsImageValid(
    ImageD image,
  ) => rl.Core.IsImageValid.run([
    rl.Temp.Image$.Ref1(image).toJS,
  ]).toBool();

  @override
  void UnloadImage(
    ImageD image,
  ) => rl.Core.UnloadImage.run([
    rl.Temp.Image$.Ref1(image).toJS,
  ]);

  @override
  bool ExportImage(
    ImageD image,
    MemoryPointer<RChar> fileName,
  ) => rl.Core.ExportImage.run([
    rl.Temp.Image$.Ref1(image).toJS,
    fileName.toJS,
  ]).toBool();

  @override
  WasmMemoryPointer<RUnsignedChar> ExportImageToMemory(
    ImageD image,
    MemoryPointer<RChar> fileType,
    MemoryPointer<RInt> fileSize,
  ) => rl.Core.ExportImageToMemory.run([
    rl.Temp.Image$.Ref1(image).toJS,
    fileType.toJS,
    fileSize.toJS,
  ]).asMemoryPointer();

  @override
  bool ExportImageAsCode(
    ImageD image,
    MemoryPointer<RChar> fileName,
  ) => rl.Core.ExportImageAsCode.run([
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
    (p) => rl.Core.GenImageColor.run([
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
    (p) => rl.Core.GenImageGradientLinear.run([
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
    (p) => rl.Core.GenImageGradientRadial.run([
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
    (p) => rl.Core.GenImageGradientSquare.run([
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
    (p) => rl.Core.GenImageChecked.run([
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
    (p) => rl.Core.GenImageWhiteNoise.run([
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
    (p) => rl.Core.GenImagePerlinNoise.run([
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
    (p) => rl.Core.GenImageCellular.run([
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
    (p) => rl.Core.GenImageText.run([
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
    (p) => rl.Core.ImageCopy.run([
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
    (p) => rl.Core.ImageFromImage.run([
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
    (p) => rl.Core.ImageFromChannel.run([
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
    (p) => rl.Core.ImageText.run([
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
    (p) => rl.Core.ImageTextEx.run([
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
  ) => rl.Core.ImageFormat.run([
    image.toJS,
    newFormat.toJS,
  ]);

  @override
  void ImageToPOT(
    StructPointer<ImageD> image,
    ColorD fill,
  ) => rl.Core.ImageToPOT.run([
    image.toJS,
    rl.Temp.Color$.Ref1(fill).toJS,
  ]);

  @override
  void ImageCrop(
    StructPointer<ImageD> image,
    RectangleD crop,
  ) => rl.Core.ImageCrop.run([
    image.toJS,
    rl.Temp.Rectangle$.Ref1(crop).toJS,
  ]);

  @override
  void ImageAlphaCrop(
    StructPointer<ImageD> image,
    double threshold,
  ) => rl.Core.ImageAlphaCrop.run([
    image.toJS,
    threshold.toJS,
  ]);

  @override
  void ImageAlphaClear(
    StructPointer<ImageD> image,
    ColorD color,
    double threshold,
  ) => rl.Core.ImageAlphaClear.run([
    image.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
    threshold.toJS,
  ]);

  @override
  void ImageAlphaMask(
    StructPointer<ImageD> image,
    ImageD alphaMask,
  ) => rl.Core.ImageAlphaMask.run([
    image.toJS,
    rl.Temp.Image$.Ref2(alphaMask).toJS,
  ]);

  @override
  void ImageAlphaPremultiply(
    StructPointer<ImageD> image,
  ) => rl.Core.ImageAlphaPremultiply.run([
    image.toJS,
  ]);

  @override
  void ImageBlurGaussian(
    StructPointer<ImageD> image,
    int blurSize,
  ) => rl.Core.ImageBlurGaussian.run([
    image.toJS,
    blurSize.toJS,
  ]);

  @override
  void ImageKernelConvolution(
    StructPointer<ImageD> image,
    MemoryPointer<RFloat> kernel,
    int kernelSize,
  ) => rl.Core.ImageKernelConvolution.run([
    image.toJS,
    kernel.toJS,
    kernelSize.toJS,
  ]);

  @override
  void ImageResize(
    StructPointer<ImageD> image,
    int newWidth,
    int newHeight,
  ) => rl.Core.ImageResize.run([
    image.toJS,
    newWidth.toJS,
    newHeight.toJS,
  ]);

  @override
  void ImageResizeNN(
    StructPointer<ImageD> image,
    int newWidth,
    int newHeight,
  ) => rl.Core.ImageResizeNN.run([
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
  ) => rl.Core.ImageResizeCanvas.run([
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
  ) => rl.Core.ImageMipmaps.run([
    image.toJS,
  ]);

  @override
  void ImageDither(
    StructPointer<ImageD> image,
    int rBpp,
    int gBpp,
    int bBpp,
    int aBpp,
  ) => rl.Core.ImageDither.run([
    image.toJS,
    rBpp.toJS,
    gBpp.toJS,
    bBpp.toJS,
    aBpp.toJS,
  ]);

  @override
  void ImageFlipVertical(
    StructPointer<ImageD> image,
  ) => rl.Core.ImageFlipVertical.run([
    image.toJS,
  ]);

  @override
  void ImageFlipHorizontal(
    StructPointer<ImageD> image,
  ) => rl.Core.ImageFlipHorizontal.run([
    image.toJS,
  ]);

  @override
  void ImageRotate(
    StructPointer<ImageD> image,
    int degrees,
  ) => rl.Core.ImageRotate.run([
    image.toJS,
    degrees.toJS,
  ]);

  @override
  void ImageRotateCW(
    StructPointer<ImageD> image,
  ) => rl.Core.ImageRotateCW.run([
    image.toJS,
  ]);

  @override
  void ImageRotateCCW(
    StructPointer<ImageD> image,
  ) => rl.Core.ImageRotateCCW.run([
    image.toJS,
  ]);

  @override
  void ImageColorTint(
    StructPointer<ImageD> image,
    ColorD color,
  ) => rl.Core.ImageColorTint.run([
    image.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageColorInvert(
    StructPointer<ImageD> image,
  ) => rl.Core.ImageColorInvert.run([
    image.toJS,
  ]);

  @override
  void ImageColorGrayscale(
    StructPointer<ImageD> image,
  ) => rl.Core.ImageColorGrayscale.run([
    image.toJS,
  ]);

  @override
  void ImageColorContrast(
    StructPointer<ImageD> image,
    double contrast,
  ) => rl.Core.ImageColorContrast.run([
    image.toJS,
    contrast.toJS,
  ]);

  @override
  void ImageColorBrightness(
    StructPointer<ImageD> image,
    int brightness,
  ) => rl.Core.ImageColorBrightness.run([
    image.toJS,
    brightness.toJS,
  ]);

  @override
  void ImageColorReplace(
    StructPointer<ImageD> image,
    ColorD color,
    ColorD replace,
  ) => rl.Core.ImageColorReplace.run([
    image.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
    rl.Temp.Color$.Ref2(replace).toJS,
  ]);

  @override
  StructPointer<ColorD> LoadImageColors(
    ImageD image,
  ) => ColorD.pointer(rl.Core.LoadImageColors.run([
    rl.Temp.Image$.Ref1(image).toJS,
  ]).asMemoryPointer());

  @override
  StructPointer<ColorD> LoadImagePalette(
    ImageD image,
    int maxPaletteSize,
    MemoryPointer<RInt> colorCount,
  ) => ColorD.pointer(rl.Core.LoadImagePalette.run([
    rl.Temp.Image$.Ref1(image).toJS,
    maxPaletteSize.toJS,
    colorCount.toJS,
  ]).asMemoryPointer());

  @override
  void UnloadImageColors(
    StructPointer<ColorD> colors,
  ) => rl.Core.UnloadImageColors.run([
    colors.toJS,
  ]);

  @override
  void UnloadImagePalette(
    StructPointer<ColorD> colors,
  ) => rl.Core.UnloadImagePalette.run([
    colors.toJS,
  ]);

  @override
  RectangleD GetImageAlphaBorder(
    ImageD image,
    double threshold,
  ) => rl.Temp.Rectangle$.Extract1(
    (p) => rl.Core.GetImageAlphaBorder.run([
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
    (p) => rl.Core.GetImageColor.run([
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
  ) => rl.Core.ImageClearBackground.run([
    dst.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void ImageDrawPixel(
    StructPointer<ImageD> dst,
    int posX,
    int posY,
    ColorD color,
  ) => rl.Core.ImageDrawPixel.run([
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
  ) => rl.Core.ImageDrawPixelV.run([
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
  ) => rl.Core.ImageDrawLine.run([
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
  ) => rl.Core.ImageDrawLineV.run([
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
  ) => rl.Core.ImageDrawLineEx.run([
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
  ) => rl.Core.ImageDrawCircle.run([
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
  ) => rl.Core.ImageDrawCircleV.run([
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
  ) => rl.Core.ImageDrawCircleLines.run([
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
  ) => rl.Core.ImageDrawCircleLinesV.run([
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
  ) => rl.Core.ImageDrawRectangle.run([
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
  ) => rl.Core.ImageDrawRectangleV.run([
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
  ) => rl.Core.ImageDrawRectangleRec.run([
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
  ) => rl.Core.ImageDrawRectangleLines.run([
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
  ) => rl.Core.ImageDrawTriangle.run([
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
  ) => rl.Core.ImageDrawTriangleEx.run([
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
  ) => rl.Core.ImageDrawTriangleLines.run([
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
  ) => rl.Core.ImageDrawTriangleFan.run([
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
  ) => rl.Core.ImageDrawTriangleStrip.run([
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
  ) => rl.Core.ImageDraw.run([
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
  ) => rl.Core.ImageDrawText.run([
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
  ) => rl.Core.ImageDrawTextEx.run([
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
    (p) => rl.Core.LoadTexture.run([
      p.toJS,
      fileName.toJS,
    ]),
  );

  @override
  TextureD LoadTextureFromImage(
    ImageD image,
  ) => rl.Temp.Texture$.RefCapture(
    RaylibCaptureIds.LoadTextureFromImage,
    (p) => rl.Core.LoadTextureFromImage.run([
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
    (p) => rl.Core.LoadTextureCubemap.run([
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
    (p) => rl.Core.LoadRenderTexture.run([
      p.toJS,
      width.toJS,
      height.toJS,
    ]),
  );

  @override
  bool IsTextureValid(
    TextureD texture,
  ) => rl.Core.IsTextureValid.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
  ]).toBool();

  @override
  void UnloadTexture(
    TextureD texture,
  ) => rl.Core.UnloadTexture.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
  ]);

  @override
  bool IsRenderTextureValid(
    RenderTextureD target,
  ) => rl.Core.IsRenderTextureValid.run([
    rl.Temp.RenderTexture$.Ref1(target).toJS,
  ]).toBool();

  @override
  void UnloadRenderTexture(
    RenderTextureD target,
  ) => rl.Core.UnloadRenderTexture.run([
    rl.Temp.RenderTexture$.Ref1(target).toJS,
  ]);

  @override
  void UpdateTexture(
    TextureD texture,
    MemoryPointer<RVoid> pixels,
  ) => rl.Core.UpdateTexture.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
    pixels.toJS,
  ]);

  @override
  void UpdateTextureRec(
    TextureD texture,
    RectangleD rec,
    MemoryPointer<RVoid> pixels,
  ) => rl.Core.UpdateTextureRec.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
    rl.Temp.Rectangle$.Ref1(rec).toJS,
    pixels.toJS,
  ]);

  @override
  void GenTextureMipmaps(
    StructPointer<TextureD> texture,
  ) => rl.Core.GenTextureMipmaps.run([
    texture.toJS,
  ]);

  @override
  void SetTextureFilter(
    TextureD texture,
    int filter,
  ) => rl.Core.SetTextureFilter.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
    filter.toJS,
  ]);

  @override
  void SetTextureWrap(
    TextureD texture,
    int wrap,
  ) => rl.Core.SetTextureWrap.run([
    rl.Temp.Texture$.Ref1(texture).toJS,
    wrap.toJS,
  ]);

  @override
  void DrawTexture(
    TextureD texture,
    int posX,
    int posY,
    ColorD tint,
  ) => rl.Core.DrawTexture.run([
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
  ) => rl.Core.DrawTextureV.run([
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
  ) => rl.Core.DrawTextureEx.run([
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
  ) => rl.Core.DrawTextureRec.run([
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
  ) => rl.Core.DrawTexturePro.run([
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
  ) => rl.Core.DrawTextureNPatch.run([
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
  ) => rl.Core.ColorIsEqual.run([
    rl.Temp.Color$.Ref1(col1).toJS,
    rl.Temp.Color$.Ref2(col2).toJS,
  ]).toBool();

  @override
  ColorD Fade(
    ColorD color,
    double alpha,
  ) => rl.Temp.Color$.Extract1(
    (p) => rl.Core.Fade.run([
      p.toJS,
      rl.Temp.Color$.Ref2(color).toJS,
      alpha.toJS,
    ]),
  );

  @override
  int ColorToInt(
    ColorD color,
  ) => rl.Core.ColorToInt.run([
    rl.Temp.Color$.Ref1(color).toJS,
  ]).toInt();

  @override
  Vector4D ColorNormalize(
    ColorD color,
  ) => rl.Temp.Vector4$.Extract1(
    (p) => rl.Core.ColorNormalize.run([
      p.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ]),
  );

  @override
  ColorD ColorFromNormalized(
    Vector4D normalized,
  ) => rl.Temp.Color$.Extract1(
    (p) => rl.Core.ColorFromNormalized.run([
      p.toJS,
      rl.Temp.Vector4$.Ref1(normalized).toJS,
    ]),
  );

  @override
  Vector3D ColorToHSV(
    ColorD color,
  ) => rl.Temp.Vector3$.Extract1(
    (p) => rl.Core.ColorToHSV.run([
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
    (p) => rl.Core.ColorFromHSV.run([
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
    (p) => rl.Core.ColorTint.run([
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
    (p) => rl.Core.ColorBrightness.run([
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
    (p) => rl.Core.ColorContrast.run([
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
    (p) => rl.Core.ColorAlpha.run([
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
    (p) => rl.Core.ColorAlphaBlend.run([
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
    (p) => rl.Core.ColorLerp.run([
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
    (p) => rl.Core.GetColor.run([
      p.toJS,
      hexValue.toJS,
    ]),
  );

  @override
  ColorD GetPixelColor(
    MemoryPointer<RVoid> srcPtr,
    int format,
  ) => rl.Temp.Color$.Extract1(
    (p) => rl.Core.GetPixelColor.run([
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
  ) => rl.Core.SetPixelColor.run([
    dstPtr.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
    format.toJS,
  ]);

  @override
  int GetPixelDataSize(
    int width,
    int height,
    int format,
  ) => rl.Core.GetPixelDataSize.run([
    width.toJS,
    height.toJS,
    format.toJS,
  ]).toInt();

  @override
  FontD GetFontDefault() => rl.Temp.Font$.RefCapture(
    RaylibCaptureIds.GetFontDefault,
    (p) => rl.Core.GetFontDefault.run([
      p.toJS,
    ]),
  );

  @override
  FontD LoadFont(
    MemoryPointer<RChar> fileName,
  ) => rl.Temp.Font$.RefCapture(
    RaylibCaptureIds.LoadFont,
    (p) => rl.Core.LoadFont.run([
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
    (p) => rl.Core.LoadFontEx.run([
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
    (p) => rl.Core.LoadFontFromImage.run([
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
    (p) => rl.Core.LoadFontFromMemory.run([
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
  ) => rl.Core.IsFontValid.run([
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
  ) => GlyphInfoD.pointer(rl.Core.LoadFontData.run([
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
    (p) => rl.Core.GenImageFontAtlas.run([
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
  ) => rl.Core.UnloadFontData.run([
    glyphs.toJS,
    glyphCount.toJS,
  ]);

  @override
  void UnloadFont(
    FontD font,
  ) => rl.Core.UnloadFont.run([
    rl.Temp.Font$.Ref1(font).toJS,
  ]);

  @override
  bool ExportFontAsCode(
    FontD font,
    MemoryPointer<RChar> fileName,
  ) => rl.Core.ExportFontAsCode.run([
    rl.Temp.Font$.Ref1(font).toJS,
    fileName.toJS,
  ]).toBool();

  @override
  void DrawFPS(
    int posX,
    int posY,
  ) => rl.Core.DrawFPS.run([
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
  ) => rl.Core.DrawText.run([
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
  ) => rl.Core.DrawTextEx.run([
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
  ) => rl.Core.DrawTextPro.run([
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
  ) => rl.Core.DrawTextCodepoint.run([
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
  ) => rl.Core.DrawTextCodepoints.run([
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
  ) => rl.Core.SetTextLineSpacing.run([
    spacing.toJS,
  ]);

  @override
  int MeasureText(
    MemoryPointer<RChar> text,
    int fontSize,
  ) => rl.Core.MeasureText.run([
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
    (p) => rl.Core.MeasureTextEx.run([
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
    (p) => rl.Core.MeasureTextCodepoints.run([
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
  ) => rl.Core.GetGlyphIndex.run([
    rl.Temp.Font$.Ref1(font).toJS,
    codepoint.toJS,
  ]).toInt();

  @override
  GlyphInfoD GetGlyphInfo(
    FontD font,
    int codepoint,
  ) => rl.Temp.GlyphInfo$.Extract1(
    (p) => rl.Core.GetGlyphInfo.run([
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
    (p) => rl.Core.GetGlyphAtlasRec.run([
      p.toJS,
      rl.Temp.Font$.Ref1(font).toJS,
      codepoint.toJS,
    ]),
  );

  @override
  WasmMemoryPointer<RChar> LoadUTF8(
    MemoryPointer<RInt> codepoints,
    int length,
  ) => rl.Core.LoadUTF8.run([
    codepoints.toJS,
    length.toJS,
  ]).asMemoryPointer();

  @override
  void UnloadUTF8(
    MemoryPointer<RChar> text,
  ) => rl.Core.UnloadUTF8.run([
    text.toJS,
  ]);

  @override
  WasmMemoryPointer<RInt> LoadCodepoints(
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> count,
  ) => rl.Core.LoadCodepoints.run([
    text.toJS,
    count.toJS,
  ]).asMemoryPointer();

  @override
  void UnloadCodepoints(
    MemoryPointer<RInt> codepoints,
  ) => rl.Core.UnloadCodepoints.run([
    codepoints.toJS,
  ]);

  @override
  int GetCodepointCount(
    MemoryPointer<RChar> text,
  ) => rl.Core.GetCodepointCount.run([
    text.toJS,
  ]).toInt();

  @override
  int GetCodepoint(
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> codepointSize,
  ) => rl.Core.GetCodepoint.run([
    text.toJS,
    codepointSize.toJS,
  ]).toInt();

  @override
  int GetCodepointNext(
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> codepointSize,
  ) => rl.Core.GetCodepointNext.run([
    text.toJS,
    codepointSize.toJS,
  ]).toInt();

  @override
  int GetCodepointPrevious(
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> codepointSize,
  ) => rl.Core.GetCodepointPrevious.run([
    text.toJS,
    codepointSize.toJS,
  ]).toInt();

  @override
  WasmMemoryPointer<RChar> CodepointToUTF8(
    int codepoint,
    MemoryPointer<RInt> utf8Size,
  ) => rl.Core.CodepointToUTF8.run([
    codepoint.toJS,
    utf8Size.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RPointer<RChar>> LoadTextLines(
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> count,
  ) => rl.Core.LoadTextLines.run([
    text.toJS,
    count.toJS,
  ]).asMemoryPointer();

  @override
  void UnloadTextLines(
    MemoryPointer<RPointer<RChar>> text,
    int lineCount,
  ) => rl.Core.UnloadTextLines.run([
    text.toJS,
    lineCount.toJS,
  ]);

  @override
  int TextCopy(
    MemoryPointer<RChar> dst,
    MemoryPointer<RChar> src,
  ) => rl.Core.TextCopy.run([
    dst.toJS,
    src.toJS,
  ]).toInt();

  @override
  bool TextIsEqual(
    MemoryPointer<RChar> text1,
    MemoryPointer<RChar> text2,
  ) => rl.Core.TextIsEqual.run([
    text1.toJS,
    text2.toJS,
  ]).toBool();

  @override
  int TextLength(
    MemoryPointer<RChar> text,
  ) => rl.Core.TextLength.run([
    text.toJS,
  ]).toInt();

  @override
  WasmMemoryPointer<RChar> TextSubtext(
    MemoryPointer<RChar> text,
    int position,
    int length,
  ) => rl.Core.TextSubtext.run([
    text.toJS,
    position.toJS,
    length.toJS
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextRemoveSpaces(
    MemoryPointer<RChar> text,
  ) => rl.Core.TextRemoveSpaces.run([
    text.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> GetTextBetween(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> begin,
    MemoryPointer<RChar> end,
  ) => rl.Core.GetTextBetween.run([
    text.toJS,
    begin.toJS,
    end.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextReplace(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> replace,
    MemoryPointer<RChar> by,
  ) => rl.Core.TextReplace.run([
    text.toJS,
    replace.toJS,
    by.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextReplaceAlloc(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> replace,
    MemoryPointer<RChar> by,
  ) => rl.Core.TextReplaceAlloc.run([
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
  ) => rl.Core.TextReplaceBetween.run([
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
  ) => rl.Core.TextReplaceBetweenAlloc.run([
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
  ) => rl.Core.TextInsert.run([
    text.toJS,
    insert.toJS,
    position.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextInsertAlloc(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> insert,
    int position,
  ) => rl.Core.TextInsertAlloc.run([
    text.toJS,
    insert.toJS,
    position.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextJoin(
    MemoryPointer<RPointer<RChar>> textList,
    int count,
    MemoryPointer<RChar> delimiter,
  ) => rl.Core.TextJoin.run([
    textList.toJS,
    count.toJS,
    delimiter.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RPointer<RChar>> TextSplit(
    MemoryPointer<RChar> text,
    int delimiter,
    MemoryPointer<RInt> count,
  ) => rl.Core.TextSplit.run([
    text.toJS,
    delimiter.toJS,
    count.toJS,
  ]).asMemoryPointer();

  @override
  void TextAppend(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> append,
    MemoryPointer<RInt> position,
  ) => rl.Core.TextAppend.run([
    text.toJS,
    append.toJS,
    position.toJS,
  ]);

  @override
  int TextFindIndex(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> find,
  ) => rl.Core.TextFindIndex.run([
    text.toJS,
    find.toJS,
  ]).toInt();

  @override
  WasmMemoryPointer<RChar> TextToUpper(
    MemoryPointer<RChar> text,
  ) => rl.Core.TextToUpper.run([
    text.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextToLower(
    MemoryPointer<RChar> text,
  ) => rl.Core.TextToLower.run([
    text.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextToPascal(
    MemoryPointer<RChar> text,
  ) => rl.Core.TextToPascal.run([
    text.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextToSnake(
    MemoryPointer<RChar> text,
  ) => rl.Core.TextToSnake.run([
    text.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RChar> TextToCamel(
    MemoryPointer<RChar> text,
  ) => rl.Core.TextToCamel.run([
    text.toJS,
  ]).asMemoryPointer();

  @override
  int TextToInteger(
    MemoryPointer<RChar> text,
  ) => rl.Core.TextToInteger.run([
    text.toJS,
  ]).toInt();

  @override
  double TextToFloat(
    MemoryPointer<RChar> text,
  ) => rl.Core.TextToFloat.run([
    text.toJS,
  ]).toDouble();

  @override
  void DrawLine3D(
    Vector3D startPos,
    Vector3D endPos,
    ColorD color,
  ) => rl.Core.DrawLine3D.run([
    rl.Temp.Vector3$.Ref1(startPos).toJS,
    rl.Temp.Vector3$.Ref2(endPos).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawPoint3D(
    Vector3D position,
    ColorD color,
  ) => rl.Core.DrawPoint3D.run([
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
  ) => rl.Core.DrawCircle3D.run([
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
  ) => rl.Core.DrawTriangle3D.run([
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
  ) => rl.Core.DrawTriangleStrip3D.run([
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
  ) => rl.Core.DrawCube.run([
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
  ) => rl.Core.DrawCubeV.run([
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
  ) => rl.Core.DrawCubeWires.run([
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
  ) => rl.Core.DrawCubeWiresV.run([
    rl.Temp.Vector3$.Ref1(position).toJS,
    rl.Temp.Vector3$.Ref2(size).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawSphere(
    Vector3D centerPos,
    double radius,
    ColorD color,
  ) => rl.Core.DrawSphere.run([
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
  ) => rl.Core.DrawSphereEx.run([
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
  ) => rl.Core.DrawSphereWires.run([
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
  ) => rl.Core.DrawCylinder.run([
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
  ) => rl.Core.DrawCylinderEx.run([
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
  ) => rl.Core.DrawCylinderWires.run([
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
  ) => rl.Core.DrawCylinderWiresEx.run([
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
  ) => rl.Core.DrawCapsule.run([
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
  ) => rl.Core.DrawCapsuleWires.run([
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
  ) => rl.Core.DrawPlane.run([
    rl.Temp.Vector3$.Ref1(centerPos).toJS,
    rl.Temp.Vector2$.Ref1(size).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawRay(
    RayD ray,
    ColorD color,
  ) => rl.Core.DrawRay.run([
    rl.Temp.Ray$.Ref1(ray).toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  void DrawGrid(
    int slices,
    double spacing,
  ) => rl.Core.DrawGrid.run([
    slices.toJS,
    spacing.toJS,
  ]);

  @override
  ModelD LoadModel(
    MemoryPointer<RChar> fileName,
  ) => rl.Temp.Model$.RefCapture(
    RaylibCaptureIds.LoadModel,
    (p) => rl.Core.LoadModel.run([
      p.toJS,
      fileName.toJS,
    ]),
  );

  @override
  ModelD LoadModelFromMesh(
    MeshD mesh,
  ) => rl.Temp.Model$.RefCapture(
    RaylibCaptureIds.LoadModelFromMesh,
    (p) => rl.Core.LoadModelFromMesh.run([
      p.toJS,
      rl.Temp.Mesh$.Ref1(mesh).toJS,
    ]),
  );

  @override
  bool IsModelValid(
    ModelD model,
  ) => rl.Core.IsModelValid.run([
    rl.Temp.Model$.Ref1(model).toJS,
  ]).toBool();

  @override
  void UnloadModel(
    ModelD model,
  ) => rl.Core.UnloadModel.run([
    rl.Temp.Model$.Ref1(model).toJS,
  ]);

  @override
  BoundingBoxD GetModelBoundingBox(
    ModelD model,
  ) => rl.Temp.BoundingBox$.Extract1(
    (p) => rl.Core.GetModelBoundingBox.run([
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
  ) => rl.Core.DrawModel.run([
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
  ) => rl.Core.DrawModelEx.run([
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
  ) => rl.Core.DrawModelWires.run([
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
  ) => rl.Core.DrawModelWiresEx.run([
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
  ) => rl.Core.DrawBoundingBox.run([
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
  ) => rl.Core.DrawBillboard.run([
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
  ) => rl.Core.DrawBillboardRec.run([
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
  ) => rl.Core.DrawBillboardPro.run([
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
  ) => rl.Core.UploadMesh.run([
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
  ) => rl.Core.UpdateMeshBuffer.run([
    rl.Temp.Mesh$.Ref1(mesh).toJS,
    index.toJS,
    data.toJS,
    dataSize.toJS,
    offset.toJS,
  ]);

  @override
  void UnloadMesh(
    MeshD mesh,
  ) => rl.Core.UnloadMesh.run([
    rl.Temp.Mesh$.Ref1(mesh).toJS,
  ]);

  @override
  void DrawMesh(
    MeshD mesh,
    MaterialD material,
    MatrixD transform,
  ) => rl.Core.DrawMesh.run([
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
  ) => rl.Core.DrawMeshInstanced.run([
    rl.Temp.Mesh$.Ref1(mesh).toJS,
    rl.Temp.Material$.Ref1(material).toJS,
    transforms.toJS,
    instances.toJS,
  ]);

  @override
  BoundingBoxD GetMeshBoundingBox(
    MeshD mesh,
  ) => rl.Temp.BoundingBox$.Extract1(
    (p) => rl.Core.GetMeshBoundingBox.run([
      p.toJS,
      rl.Temp.Mesh$.Ref1(mesh).toJS,
    ]),
  );

  @override
  void GenMeshTangents(
    StructPointer<MeshD> mesh,
  ) => rl.Core.GenMeshTangents.run([
    mesh.toJS,
  ]);

  @override
  bool ExportMesh(
    MeshD mesh,
    MemoryPointer<RChar> fileName,
  ) => rl.Core.ExportMesh.run([
    rl.Temp.Mesh$.Ref1(mesh).toJS,
    fileName.toJS,
  ]).toBool();

  @override
  bool ExportMeshAsCode(
    MeshD mesh,
    MemoryPointer<RChar> fileName,
  ) => rl.Core.ExportMeshAsCode.run([
    rl.Temp.Mesh$.Ref1(mesh).toJS,
    fileName.toJS,
  ]).toBool();

  @override
  MeshD GenMeshPoly(
    int sides,
    double radius,
  ) => rl.Temp.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshPoly,
    (p) => rl.Core.GenMeshPoly.run([
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
    (p) => rl.Core.GenMeshPlane.run([
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
    (p) => rl.Core.GenMeshCube.run([
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
    (p) => rl.Core.GenMeshSphere.run([
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
    (p) => rl.Core.GenMeshHemiSphere.run([
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
    (p) => rl.Core.GenMeshCylinder.run([
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
    (p) => rl.Core.GenMeshCone.run([
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
    (p) => rl.Core.GenMeshTorus.run([
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
    (p) => rl.Core.GenMeshKnot.run([
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
    (p) => rl.Core.GenMeshHeightmap.run([
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
    (p) => rl.Core.GenMeshCubicmap.run([
      p.toJS,
      rl.Temp.Image$.Ref1(cubicmap).toJS,
      rl.Temp.Vector3$.Ref1(cubeSize).toJS,
    ]),
  );

  @override
  StructPointer<MaterialD> LoadMaterials(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RInt> materialCount,
  ) => MaterialD.pointer(rl.Core.LoadMaterials.run([
    fileName.toJS,
    materialCount.toJS,
  ]).asMemoryPointer());

  @override
  MaterialD LoadMaterialDefault() => rl.Temp.Material$.Extract1(
    (p) => rl.Core.LoadMaterialDefault.run([
      p.toJS,
    ]),
  );

  @override
  bool IsMaterialValid(
    MaterialD material,
  ) => rl.Core.IsMaterialValid.run([
    rl.Temp.Material$.Ref1(material).toJS,
  ]).toBool();

  @override
  void UnloadMaterial(
    MaterialD material,
  ) => rl.Core.UnloadMaterial.run([
    rl.Temp.Material$.Ref1(material).toJS,
  ]);

  @override
  void SetMaterialTexture(
    StructPointer<MaterialD> material,
    int mapType,
    TextureD texture,
  ) => rl.Core.SetMaterialTexture.run([
    material.toJS,
    mapType.toJS,
    rl.Temp.Texture$.Ref1(texture).toJS,
  ]);

  @override
  void SetModelMeshMaterial(
    StructPointer<ModelD> model,
    int meshId,
    int materialId,
  ) => rl.Core.SetModelMeshMaterial.run([
    model.toJS,
    meshId.toJS,
    materialId.toJS,
  ]);

  @override
  StructPointer<ModelAnimationD> LoadModelAnimations(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RInt> animCount,
  ) => ModelAnimationD.pointer(rl.Core.LoadModelAnimations.run([
    fileName.toJS,
    animCount.toJS,
  ]).asMemoryPointer());

  @override
  void UpdateModelAnimation(
    ModelD model,
    ModelAnimationD anim,
    double frame,
  ) => rl.Core.UpdateModelAnimation.run([
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
  ) => rl.Core.UpdateModelAnimationEx.run([
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
  ) => rl.Core.UnloadModelAnimations.run([
    animations.toJS,
    animCount.toJS,
  ]);

  @override
  bool IsModelAnimationValid(
    ModelD model,
    ModelAnimationD anim,
  ) => rl.Core.IsModelAnimationValid.run([
    rl.Temp.Model$.Ref1(model).toJS,
    rl.Temp.ModelAnimation$.Ref1(anim).toJS,
  ]).toBool();

  @override
  bool CheckCollisionSpheres(
    Vector3D center1,
    double radius1,
    Vector3D center2,
    double radius2,
  ) => rl.Core.CheckCollisionSpheres.run([
    rl.Temp.Vector3$.Ref1(center1).toJS,
    radius1.toJS,
    rl.Temp.Vector3$.Ref2(center2).toJS,
    radius2.toJS,
  ]).toBool();

  @override
  bool CheckCollisionBoxes(
    BoundingBoxD box1,
    BoundingBoxD box2,
  ) => rl.Core.CheckCollisionBoxes.run([
    rl.Temp.BoundingBox$.Ref1(box1).toJS,
    rl.Temp.BoundingBox$.Ref2(box2).toJS,
  ]).toBool();

  @override
  bool CheckCollisionBoxSphere(
    BoundingBoxD box,
    Vector3D center,
    double radius,
  ) => rl.Core.CheckCollisionBoxSphere.run([
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
    (p) => rl.Core.GetRayCollisionSphere.run([
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
    (p) => rl.Core.GetRayCollisionBox.run([
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
    (p) => rl.Core.GetRayCollisionMesh.run([
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
    (p) => rl.Core.GetRayCollisionTriangle.run([
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
    (p) => rl.Core.GetRayCollisionQuad.run([
      p.toJS,
      rl.Temp.Ray$.Ref1(ray).toJS,
      rl.Temp.Vector3$.Ref1(p1).toJS,
      rl.Temp.Vector3$.Ref2(p2).toJS,
      rl.Temp.Vector3$.Ref3(p3).toJS,
      rl.Temp.Vector3$.Ref4(p4).toJS,
    ]),
  );
}