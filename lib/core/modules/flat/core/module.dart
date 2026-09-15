part of '../../../raylib_dartified_web.dart';

class RaylibCoreFlat extends RaylibCoreFlatModule<Raylib> {

  RaylibCoreFlat(super.rl);

  RaylibCore get _wasm => rl.module();

  @override
  void InitWindow(
    int width,
    int height,
    MemoryPointer<RChar> title,
  ) => _wasm.InitWindow(
    width.toJS,
    height.toJS,
    title.toJS,
  );

  @override
  void CloseWindow() => _wasm.CloseWindow();

  @override
  bool WindowShouldClose() => _wasm.WindowShouldClose();

  @override
  bool IsWindowReady() => _wasm.IsWindowReady();

  @override
  bool IsWindowFullscreen() => _wasm.IsWindowFullscreen();

  @override
  bool IsWindowHidden() => _wasm.IsWindowHidden();

  @override
  bool IsWindowMinimized() => _wasm.IsWindowMinimized();

  @override
  bool IsWindowMaximized() => _wasm.IsWindowMaximized();

  @override
  bool IsWindowFocused() => _wasm.IsWindowFocused();

  @override
  bool IsWindowResized() => _wasm.IsWindowResized();

  @override
  bool IsWindowState(
    int flag,
  ) => _wasm.IsWindowState(
    flag.toJS,
  );

  @override
  void SetWindowState(
    int flags,
  ) => _wasm.SetWindowState(
    flags.toJS,
  );

  @override
  void ClearWindowState(
    int flags,
  ) => _wasm.ClearWindowState(
    flags.toJS,
  );

  @override
  void ToggleFullscreen() => _wasm.ToggleFullscreen();

  @override
  void ToggleBorderlessWindowed() => _wasm.ToggleBorderlessWindowed();

  @override
  void MaximizeWindow() => _wasm.MaximizeWindow();

  @override
  void MinimizeWindow() => _wasm.MinimizeWindow();

  @override
  void RestoreWindow() => _wasm.RestoreWindow();

  @override
  void SetWindowIcon(
    ImageD image,
  ) => _wasm.SetWindowIcon(
    $.Image$.Ref1(image).toJS,
  );

  @override
  void SetWindowIcons(
    StructPointer<ImageD> images,
    int count,
  ) => _wasm.SetWindowIcons(
    images.toJS,
    count.toJS,
  );

  @override
  void SetWindowTitle(
    MemoryPointer<RChar> title,
  ) => _wasm.SetWindowTitle(
    title.toJS,
  );

  @override
  void SetWindowPosition(
    int x,
    int y,
  ) => _wasm.SetWindowPosition(
    x.toJS,
    y.toJS,
  );

  @override
  void SetWindowMonitor(
    int monitor,
  ) => _wasm.SetWindowMonitor(
    monitor.toJS,
  );

  @override
  void SetWindowMinSize(
    int width,
    int height,
  ) => _wasm.SetWindowMinSize(
    width.toJS,
    height.toJS,
  );

  @override
  void SetWindowMaxSize(
    int width,
    int height,
  ) => _wasm.SetWindowMaxSize(
    width.toJS,
    height.toJS,
  );

  @override
  void SetWindowSize(
    int width,
    int height,
  ) => _wasm.SetWindowSize(
    width.toJS,
    height.toJS,
  );

  @override
  void SetWindowOpacity(
    double opacity,
  ) => _wasm.SetWindowOpacity(
    opacity.toJS,
  );

  @override
  void SetWindowFocused() => _wasm.SetWindowFocused();

  @override
  WasmMemoryPointer<RVoid> GetWindowHandle() => _wasm.GetWindowHandle();

  @override
  int GetScreenWidth() => _wasm.GetScreenWidth();

  @override
  int GetScreenHeight() => _wasm.GetScreenHeight();

  @override
  int GetRenderWidth() => _wasm.GetRenderWidth();

  @override
  int GetRenderHeight() => _wasm.GetRenderHeight();

  @override
  int GetMonitorCount() => _wasm.GetMonitorCount();

  @override
  int GetCurrentMonitor() => _wasm.GetCurrentMonitor();

  @override
  Vector2D GetMonitorPosition(
    int monitor,
  ) => $.Vector2$.Extract1(
    (p) => _wasm.GetMonitorPosition(
      p.toJS,
      monitor.toJS,
    ),
  );

  @override
  int GetMonitorWidth(
    int monitor,
  ) => _wasm.GetMonitorWidth(
    monitor.toJS,
  );

  @override
  int GetMonitorHeight(
    int monitor,
  ) => _wasm.GetMonitorHeight(
    monitor.toJS,
  );

  @override
  int GetMonitorPhysicalWidth(
    int monitor,
  ) => _wasm.GetMonitorPhysicalWidth(
    monitor.toJS,
  );

  @override
  int GetMonitorPhysicalHeight(
    int monitor,
  ) => _wasm.GetMonitorPhysicalHeight(
    monitor.toJS,
  );

  @override
  int GetMonitorRefreshRate(
    int monitor,
  ) => _wasm.GetMonitorRefreshRate(
    monitor.toJS,
  );

  @override
  Vector2D GetWindowPosition() => $.Vector2$.Extract1(
    (p) => _wasm.GetWindowPosition(
      p.toJS,
    ),
  );

  @override
  Vector2D GetWindowScaleDPI() => $.Vector2$.Extract1(
    (p) => _wasm.GetWindowScaleDPI(
      p.toJS,
    ),
  );

  @override
  WasmMemoryPointer<RChar> GetMonitorName(
    int monitor,
  ) => _wasm.GetMonitorName(
    monitor.toJS,
  );

  @override
  void SetClipboardText(
    MemoryPointer<RChar> text,
  ) => _wasm.SetClipboardText(
    text.toJS,
  );

  @override
  WasmMemoryPointer<RChar> GetClipboardText() => _wasm.GetClipboardText();

  @override
  ImageD GetClipboardImage() => $.Image$.RefCapture(
    RaylibCaptureIds.GetClipboardImage,
    (p) => _wasm.GetClipboardImage(
      p.toJS,
    ),
  );

  @override
  void EnableEventWaiting() => _wasm.EnableEventWaiting();

  @override
  void DisableEventWaiting() => _wasm.DisableEventWaiting();

  @override
  void ShowCursor() => _wasm.ShowCursor();

  @override
  void HideCursor() => _wasm.HideCursor();

  @override
  bool IsCursorHidden() => _wasm.IsCursorHidden();

  @override
  void EnableCursor() => _wasm.EnableCursor();

  @override
  void DisableCursor() => _wasm.DisableCursor();

  @override
  bool IsCursorOnScreen() => _wasm.IsCursorOnScreen();

  @override
  void ClearBackground(
    ColorD color,
  ) => _wasm.ClearBackground(
    $.Color$.Ref1(color).toJS,
  );

  @override
  void BeginDrawing() => _wasm.BeginDrawing();

  @override
  void EndDrawing() => _wasm.EndDrawing();

  @override
  void BeginMode2D(
    Camera2DD camera,
  ) => _wasm.BeginMode2D(
    $.Camera2D$.Ref1(camera).toJS,
  );

  @override
  void EndMode2D() => _wasm.EndMode2D();

  @override
  void BeginMode3D(
    Camera3DD camera,
  ) => _wasm.BeginMode3D(
    $.Camera3D$.Ref1(camera).toJS,
  );

  @override
  void EndMode3D() => _wasm.EndMode3D();

  @override
  void BeginTextureMode(
    RenderTextureD target,
  ) => _wasm.BeginTextureMode(
    $.RenderTexture$.Ref1(target).toJS,
  );

  @override
  void EndTextureMode() => _wasm.EndTextureMode();

  @override
  void BeginShaderMode(
    ShaderD shader,
  ) => _wasm.BeginShaderMode(
    $.Shader$.Ref1(shader).toJS,
  );

  @override
  void EndShaderMode() => _wasm.EndShaderMode();

  @override
  void BeginBlendMode(
    int mode,
  ) => _wasm.BeginBlendMode(
    mode.toJS,
  );

  @override
  void EndBlendMode() => _wasm.EndBlendMode();

  @override
  void BeginScissorMode(
    int x,
    int y,
    int width,
    int height,
  ) => _wasm.BeginScissorMode(
    x.toJS,
    y.toJS,
    width.toJS,
    height.toJS,
  );

  @override
  void EndScissorMode() => _wasm.EndScissorMode();

  @override
  void BeginVrStereoMode(
    VrStereoConfigD config,
  ) => _wasm.BeginVrStereoMode(
    $.VrStereoConfig$.Ref1(config).toJS,
  );

  @override
  void EndVrStereoMode() => _wasm.EndVrStereoMode();

  @override
  VrStereoConfigD LoadVrStereoConfig(
    VrDeviceInfoD device,
  ) => $.VrStereoConfig$.RefCapture(
    RaylibCaptureIds.LoadVrStereoConfig,
    (p) => _wasm.LoadVrStereoConfig(
      p.toJS,
      $.VrDeviceInfo$.Ref1(device).toJS,
    ),
  );

  @override
  void UnloadVrStereoConfig(
    VrStereoConfigD config,
  ) => disposeStructWithOpFreed(config, (ptr) {
    _wasm.UnloadVrStereoConfig(
      ptr.toJS,
    );
  });

  @override
  ShaderD LoadShader(
    MemoryPointer<RChar> vsFileName,
    MemoryPointer<RChar> fsFileName,
  ) => $.Shader$.RefCapture(
    RaylibCaptureIds.LoadShader,
    (p) => _wasm.LoadShader(
      p.toJS,
      vsFileName.toJS,
      fsFileName.toJS,
    ),
  );

  @override
  ShaderD LoadShaderFromMemory(
    MemoryPointer<RChar> vsCode,
    MemoryPointer<RChar> fsCode,
  ) => $.Shader$.RefCapture(
    RaylibCaptureIds.LoadShaderFromMemory,
    (p) => _wasm.LoadShaderFromMemory(
      p.toJS,
      vsCode.toJS,
      fsCode.toJS,
    ),
  );

  @override
  bool IsShaderValid(
    ShaderD shader,
  ) => _wasm.IsShaderValid(
    $.Shader$.Ref1(shader).toJS,
  );

  @override
  int GetShaderLocation(
    ShaderD shader,
    MemoryPointer<RChar> uniformName,
  ) => _wasm.GetShaderLocation(
    $.Shader$.Ref1(shader).toJS,
    uniformName.toJS,
  );

  @override
  int GetShaderLocationAttrib(
    ShaderD shader,
    MemoryPointer<RChar> attribName,
  ) => _wasm.GetShaderLocationAttrib(
    $.Shader$.Ref1(shader).toJS,
    attribName.toJS,
  );

  @override
  void SetShaderValueV(
    ShaderD shader,
    int locIndex,
    MemoryPointer<RVoid> value,
    int uniformType,
    int count,
  ) => _wasm.SetShaderValueV(
    $.Shader$.Ref1(shader).toJS,
    locIndex.toJS,
    value.toJS,
    uniformType.toJS,
    count.toJS,
  );

  @override
  void SetShaderValueMatrix(
    ShaderD shader,
    int locIndex,
    MatrixD mat,
  ) => _wasm.SetShaderValueMatrix(
    $.Shader$.Ref1(shader).toJS,
    locIndex.toJS,
    $.Matrix$.Ref1(mat).toJS,
  );

  @override
  void SetShaderValueTexture(
    ShaderD shader,
    int locIndex,
    TextureD texture,
  ) => _wasm.SetShaderValueTexture(
    $.Shader$.Ref1(shader).toJS,
    locIndex.toJS,
    $.Texture$.Ref1(texture).toJS,
  );

  @override
  void UnloadShader(
    ShaderD shader,
  ) => disposeStructWithOpFreed(shader, (ptr) {
    _wasm.UnloadShader(
      ptr.toJS,
    );
  });

  @override
  RayD GetScreenToWorldRay(
    Vector2D position,
    Camera3DD camera,
  ) => $.Ray$.Extract1(
    (p) => _wasm.GetScreenToWorldRay(
      p.toJS,
      $.Vector2$.Ref1(position).toJS,
      $.Camera3D$.Ref1(camera).toJS,
    ),
  );

  @override
  RayD GetScreenToWorldRayEx(
    Vector2D position,
    Camera3DD camera,
    int width,
    int height,
  ) => $.Ray$.Extract1(
    (p) => _wasm.GetScreenToWorldRayEx(
      p.toJS,
      $.Vector2$.Ref1(position).toJS,
      $.Camera3D$.Ref1(camera).toJS,
      width.toJS,
      height.toJS,
    ),
  );

  @override
  Vector2D GetWorldToScreen(
    Vector3D position,
    Camera3DD camera,
  ) => $.Vector2$.Extract1(
    (p) => _wasm.GetWorldToScreen(
      p.toJS,
      $.Vector3$.Ref1(position).toJS,
      $.Camera3D$.Ref1(camera).toJS,
    ),
  );

  @override
  Vector2D GetWorldToScreenEx(
    Vector3D position,
    Camera3DD camera,
    int width,
    int height,
  ) => $.Vector2$.Extract1(
    (p) => _wasm.GetWorldToScreenEx(
      p.toJS,
      $.Vector3$.Ref1(position).toJS,
      $.Camera3D$.Ref1(camera).toJS,
      width.toJS,
      height.toJS,
    ),
  );

  @override
  Vector2D GetWorldToScreen2D(
    Vector2D position,
    Camera2DD camera,
  ) => $.Vector2$.Extract1(
    (p) => _wasm.GetWorldToScreen2D(
      p.toJS,
      $.Vector2$.Ref2(position).toJS,
      $.Camera2D$.Ref1(camera).toJS,
    ),
  );

  @override
  Vector2D GetScreenToWorld2D(
    Vector2D position,
    Camera2DD camera,
  ) => $.Vector2$.Extract1(
    (p) => _wasm.GetScreenToWorld2D(
      p.toJS,
      $.Vector2$.Ref2(position).toJS,
      $.Camera2D$.Ref1(camera).toJS,
    ),
  );

  @override
  MatrixD GetCameraMatrix(
    Camera3DD camera,
  ) => $.Matrix$.Extract1(
    (p) => _wasm.GetCameraMatrix(
      p.toJS,
      $.Camera3D$.Ref1(camera).toJS,
    ),
  );

  @override
  MatrixD GetCameraMatrix2D(
    Camera2DD camera,
  ) => $.Matrix$.Extract1(
    (p) => _wasm.GetCameraMatrix2D(
      p.toJS,
      $.Camera2D$.Ref1(camera).toJS,
    ),
  );

  @override
  void SetTargetFPS(
    int fps,
  ) => _wasm.SetTargetFPS(
    fps.toJS,
  );

  @override
  double GetFrameTime() => _wasm.GetFrameTime();

  @override
  double GetTime() => _wasm.GetTime();

  @override
  int GetFPS() => _wasm.GetFPS();

  @override
  void SwapScreenBuffer() => _wasm.SwapScreenBuffer();

  @override
  void PollInputEvents() => _wasm.PollInputEvents();

  @override
  void WaitTime(
    double seconds,
  ) => _wasm.WaitTime(
    seconds.toJS,
  );

  @override
  void SetRandomSeed(
    int seed,
  ) => _wasm.SetRandomSeed(
    seed.toJS,
  );

  @override
  int GetRandomValue(
    int min,
    int max,
  ) => _wasm.GetRandomValue(
    min.toJS,
    max.toJS,
  );

  @override
  WasmMemoryPointer<RInt> LoadRandomSequence(
    int count,
    int min,
    int max,
  ) => _wasm.LoadRandomSequence(
    count.toJS,
    min.toJS,
    max.toJS,
  );

  @override
  void UnloadRandomSequence(
    MemoryPointer<RInt> sequence,
  ) => _wasm.UnloadRandomSequence(
    sequence.toJS,
  );

  @override
  void TakeScreenshot(
    MemoryPointer<RChar> fileName,
  ) => _wasm.TakeScreenshot(
    fileName.toJS,
  );

  @override
  void SetConfigFlags(
    int flags,
  ) => _wasm.SetConfigFlags(
    flags.toJS,
  );

  @override
  void OpenURL(
    MemoryPointer<RChar> url,
  ) => _wasm.OpenURL(
    url.toJS,
  );

  @override
  void TraceLog(
    int logLevel,
    MemoryPointer<RChar> text,
    // NOTE: missing va_list argument
  ) => _wasm.TraceLog(
    logLevel.toJS,
    text.toJS,
  );

  @override
  void SetTraceLogLevel(
    int logLevel,
  ) => _wasm.SetTraceLogLevel(
    logLevel.toJS,
  );

  @override
  void SetTraceLogCallback(
    MemoryPointer<RFunction<TraceLogCallbackBase>> callback,
  ) => _wasm.SetTraceLogCallback(
    callback.toJS,
  );

  @override
  void SetLoadFileDataCallback(
    MemoryPointer<RFunction<LoadFileDataCallbackBase>> callback,
  ) => _wasm.SetLoadFileDataCallback(
    callback.toJS,
  );

  @override
  void SetSaveFileDataCallback(
    MemoryPointer<RFunction<SaveFileDataCallbackBase>> callback,
  ) => _wasm.SetSaveFileDataCallback(
    callback.toJS,
  );

  @override
  void SetLoadFileTextCallback(
    MemoryPointer<RFunction<LoadFileTextCallbackBase>> callback,
  ) => _wasm.SetLoadFileTextCallback(
    callback.toJS,
  );

  @override
  void SetSaveFileTextCallback(
    MemoryPointer<RFunction<SaveFileTextCallbackBase>> callback,
  ) => _wasm.SetSaveFileTextCallback(
    callback.toJS,
  );

  @override
  WasmMemoryPointer<RUnsignedChar> LoadFileData(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RInt> dataSize,
  ) => _wasm.LoadFileData(
    fileName.toJS,
    dataSize.toJS,
  );

  @override
  void UnloadFileData(
    MemoryPointer<RUnsignedChar> data,
  ) => _wasm.UnloadFileData(
    data.toJS,
  );

  @override
  bool SaveFileData(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RVoid> data,
    int dataSize,
  ) => _wasm.SaveFileData(
    fileName.toJS,
    data.toJS,
    dataSize.toJS,
  );

  @override
  bool ExportDataAsCode(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportDataAsCode(
    data.toJS,
    dataSize.toJS,
    fileName.toJS,
  );

  @override
  WasmMemoryPointer<RChar> LoadFileText(
    MemoryPointer<RChar> fileName,
  ) => _wasm.LoadFileText(
    fileName.toJS,
  );

  @override
  void UnloadFileText(
    MemoryPointer<RChar> text,
  ) => _wasm.UnloadFileText(
    text.toJS,
  );

  @override
  bool SaveFileText(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RChar> text,
  ) => _wasm.SaveFileText(
    fileName.toJS,
    text.toJS,
  );

  @override
  int FileRename(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RChar> fileRename,
  ) => _wasm.FileRename(
    fileName.toJS,
    fileRename.toJS,
  );

  @override
  int FileRemove(
    MemoryPointer<RChar> fileName,
  ) => _wasm.FileRemove(
    fileName.toJS,
  );

  @override
  int FileCopy(
    MemoryPointer<RChar> srcPath,
    MemoryPointer<RChar> dstPath,
  ) => _wasm.FileCopy(
    srcPath.toJS,
    dstPath.toJS,
  );

  @override
  int FileMove(
    MemoryPointer<RChar> srcPath,
    MemoryPointer<RChar> dstPath,
  ) => _wasm.FileMove(
    srcPath.toJS,
    dstPath.toJS,
  );

  @override
  int FileTextReplace(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RChar> search,
    MemoryPointer<RChar> replacement,
  ) => _wasm.FileTextReplace(
    fileName.toJS,
    search.toJS,
    replacement.toJS,
  );

  @override
  int FileTextFindIndex(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RChar> search,
  ) => _wasm.FileTextFindIndex(
    fileName.toJS,
    search.toJS,
  );

  @override
  bool FileExists(
    MemoryPointer<RChar> fileName,
  ) => _wasm.FileExists(
    fileName.toJS,
  );

  @override
  bool DirectoryExists(
    MemoryPointer<RChar> dirPath,
  ) => _wasm.DirectoryExists(
    dirPath.toJS,
  );

  @override
  bool IsFileExtension(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RChar> ext,
  ) => _wasm.IsFileExtension(
    fileName.toJS,
    ext.toJS,
  );

  @override
  int GetFileLength(
    MemoryPointer<RChar> fileName,
  ) => _wasm.GetFileLength(
    fileName.toJS,
  );

  @override
  WasmMemoryPointer<RChar> GetFileExtension(
    MemoryPointer<RChar> fileName,
  ) => _wasm.GetFileExtension(
    fileName.toJS,
  );

  @override
  WasmMemoryPointer<RChar> GetFileName(
    MemoryPointer<RChar> filePath,
  ) => _wasm.GetFileName(
    filePath.toJS,
  );

  @override
  WasmMemoryPointer<RChar> GetFileNameWithoutExt(
    MemoryPointer<RChar> filePath,
  ) => _wasm.GetFileNameWithoutExt(
    filePath.toJS,
  );

  @override
  int GetDirectoryFileCount(
    MemoryPointer<RChar> dirPath,
  ) => _wasm.GetDirectoryFileCount(
    dirPath.toJS,
  );

  @override
  int GetDirectoryFileCountEx(
    MemoryPointer<RChar> basePath,
    MemoryPointer<RChar> filter,
    bool scanSubdirs,
  ) => _wasm.GetDirectoryFileCountEx(
    basePath.toJS,
    filter.toJS,
    scanSubdirs.toJS,
  );

  @override
  WasmMemoryPointer<RChar> GetDirectoryPath(
    MemoryPointer<RChar> filePath,
  ) => _wasm.GetDirectoryPath(
    filePath.toJS,
  );

  @override
  WasmMemoryPointer<RChar> GetPrevDirectoryPath(
    MemoryPointer<RChar> dirPath,
  ) => _wasm.GetPrevDirectoryPath(
    dirPath.toJS,
  );

  @override
  WasmMemoryPointer<RChar> GetWorkingDirectory() => _wasm.GetWorkingDirectory();

  @override
  WasmMemoryPointer<RChar> GetApplicationDirectory() => _wasm.GetApplicationDirectory();

  @override
  int MakeDirectory(
    MemoryPointer<RChar> dirPath,
  ) => _wasm.MakeDirectory(
    dirPath.toJS,
  );

  @override
  bool ChangeDirectory(
    MemoryPointer<RChar> dir,
  ) => _wasm.ChangeDirectory(
    dir.toJS,
  );

  @override
  bool IsPathFile(
    MemoryPointer<RChar> path,
  ) => _wasm.IsPathFile(
    path.toJS,
  );

  @override
  bool IsFileNameValid(
    MemoryPointer<RChar> fileName,
  ) => _wasm.IsFileNameValid(
    fileName.toJS,
  );

  @override
  FilePathListD LoadDirectoryFiles(
    MemoryPointer<RChar> dirPath,
  ) => $.FilePathList$.RefCapture(
    RaylibCaptureIds.LoadDirectoryFiles,
    (p) => _wasm.LoadDirectoryFiles(
      p.toJS,
      dirPath.toJS,
    ),
  );

  @override
  FilePathListD LoadDirectoryFilesEx(
    MemoryPointer<RChar> basePath,
    MemoryPointer<RChar> filter,
    bool scanSubdirs,
  ) => $.FilePathList$.RefCapture(
    RaylibCaptureIds.LoadDirectoryFilesEx,
    (p) => _wasm.LoadDirectoryFilesEx(
      p.toJS,
      basePath.toJS,
      filter.toJS,
      scanSubdirs.toJS,
    ),
  );

  @override
  void UnloadDirectoryFiles(
    FilePathListD files,
  ) => disposeStructWithOpFreed(files, (ptr) {
    _wasm.UnloadDirectoryFiles(
      ptr.toJS,
    );
  });

  @override
  bool IsFileDropped() => _wasm.IsFileDropped();

  @override
  FilePathListD LoadDroppedFiles() => $.FilePathList$.RefCapture(
    RaylibCaptureIds.LoadDroppedFiles,
    (p) => _wasm.LoadDroppedFiles(
      p.toJS,
    ),
  );

  @override
  void UnloadDroppedFiles(
    FilePathListD files,
  ) => disposeStructWithOpFreed(files, (ptr) {
    _wasm.UnloadDroppedFiles(
      ptr.toJS,
    );
  });

  @override
  int GetFileModTime(
    MemoryPointer<RChar> fileName,
  ) => _wasm.GetFileModTime(
    fileName.toJS,
  );

  @override
  WasmMemoryPointer<RUnsignedChar> CompressData(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
    MemoryPointer<RInt> compDataSize,
  ) => _wasm.CompressData(
    data.toJS,
    dataSize.toJS,
    compDataSize.toJS,
  );

  @override
  WasmMemoryPointer<RUnsignedChar> DecompressData(
    MemoryPointer<RUnsignedChar> compData,
    int compDataSize,
    MemoryPointer<RInt> dataSize,
  ) => _wasm.DecompressData(
    compData.toJS,
    compDataSize.toJS,
    dataSize.toJS,
  );

  @override
  WasmMemoryPointer<RChar> EncodeDataBase64(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
    MemoryPointer<RInt> outputSize,
  ) => _wasm.EncodeDataBase64(
    data.toJS,
    dataSize.toJS,
    outputSize.toJS,
  );

  @override
  WasmMemoryPointer<RUnsignedChar> DecodeDataBase64(
    MemoryPointer<RChar> data,
    MemoryPointer<RInt> outputSize,
  ) => _wasm.DecodeDataBase64(
    data.toJS,
    outputSize.toJS,
  );

  @override
  int ComputeCRC32(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
  ) => _wasm.ComputeCRC32(
    data.toJS,
    dataSize.toJS,
  );

  @override
  WasmMemoryPointer<RUnsignedInt> ComputeMD5(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
  ) => _wasm.ComputeMD5(
    data.toJS,
    dataSize.toJS,
  );

  @override
  WasmMemoryPointer<RUnsignedInt> ComputeSHA1(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
  ) => _wasm.ComputeSHA1(
    data.toJS,
    dataSize.toJS,
  );

  @override
  WasmMemoryPointer<RUnsignedInt> ComputeSHA256(
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
  ) => _wasm.ComputeSHA256(
    data.toJS,
    dataSize.toJS,
  );

  @override
  AutomationEventListD LoadAutomationEventList(
    MemoryPointer<RChar> fileName,
  ) => $.AutomationEventList$.RefCapture(
    RaylibCaptureIds.LoadAutomationEventList,
    (p) => _wasm.LoadAutomationEventList(
      p.toJS,
      fileName.toJS,
    ),
  );

  @override
  void UnloadAutomationEventList(
    AutomationEventListD list,
  ) => disposeStructWithOpFreed(list, (ptr) {
    _wasm.UnloadAutomationEventList(
      ptr.toJS,
    );
  });

  @override
  bool ExportAutomationEventList(
    AutomationEventListD list,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportAutomationEventList(
    $.AutomationEventList$.Ref1(list).toJS,
    fileName.toJS,
  );

  @override
  void SetAutomationEventList(
    StructPointer<AutomationEventListD> list,
  ) => _wasm.SetAutomationEventList(
    list.toJS,
  );

  @override
  void SetAutomationEventBaseFrame(
    int frame,
  ) => _wasm.SetAutomationEventBaseFrame(
    frame.toJS,
  );

  @override
  void StartAutomationEventRecording() => _wasm.StartAutomationEventRecording();

  @override
  void StopAutomationEventRecording() => _wasm.StopAutomationEventRecording();

  @override
  void PlayAutomationEvent(
    AutomationEventD event,
  ) => _wasm.PlayAutomationEvent(
    $.AutomationEvent$.Ref1(event).toJS,
  );

  @override
  bool IsKeyPressed(
    int key,
  ) => _wasm.IsKeyPressed(
    key.toJS,
  );

  @override
  bool IsKeyPressedRepeat(
    int key,
  ) => _wasm.IsKeyPressedRepeat(
    key.toJS,
  );

  @override
  bool IsKeyDown(
    int key,
  ) => _wasm.IsKeyDown(
    key.toJS,
  );

  @override
  bool IsKeyReleased(
    int key,
  ) => _wasm.IsKeyReleased(
    key.toJS,
  );

  @override
  bool IsKeyUp(
    int key,
  ) => _wasm.IsKeyUp(
    key.toJS,
  );

  @override
  WasmMemoryPointer<RChar> GetKeyName(
    int key,
  ) => _wasm.GetKeyName(
    key.toJS,
  );

  @override
  int GetKeyPressed() => _wasm.GetKeyPressed();

  @override
  int GetCharPressed() => _wasm.GetCharPressed();

  @override
  void SetExitKey(
    int key,
  ) => _wasm.SetExitKey(
    key.toJS,
  );

  @override
  bool IsGamepadAvailable(
    int gamepad,
  ) => _wasm.IsGamepadAvailable(
    gamepad.toJS,
  );

  @override
  WasmMemoryPointer<RChar> GetGamepadName(
    int gamepad,
  ) => _wasm.GetGamepadName(
    gamepad.toJS,
  );

  @override
  bool IsGamepadButtonPressed(
    int gamepad,
    int button,
  ) => _wasm.IsGamepadButtonPressed(
    gamepad.toJS,
    button.toJS,
  );

  @override
  bool IsGamepadButtonDown(
    int gamepad,
    int button,
  ) => _wasm.IsGamepadButtonDown(
    gamepad.toJS,
    button.toJS,
  );

  @override
  bool IsGamepadButtonReleased(
    int gamepad,
    int button,
  ) => _wasm.IsGamepadButtonReleased(
    gamepad.toJS,
    button.toJS,
  );

  @override
  bool IsGamepadButtonUp(
    int gamepad,
    int button,
  ) => _wasm.IsGamepadButtonUp(
    gamepad.toJS,
    button.toJS,
  );

  @override
  int GetGamepadButtonPressed() => _wasm.GetGamepadButtonPressed();

  @override
  int GetGamepadAxisCount(
    int gamepad,
  ) => _wasm.GetGamepadAxisCount(
    gamepad.toJS,
  );

  @override
  double GetGamepadAxisMovement(
    int gamepad,
    int axis,
  ) => _wasm.GetGamepadAxisMovement(
    gamepad.toJS,
    axis.toJS,
  );

  @override
  int SetGamepadMappings(
    MemoryPointer<RChar> mappings,
  ) => _wasm.SetGamepadMappings(
    mappings.toJS,
  );

  @override
  void SetGamepadVibration(
    int gamepad,
    double leftMotor,
    double rightMotor,
    double duration,
  ) => _wasm.SetGamepadVibration(
    gamepad.toJS,
    leftMotor.toJS,
    rightMotor.toJS,
    duration.toJS,
  );

  @override
  bool IsMouseButtonPressed(
    int button,
  ) => _wasm.IsMouseButtonPressed(
    button.toJS,
  );

  @override
  bool IsMouseButtonDown(
    int button,
  ) => _wasm.IsMouseButtonDown(
    button.toJS,
  );

  @override
  bool IsMouseButtonReleased(
    int button,
  ) => _wasm.IsMouseButtonReleased(
    button.toJS,
  );

  @override
  bool IsMouseButtonUp(
    int button,
  ) => _wasm.IsMouseButtonUp(
    button.toJS,
  );

  @override
  int GetMouseX() => _wasm.GetMouseX();

  @override
  int GetMouseY() => _wasm.GetMouseY();

  @override
  Vector2D GetMousePosition() => $.Vector2$.Extract1(
    (p) => _wasm.GetMousePosition(
      p.toJS,
    ),
  );

  @override
  Vector2D GetMouseDelta() => $.Vector2$.Extract1(
    (p) => _wasm.GetMouseDelta(
      p.toJS,
    ),
  );

  @override
  void SetMousePosition(
    int x,
    int y,
  ) => _wasm.SetMousePosition(
    x.toJS,
    y.toJS,
  );

  @override
  void SetMouseOffset(
    int offsetX,
    int offsetY,
  ) => _wasm.SetMouseOffset(
    offsetX.toJS,
    offsetY.toJS,
  );

  @override
  void SetMouseScale(
    double scaleX,
    double scaleY,
  ) => _wasm.SetMouseScale(
    scaleX.toJS,
    scaleY.toJS,
  );

  @override
  double GetMouseWheelMove() => _wasm.GetMouseWheelMove();

  @override
  Vector2D GetMouseWheelMoveV() => $.Vector2$.Extract1(
    (p) => _wasm.GetMouseWheelMoveV(
      p.toJS,
    ),
  );

  @override
  void SetMouseCursor(
    int cursor,
  ) => _wasm.SetMouseCursor(
    cursor.toJS,
  );

  @override
  int GetTouchX() => _wasm.GetTouchX();

  @override
  int GetTouchY() => _wasm.GetTouchY();

  @override
  Vector2D GetTouchPosition(
    int index,
  ) => $.Vector2$.Extract1(
    (p) => _wasm.GetTouchPosition(
      p.toJS,
      index.toJS,
    ),
  );

  @override
  int GetTouchPointId(
    int index,
  ) => _wasm.GetTouchPointId(
    index.toJS,
  );

  @override
  int GetTouchPointCount() => _wasm.GetTouchPointCount();

  @override
  void SetGesturesEnabled(
    int flags,
  ) => _wasm.SetGesturesEnabled(
    flags.toJS,
  );

  @override
  bool IsGestureDetected(
    int gesture,
  ) => _wasm.IsGestureDetected(
    gesture.toJS,
  );

  @override
  int GetGestureDetected() => _wasm.GetGestureDetected();

  @override
  double GetGestureHoldDuration() => _wasm.GetGestureHoldDuration();

  @override
  Vector2D GetGestureDragVector() => $.Vector2$.Extract1(
    (p) => _wasm.GetGestureDragVector(
      p.toJS,
    ),
  );

  @override
  double GetGestureDragAngle() => _wasm.GetGestureDragAngle();

  @override
  Vector2D GetGesturePinchVector() => $.Vector2$.Extract1(
    (p) => _wasm.GetGesturePinchVector(
      p.toJS,
    ),
  );

  @override
  double GetGesturePinchAngle() => _wasm.GetGesturePinchAngle();

  @override
  void ProcessGestureEvent(
    GestureEventD event,
  ) => _wasm.ProcessGestureEvent(
    $.GestureEvent$.Ref1(event).toJS,
  );

  @override
  void UpdateGestures() => _wasm.UpdateGestures();

  @override
  void UpdateCamera(
    StructPointer<Camera3DD> camera,
    int mode,
  ) => _wasm.UpdateCamera(
    camera.toJS,
    mode.toJS,
  );

  @override
  void UpdateCameraPro(
    StructPointer<Camera3DD> camera,
    Vector3D movement,
    Vector3D rotation,
    double zoom,
  ) => _wasm.UpdateCameraPro(
    camera.toJS,
    $.Vector3$.Ref1(movement).toJS,
    $.Vector3$.Ref2(rotation).toJS,
    zoom.toJS,
  );

  @override
  void SetShapesTexture(
    TextureD texture,
    RectangleD source,
  ) => _wasm.SetShapesTexture(
    $.Texture$.Ref1(texture).toJS,
    $.Rectangle$.Ref1(source).toJS,
  );

  @override
  TextureD GetShapesTexture() => $.Texture$.Extract1(
    (p) => _wasm.GetShapesTexture(
      p.toJS,
    ),
  );

  @override
  RectangleD GetShapesTextureRectangle() => $.Rectangle$.Extract1(
    (p) => _wasm.GetShapesTextureRectangle(
      p.toJS,
    ),
  );

  @override
  void DrawPixel(
    int posX,
    int posY,
    ColorD color,
  ) => _wasm.DrawPixel(
    posX.toJS,
    posY.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawPixelV(
    Vector2D position,
    ColorD color,
  ) => _wasm.DrawPixelV(
    $.Vector2$.Ref1(position).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawLine(
    int startPosX,
    int startPosY,
    int endPosX,
    int endPosY,
    ColorD color,
  ) => _wasm.DrawLine(
    startPosX.toJS,
    startPosY.toJS,
    endPosX.toJS,
    endPosY.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawLineV(
    Vector2D startPos,
    Vector2D endPos,
    ColorD color,
  ) => _wasm.DrawLineV(
    $.Vector2$.Ref1(startPos).toJS,
    $.Vector2$.Ref2(endPos).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawLineEx(
    Vector2D startPos,
    Vector2D endPos,
    double thick,
    ColorD color,
  ) => _wasm.DrawLineEx(
    $.Vector2$.Ref1(startPos).toJS,
    $.Vector2$.Ref2(endPos).toJS,
    thick.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawLineStrip(
    StructPointer<Vector2D> points,
    int pointCount,
    ColorD color,
  ) => _wasm.DrawLineStrip(
    points.toJS,
    pointCount.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawLineBezier(
    Vector2D startPos,
    Vector2D endPos,
    double thick,
    ColorD color,
  ) => _wasm.DrawLineBezier(
    $.Vector2$.Ref1(startPos).toJS,
    $.Vector2$.Ref2(endPos).toJS,
    thick.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawLineDashed(
    Vector2D startPos,
    Vector2D endPos,
    int dashSize,
    int spaceSize,
    ColorD color,
  ) => _wasm.DrawLineDashed(
    $.Vector2$.Ref1(startPos).toJS,
    $.Vector2$.Ref2(endPos).toJS,
    dashSize.toJS,
    spaceSize.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawCircle(
    int centerX,
    int centerY,
    double radius,
    ColorD color,
  ) => _wasm.DrawCircle(
    centerX.toJS,
    centerY.toJS,
    radius.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawCircleSector(
    Vector2D center,
    double radius,
    double startAngle,
    double endAngle,
    int segments,
    ColorD color,
  ) => _wasm.DrawCircleSector(
    $.Vector2$.Ref1(center).toJS,
    radius.toJS,
    startAngle.toJS,
    endAngle.toJS,
    segments.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawCircleSectorLines(
    Vector2D center,
    double radius,
    double startAngle,
    double endAngle,
    int segments,
    ColorD color,
  ) => _wasm.DrawCircleSectorLines(
    $.Vector2$.Ref1(center).toJS,
    radius.toJS,
    startAngle.toJS,
    endAngle.toJS,
    segments.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawCircleGradient(
    Vector2D center,
    double radius,
    ColorD inner,
    ColorD outer,
  ) => _wasm.DrawCircleGradient(
    $.Vector2$.Ref1(center).toJS,
    radius.toJS,
    $.Color$.Ref1(inner).toJS,
    $.Color$.Ref2(outer).toJS,
  );

  @override
  void DrawCircleV(
    Vector2D center,
    double radius,
    ColorD color,
  ) => _wasm.DrawCircleV(
    $.Vector2$.Ref1(center).toJS,
    radius.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawCircleLines(
    int centerX,
    int centerY,
    double radius,
    ColorD color,
  ) => _wasm.DrawCircleLines(
    centerX.toJS,
    centerY.toJS,
    radius.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawCircleLinesV(
    Vector2D center,
    double radius,
    ColorD color,
  ) => _wasm.DrawCircleLinesV(
    $.Vector2$.Ref1(center).toJS,
    radius.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawEllipse(
    int centerX,
    int centerY,
    double radiusH,
    double radiusV,
    ColorD color,
  ) => _wasm.DrawEllipse(
    centerX.toJS,
    centerY.toJS,
    radiusH.toJS,
    radiusV.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawEllipseV(
    Vector2D center,
    double radiusH,
    double radiusV,
    ColorD color,
  ) => _wasm.DrawEllipseV(
    $.Vector2$.Ref1(center).toJS,
    radiusH.toJS,
    radiusV.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawEllipseLines(
    int centerX,
    int centerY,
    double radiusH,
    double radiusV,
    ColorD color,
  ) => _wasm.DrawEllipseLines(
    centerX.toJS,
    centerY.toJS,
    radiusH.toJS,
    radiusV.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawEllipseLinesV(
    Vector2D center,
    double radiusH,
    double radiusV,
    ColorD color,
  ) => _wasm.DrawEllipseLinesV(
    $.Vector2$.Ref1(center).toJS,
    radiusH.toJS,
    radiusV.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawRing(
    Vector2D center,
    double innerRadius,
    double outerRadius,
    double startAngle,
    double endAngle,
    int segments,
    ColorD color,
  ) => _wasm.DrawRing(
    $.Vector2$.Ref1(center).toJS,
    innerRadius.toJS,
    outerRadius.toJS,
    startAngle.toJS,
    endAngle.toJS,
    segments.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawRingLines(
    Vector2D center,
    double innerRadius,
    double outerRadius,
    double startAngle,
    double endAngle,
    int segments,
    ColorD color,
  ) => _wasm.DrawRingLines(
    $.Vector2$.Ref1(center).toJS,
    innerRadius.toJS,
    outerRadius.toJS,
    startAngle.toJS,
    endAngle.toJS,
    segments.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawRectangle(
    int posX,
    int posY,
    int width,
    int height,
    ColorD color,
  ) => _wasm.DrawRectangle(
    posX.toJS,
    posY.toJS,
    width.toJS,
    height.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawRectangleV(
    Vector2D position,
    Vector2D size,
    ColorD color,
  ) => _wasm.DrawRectangleV(
    $.Vector2$.Ref1(position).toJS,
    $.Vector2$.Ref2(size).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawRectangleRec(
    RectangleD rec,
    ColorD color,
  ) => _wasm.DrawRectangleRec(
    $.Rectangle$.Ref1(rec).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawRectanglePro(
    RectangleD rec,
    Vector2D origin,
    double rotation,
    ColorD color,
  ) => _wasm.DrawRectanglePro(
    $.Rectangle$.Ref1(rec).toJS,
    $.Vector2$.Ref1(origin).toJS,
    rotation.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawRectangleGradientV(
    int posX,
    int posY,
    int width,
    int height,
    ColorD top,
    ColorD bottom,
  ) => _wasm.DrawRectangleGradientV(
    posX.toJS,
    posY.toJS,
    width.toJS,
    height.toJS,
    $.Color$.Ref1(top).toJS,
    $.Color$.Ref2(bottom).toJS,
  );

  @override
  void DrawRectangleGradientH(
    int posX,
    int posY,
    int width,
    int height,
    ColorD left,
    ColorD right,
  ) => _wasm.DrawRectangleGradientH(
    posX.toJS,
    posY.toJS,
    width.toJS,
    height.toJS,
    $.Color$.Ref1(left).toJS,
    $.Color$.Ref2(right).toJS,
  );

  @override
  void DrawRectangleGradientEx(
    RectangleD rec,
    ColorD topLeft,
    ColorD bottomLeft,
    ColorD topRight,
    ColorD bottomRight,
  ) => _wasm.DrawRectangleGradientEx(
    $.Rectangle$.Ref1(rec).toJS,
    $.Color$.Ref1(topLeft).toJS,
    $.Color$.Ref2(bottomLeft).toJS,
    $.Color$.Ref3(topRight).toJS,
    $.Color$.Ref4(bottomRight).toJS,
  );

  @override
  void DrawRectangleLines(
    int posX,
    int posY,
    int width,
    int height,
    ColorD color,
  ) => _wasm.DrawRectangleLines(
    posX.toJS,
    posY.toJS,
    width.toJS,
    height.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawRectangleLinesEx(
    RectangleD rec,
    double lineThick,
    ColorD color,
  ) => _wasm.DrawRectangleLinesEx(
    $.Rectangle$.Ref1(rec).toJS,
    lineThick.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawRectangleRounded(
    RectangleD rec,
    double roundness,
    int segments,
    ColorD color,
  ) => _wasm.DrawRectangleRounded(
    $.Rectangle$.Ref1(rec).toJS,
    roundness.toJS,
    segments.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawRectangleRoundedLines(
    RectangleD rec,
    double roundness,
    int segments,
    ColorD color,
  ) => _wasm.DrawRectangleRoundedLines(
    $.Rectangle$.Ref1(rec).toJS,
    roundness.toJS,
    segments.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawRectangleRoundedLinesEx(
    RectangleD rec,
    double roundness,
    int segments,
    double lineThick,
    ColorD color,
  ) => _wasm.DrawRectangleRoundedLinesEx(
    $.Rectangle$.Ref1(rec).toJS,
    roundness.toJS,
    segments.toJS,
    lineThick.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawTriangle(
    Vector2D v1,
    Vector2D v2,
    Vector2D v3,
    ColorD color,
  ) => _wasm.DrawTriangle(
    $.Vector2$.Ref1(v1).toJS,
    $.Vector2$.Ref2(v2).toJS,
    $.Vector2$.Ref3(v3).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawTriangleLines(
    Vector2D v1,
    Vector2D v2,
    Vector2D v3,
    ColorD color,
  ) => _wasm.DrawTriangleLines(
    $.Vector2$.Ref1(v1).toJS,
    $.Vector2$.Ref2(v2).toJS,
    $.Vector2$.Ref3(v3).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawTriangleFan(
    StructPointer<Vector2D> points,
    int pointCount,
    ColorD color,
  ) => _wasm.DrawTriangleFan(
    points.toJS,
    pointCount.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawTriangleStrip(
    StructPointer<Vector2D> points,
    int pointCount,
    ColorD color,
  ) => _wasm.DrawTriangleStrip(
    points.toJS,
    pointCount.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawPoly(
    Vector2D center,
    int sides,
    double radius,
    double rotation,
    ColorD color,
  ) => _wasm.DrawPoly(
    $.Vector2$.Ref1(center).toJS,
    sides.toJS,
    radius.toJS,
    rotation.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawPolyLines(
    Vector2D center,
    int sides,
    double radius,
    double rotation,
    ColorD color,
  ) => _wasm.DrawPolyLines(
    $.Vector2$.Ref1(center).toJS,
    sides.toJS,
    radius.toJS,
    rotation.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawPolyLinesEx(
    Vector2D center,
    int sides,
    double radius,
    double rotation,
    double lineThick,
    ColorD color,
  ) => _wasm.DrawPolyLinesEx(
    $.Vector2$.Ref1(center).toJS,
    sides.toJS,
    radius.toJS,
    rotation.toJS,
    lineThick.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawSplineLinear(
    StructPointer<Vector2D> points,
    int pointCount,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineLinear(
    points.toJS,
    pointCount.toJS,
    thick.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawSplineBasis(
    StructPointer<Vector2D> points,
    int pointCount,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineBasis(
    points.toJS,
    pointCount.toJS,
    thick.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawSplineCatmullRom(
    StructPointer<Vector2D> points,
    int pointCount,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineCatmullRom(
    points.toJS,
    pointCount.toJS, 
    thick.toJS, 
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawSplineBezierQuadratic(
    StructPointer<Vector2D> points,
    int pointCount,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineBezierQuadratic(
    points.toJS,
    pointCount.toJS,
    thick.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawSplineBezierCubic(
    StructPointer<Vector2D> points,
    int pointCount,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineBezierCubic(
    points.toJS,
    pointCount.toJS,
    thick.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawSplineSegmentLinear(
    Vector2D p1,
    Vector2D p2,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineSegmentLinear(
    $.Vector2$.Ref1(p1).toJS,
    $.Vector2$.Ref2(p2).toJS,
    thick.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawSplineSegmentBasis(
    Vector2D p1,
    Vector2D p2,
    Vector2D p3,
    Vector2D p4,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineSegmentBasis(
    $.Vector2$.Ref1(p1).toJS,
    $.Vector2$.Ref2(p2).toJS,
    $.Vector2$.Ref3(p3).toJS,
    $.Vector2$.Ref4(p4).toJS,
    thick.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawSplineSegmentCatmullRom(
    Vector2D p1,
    Vector2D p2,
    Vector2D p3,
    Vector2D p4,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineSegmentCatmullRom(
    $.Vector2$.Ref1(p1).toJS,
    $.Vector2$.Ref2(p2).toJS,
    $.Vector2$.Ref3(p3).toJS,
    $.Vector2$.Ref4(p4).toJS,
    thick.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawSplineSegmentBezierQuadratic(
    Vector2D p1,
    Vector2D c2,
    Vector2D p3,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineSegmentBezierQuadratic(
    $.Vector2$.Ref1(p1).toJS,
    $.Vector2$.Ref2(c2).toJS,
    $.Vector2$.Ref3(p3).toJS,
    thick.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawSplineSegmentBezierCubic(
    Vector2D p1,
    Vector2D c2,
    Vector2D c3,
    Vector2D p4,
    double thick,
    ColorD color,
  ) => _wasm.DrawSplineSegmentBezierCubic(
    $.Vector2$.Ref1(p1).toJS,
    $.Vector2$.Ref2(c2).toJS,
    $.Vector2$.Ref3(c3).toJS,
    $.Vector2$.Ref4(p4).toJS,
    thick.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  Vector2D GetSplinePointLinear(
    Vector2D startPos,
    Vector2D endPos,
    double t,
  ) => $.Vector2$.Extract1(
    (p) => _wasm.GetSplinePointLinear(
      p.toJS,
      $.Vector2$.Ref2(startPos).toJS,
      $.Vector2$.Ref3(endPos).toJS,
      t.toJS,
    ),
  );

  @override
  Vector2D GetSplinePointBasis(
    Vector2D p1,
    Vector2D p2,
    Vector2D p3,
    Vector2D p4,
    double t,
  ) => $.Vector2$.Extract1(
    (p) => _wasm.GetSplinePointBasis(
      p.toJS,
      $.Vector2$.Ref2(p1).toJS,
      $.Vector2$.Ref3(p2).toJS,
      $.Vector2$.Ref4(p3).toJS,
      $.Vector2$.Ref5(p4).toJS,
      t.toJS,
    ),
  );

  @override
  Vector2D GetSplinePointCatmullRom(
    Vector2D p1,
    Vector2D p2,
    Vector2D p3,
    Vector2D p4,
    double t,
  ) => $.Vector2$.Extract1(
    (p) => _wasm.GetSplinePointBasis(
      p.toJS,
      $.Vector2$.Ref2(p1).toJS,
      $.Vector2$.Ref3(p2).toJS,
      $.Vector2$.Ref4(p3).toJS,
      $.Vector2$.Ref5(p4).toJS,
      t.toJS,
    ),
  );

  @override
  Vector2D GetSplinePointBezierQuad(
    Vector2D p1,
    Vector2D c2,
    Vector2D p3,
    double t,
  ) => $.Vector2$.Extract1(
    (p) => _wasm.GetSplinePointBezierQuad(
      p.toJS,
      $.Vector2$.Ref2(p1).toJS,
      $.Vector2$.Ref3(c2).toJS,
      $.Vector2$.Ref4(p3).toJS,
      t.toJS,
    ),
  );

  @override
  Vector2D GetSplinePointBezierCubic(
    Vector2D p1,
    Vector2D c2,
    Vector2D c3,
    Vector2D p4,
    double t,
  ) => $.Vector2$.Extract1(
    (p) => _wasm.GetSplinePointBasis(
      p.toJS,
      $.Vector2$.Ref2(p1).toJS,
      $.Vector2$.Ref3(c2).toJS,
      $.Vector2$.Ref4(c3).toJS,
      $.Vector2$.Ref5(p4).toJS,
      t.toJS,
    ),
  );

  @override
  bool CheckCollisionRecs(
    RectangleD rec1,
    RectangleD rec2,
  ) => _wasm.CheckCollisionRecs(
    $.Rectangle$.Ref1(rec1).toJS,
    $.Rectangle$.Ref2(rec2).toJS,
  );

  @override
  bool CheckCollisionCircles(
    Vector2D center1,
    double radius1,
    Vector2D center2,
    double radius2,
  ) => _wasm.CheckCollisionCircles(
    $.Vector2$.Ref1(center1).toJS,
    radius1.toJS,
    $.Vector2$.Ref2(center2).toJS,
    radius2.toJS,
  );

  @override
  bool CheckCollisionCircleRec(
    Vector2D center,
    double radius,
    RectangleD rec,
  ) => _wasm.CheckCollisionCircleRec(
    $.Vector2$.Ref1(center).toJS,
    radius.toJS,
    $.Rectangle$.Ref1(rec).toJS,
  );

  @override
  bool CheckCollisionCircleLine(
    Vector2D center,
    double radius,
    Vector2D p1,
    Vector2D p2,
  ) => _wasm.CheckCollisionCircleLine(
    $.Vector2$.Ref1(center).toJS,
    radius.toJS,
    $.Vector2$.Ref2(p1).toJS,
    $.Vector2$.Ref3(p2).toJS,
  );

  @override
  bool CheckCollisionPointRec(
    Vector2D point,
    RectangleD rec,
  ) => _wasm.CheckCollisionPointRec(
    $.Vector2$.Ref1(point).toJS,
    $.Rectangle$.Ref1(rec).toJS,
  );

  @override
  bool CheckCollisionPointCircle(
    Vector2D point,
    Vector2D center,
    double radius,
  ) => _wasm.CheckCollisionPointCircle(
    $.Vector2$.Ref1(point).toJS,
    $.Vector2$.Ref2(center).toJS,
    radius.toJS,
  );

  @override
  bool CheckCollisionPointTriangle(
    Vector2D point,
    Vector2D p1,
    Vector2D p2,
    Vector2D p3,
  ) => _wasm.CheckCollisionPointTriangle(
    $.Vector2$.Ref1(point).toJS,
    $.Vector2$.Ref2(p1).toJS,
    $.Vector2$.Ref3(p2).toJS,
    $.Vector2$.Ref4(p3).toJS,
  );

  @override
  bool CheckCollisionPointLine(
    Vector2D point,
    Vector2D p1,
    Vector2D p2,
    int threshold,
  ) => _wasm.CheckCollisionPointLine(
    $.Vector2$.Ref1(point).toJS,
    $.Vector2$.Ref2(p1).toJS,
    $.Vector2$.Ref3(p2).toJS,
    threshold.toJS,
  );

  @override
  bool CheckCollisionPointPoly(
    Vector2D point,
    StructPointer<Vector2D> points,
    int pointCount,
  ) => _wasm.CheckCollisionPointPoly(
    $.Vector2$.Ref1(point).toJS,
    points.toJS,
    pointCount.toJS,
  );

  @override
  bool CheckCollisionLines(
    Vector2D startPos1,
    Vector2D endPos1,
    Vector2D startPos2,
    Vector2D endPos2,
    StructPointer<Vector2D> collisionPoint,
  ) => _wasm.CheckCollisionLines(
    $.Vector2$.Ref1(startPos1).toJS,
    $.Vector2$.Ref2(endPos1).toJS,
    $.Vector2$.Ref3(startPos2).toJS,
    $.Vector2$.Ref4(endPos2).toJS,
    collisionPoint.toJS,
  );

  @override
  RectangleD GetCollisionRec(
    RectangleD rec1,
    RectangleD rec2,
  ) => $.Rectangle$.Extract1(
    (p) => _wasm.GetCollisionRec(
      p.toJS,
      $.Rectangle$.Ref2(rec1).toJS,
      $.Rectangle$.Ref3(rec2).toJS,
    ),
  );

  @override
  ImageD LoadImage(
    MemoryPointer<RChar> fileName,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.LoadImage,
    (p) => _wasm.LoadImage(
      p.toJS,
      fileName.toJS,
    ),
  );

  @override
  ImageD LoadImageRaw(
    MemoryPointer<RChar> fileName,
    int width,
    int height,
    int format,
    int headerSize,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.LoadImageRaw,
    (p) => _wasm.LoadImageRaw(
      p.toJS,
      fileName.toJS,
      width.toJS,
      height.toJS,
      format.toJS,
      headerSize.toJS,
    ),
  );

  @override
  ImageD LoadImageAnim(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RInt> frames,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.LoadImageAnim,
    (p) => _wasm.LoadImageAnim(
      p.toJS,
      fileName.toJS,
      frames.toJS,
    ),
  );

  @override
  ImageD LoadImageAnimFromMemory(
    MemoryPointer<RChar> fileType,
    MemoryPointer<RUnsignedChar> fileData,
    int dataSize,
    MemoryPointer<RInt> frames,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.LoadImageAnimFromMemory,
    (p) => _wasm.LoadImageAnimFromMemory(
      p.toJS,
      fileType.toJS,
      fileData.toJS,
      dataSize.toJS,
      frames.toJS,
    ),
  );

  @override
  ImageD LoadImageFromMemory(
    MemoryPointer<RChar> fileType,
    MemoryPointer<RUnsignedChar> fileData,
    int dataSize,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.LoadImageFromMemory,
    (p) => _wasm.LoadImageFromMemory(
      p.toJS,
      fileType.toJS,
      fileData.toJS,
      dataSize.toJS,
    ),
  );

  @override
  ImageD LoadImageFromTexture(
    TextureD texture,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.LoadImageFromTexture,
    (p) => _wasm.LoadImageFromTexture(
      p.toJS,
      $.Texture$.Ref1(texture).toJS,
    ),
  );

  @override
  ImageD LoadImageFromScreen() => $.Image$.RefCapture(
    RaylibCaptureIds.LoadImageFromScreen,
    (p) => _wasm.LoadImageFromScreen(
      p.toJS,
    ),
  );

  @override
  bool IsImageValid(
    ImageD image,
  ) => _wasm.IsImageValid(
    $.Image$.Ref1(image).toJS,
  );

  @override
  void UnloadImage(
    ImageD image,
  ) => _wasm.UnloadImage(
    $.Image$.Ref1(image).toJS,
  );

  @override
  bool ExportImage(
    ImageD image,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportImage(
    $.Image$.Ref1(image).toJS,
    fileName.toJS,
  );

  @override
  WasmMemoryPointer<RUnsignedChar> ExportImageToMemory(
    ImageD image,
    MemoryPointer<RChar> fileType,
    MemoryPointer<RInt> fileSize,
  ) => _wasm.ExportImageToMemory(
    $.Image$.Ref1(image).toJS,
    fileType.toJS,
    fileSize.toJS,
  );

  @override
  bool ExportImageAsCode(
    ImageD image,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportImageAsCode(
    $.Image$.Ref1(image).toJS,
    fileName.toJS,
  );

  @override
  ImageD GenImageColor(
    int width,
    int height,
    ColorD color,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.GenImageColor,
    (p) => _wasm.GenImageColor(
      p.toJS,
      width.toJS,
      height.toJS,
      $.Color$.Ref1(color).toJS,
    ),
  );

  @override
  ImageD GenImageGradientLinear(
    int width,
    int height,
    int direction,
    ColorD start,
    ColorD end,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.GenImageGradientLinear,
    (p) => _wasm.GenImageGradientLinear(
      p.toJS,
      width.toJS,
      height.toJS,
      direction.toJS,
      $.Color$.Ref1(start).toJS,
      $.Color$.Ref2(end).toJS,
    ),
  );

  @override
  ImageD GenImageGradientRadial(
    int width,
    int height,
    double density,
    ColorD inner,
    ColorD outer,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.GenImageGradientRadial,
    (p) => _wasm.GenImageGradientRadial(
      p.toJS,
      width.toJS,
      height.toJS,
      density.toJS,
      $.Color$.Ref1(inner).toJS,
      $.Color$.Ref2(outer).toJS,
    ),
  );

  @override
  ImageD GenImageGradientSquare(
    int width,
    int height,
    double density,
    ColorD inner,
    ColorD outer,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.GenImageGradientSquare,
    (p) => _wasm.GenImageGradientSquare(
      p.toJS,
      width.toJS,
      height.toJS,
      density.toJS,
      $.Color$.Ref1(inner).toJS,
      $.Color$.Ref2(outer).toJS,
    ),
  );

  @override
  ImageD GenImageChecked(
    int width,
    int height,
    int checksX,
    int checksY,
    ColorD col1,
    ColorD col2,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.GenImageChecked,
    (p) => _wasm.GenImageChecked(
      p.toJS,
      width.toJS,
      height.toJS,
      checksX.toJS,
      checksY.toJS,
      $.Color$.Ref1(col1).toJS,
      $.Color$.Ref2(col2).toJS,
    ),
  );

  @override
  ImageD GenImageWhiteNoise(
    int width,
    int height,
    double factor,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.GenImageWhiteNoise,
    (p) => _wasm.GenImageWhiteNoise(
      p.toJS,
      width.toJS,
      height.toJS,
      factor.toJS,
    ),
  );

  @override
  ImageD GenImagePerlinNoise(
    int width,
    int height,
    int offsetX,
    int offsetY,
    double scale,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.GenImagePerlinNoise,
    (p) => _wasm.GenImagePerlinNoise(
      p.toJS,
      width.toJS,
      height.toJS,
      offsetX.toJS,
      offsetY.toJS,
      scale.toJS,
    ),
  );

  @override
  ImageD GenImageCellular(
    int width,
    int height,
    int tileSize,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.GenImageCellular,
    (p) => _wasm.GenImageCellular(
      p.toJS,
      width.toJS,
      height.toJS,
      tileSize.toJS,
    ),
  );

  @override
  ImageD GenImageText(
    int width,
    int height,
    MemoryPointer<RChar> text,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.GenImageText,
    (p) => _wasm.GenImageText(
      p.toJS,
      width.toJS,
      height.toJS,
      text.toJS,
    ),
  );

  @override
  ImageD ImageCopy(
    ImageD image,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.ImageCopy,
    (p) => _wasm.ImageCopy(
      p.toJS,
      $.Image$.Ref1(image).toJS,
    ),
  );

  @override
  ImageD ImageFromImage(
    ImageD image,
    RectangleD rec,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.ImageFromImage,
    (p) => _wasm.ImageFromImage(
      p.toJS,
      $.Image$.Ref1(image).toJS,
      $.Rectangle$.Ref1(rec).toJS,
    ),
  );

  @override
  ImageD ImageFromChannel(
    ImageD image,
    int selectedChannel,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.ImageFromChannel,
    (p) => _wasm.ImageFromChannel(
      p.toJS,
      $.Image$.Ref1(image).toJS,
      selectedChannel.toJS,
    ),
  );

  @override
  ImageD ImageText(
    MemoryPointer<RChar> text,
    int fontSize,
    ColorD color,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.ImageText,
    (p) => _wasm.ImageText(
      p.toJS,
      text.toJS,
      fontSize.toJS,
      $.Color$.Ref1(color).toJS,
    ),
  );

  @override
  ImageD ImageTextEx(
    FontD font,
    MemoryPointer<RChar> text,
    double fontSize,
    double spacing,
    ColorD tint,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.ImageTextEx,
    (p) => _wasm.ImageTextEx(
      p.toJS,
      $.Font$.Ref1(font).toJS,
      text.toJS,
      fontSize.toJS,
      spacing.toJS,
      $.Color$.Ref1(tint).toJS,
    ),
  );

  @override
  void ImageFormat(
    StructPointer<ImageD> image,
    int newFormat,
  ) => _wasm.ImageFormat(
    image.toJS,
    newFormat.toJS,
  );

  @override
  void ImageToPOT(
    StructPointer<ImageD> image,
    ColorD fill,
  ) => _wasm.ImageToPOT(
    image.toJS,
    $.Color$.Ref1(fill).toJS,
  );

  @override
  void ImageCrop(
    StructPointer<ImageD> image,
    RectangleD crop,
  ) => _wasm.ImageCrop(
    image.toJS,
    $.Rectangle$.Ref1(crop).toJS,
  );

  @override
  void ImageAlphaCrop(
    StructPointer<ImageD> image,
    double threshold,
  ) => _wasm.ImageAlphaCrop(
    image.toJS,
    threshold.toJS,
  );

  @override
  void ImageAlphaClear(
    StructPointer<ImageD> image,
    ColorD color,
    double threshold,
  ) => _wasm.ImageAlphaClear(
    image.toJS,
    $.Color$.Ref1(color).toJS,
    threshold.toJS,
  );

  @override
  void ImageAlphaMask(
    StructPointer<ImageD> image,
    ImageD alphaMask,
  ) => _wasm.ImageAlphaMask(
    image.toJS,
    $.Image$.Ref2(alphaMask).toJS,
  );

  @override
  void ImageAlphaPremultiply(
    StructPointer<ImageD> image,
  ) => _wasm.ImageAlphaPremultiply(
    image.toJS,
  );

  @override
  void ImageBlurGaussian(
    StructPointer<ImageD> image,
    int blurSize,
  ) => _wasm.ImageBlurGaussian(
    image.toJS,
    blurSize.toJS,
  );

  @override
  void ImageKernelConvolution(
    StructPointer<ImageD> image,
    MemoryPointer<RFloat> kernel,
    int kernelSize,
  ) => _wasm.ImageKernelConvolution(
    image.toJS,
    kernel.toJS,
    kernelSize.toJS,
  );

  @override
  void ImageResize(
    StructPointer<ImageD> image,
    int newWidth,
    int newHeight,
  ) => _wasm.ImageResize(
    image.toJS,
    newWidth.toJS,
    newHeight.toJS,
  );

  @override
  void ImageResizeNN(
    StructPointer<ImageD> image,
    int newWidth,
    int newHeight,
  ) => _wasm.ImageResizeNN(
    image.toJS,
    newWidth.toJS,
    newHeight.toJS,
  );

  @override
  void ImageResizeCanvas(
    StructPointer<ImageD> image,
    int newWidth,
    int newHeight,
    int offsetX,
    int offsetY,
    ColorD fill,
  ) => _wasm.ImageResizeCanvas(
    image.toJS,
    newWidth.toJS,
    newHeight.toJS,
    offsetX.toJS,
    offsetY.toJS,
    $.Color$.Ref1(fill).toJS,
  );

  @override
  void ImageMipmaps(
    StructPointer<ImageD> image,
  ) => _wasm.ImageMipmaps(
    image.toJS,
  );

  @override
  void ImageDither(
    StructPointer<ImageD> image,
    int rBpp,
    int gBpp,
    int bBpp,
    int aBpp,
  ) => _wasm.ImageDither(
    image.toJS,
    rBpp.toJS,
    gBpp.toJS,
    bBpp.toJS,
    aBpp.toJS,
  );

  @override
  void ImageFlipVertical(
    StructPointer<ImageD> image,
  ) => _wasm.ImageFlipVertical(
    image.toJS,
  );

  @override
  void ImageFlipHorizontal(
    StructPointer<ImageD> image,
  ) => _wasm.ImageFlipHorizontal(
    image.toJS,
  );

  @override
  void ImageRotate(
    StructPointer<ImageD> image,
    int degrees,
  ) => _wasm.ImageRotate(
    image.toJS,
    degrees.toJS,
  );

  @override
  void ImageRotateCW(
    StructPointer<ImageD> image,
  ) => _wasm.ImageRotateCW(
    image.toJS,
  );

  @override
  void ImageRotateCCW(
    StructPointer<ImageD> image,
  ) => _wasm.ImageRotateCCW(
    image.toJS,
  );

  @override
  void ImageColorTint(
    StructPointer<ImageD> image,
    ColorD color,
  ) => _wasm.ImageColorTint(
    image.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageColorInvert(
    StructPointer<ImageD> image,
  ) => _wasm.ImageColorInvert(
    image.toJS,
  );

  @override
  void ImageColorGrayscale(
    StructPointer<ImageD> image,
  ) => _wasm.ImageColorGrayscale(
    image.toJS,
  );

  @override
  void ImageColorContrast(
    StructPointer<ImageD> image,
    double contrast,
  ) => _wasm.ImageColorContrast(
    image.toJS,
    contrast.toJS,
  );

  @override
  void ImageColorBrightness(
    StructPointer<ImageD> image,
    int brightness,
  ) => _wasm.ImageColorBrightness(
    image.toJS,
    brightness.toJS,
  );

  @override
  void ImageColorReplace(
    StructPointer<ImageD> image,
    ColorD color,
    ColorD replace,
  ) => _wasm.ImageColorReplace(
    image.toJS,
    $.Color$.Ref1(color).toJS,
    $.Color$.Ref2(replace).toJS,
  );

  @override
  StructPointer<ColorD> LoadImageColors(
    ImageD image,
  ) => _wasm.LoadImageColors(
    $.Image$.Ref1(image).toJS,
  );

  @override
  StructPointer<ColorD> LoadImagePalette(
    ImageD image,
    int maxPaletteSize,
    MemoryPointer<RInt> colorCount,
  ) => _wasm.LoadImagePalette(
    $.Image$.Ref1(image).toJS,
    maxPaletteSize.toJS,
    colorCount.toJS,
  );

  @override
  void UnloadImageColors(
    StructPointer<ColorD> colors,
  ) => _wasm.UnloadImageColors(
    colors.toJS,
  );

  @override
  void UnloadImagePalette(
    StructPointer<ColorD> colors,
  ) => _wasm.UnloadImagePalette(
    colors.toJS,
  );

  @override
  RectangleD GetImageAlphaBorder(
    ImageD image,
    double threshold,
  ) => $.Rectangle$.Extract1(
    (p) => _wasm.GetImageAlphaBorder(
      p.toJS,
      $.Image$.Ref1(image).toJS,
      threshold.toJS,
    ),
  );

  @override
  ColorD GetImageColor(
    ImageD image,
    int x,
    int y,
  ) => $.Color$.Extract1(
    (p) => _wasm.GetImageColor(
      p.toJS,
      $.Image$.Ref1(image).toJS,
      x.toJS,
      y.toJS,
    ),
  );

  @override
  void ImageClearBackground(
    StructPointer<ImageD> dst,
    ColorD color,
  ) => _wasm.ImageClearBackground(
    dst.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDrawPixel(
    StructPointer<ImageD> dst,
    int posX,
    int posY,
    ColorD color,
  ) => _wasm.ImageDrawPixel(
    dst.toJS,
    posX.toJS,
    posY.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDrawPixelV(
    StructPointer<ImageD> dst,
    Vector2D position,
    ColorD color,
  ) => _wasm.ImageDrawPixelV(
    dst.toJS,
    $.Vector2$.Ref1(position).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDrawLine(
    StructPointer<ImageD> dst,
    int startPosX,
    int startPosY,
    int endPosX,
    int endPosY,
    ColorD color,
  ) => _wasm.ImageDrawLine(
    dst.toJS,
    startPosX.toJS,
    startPosY.toJS,
    endPosX.toJS,
    endPosY.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDrawLineV(
    StructPointer<ImageD> dst,
    Vector2D start,
    Vector2D end,
    ColorD color,
  ) => _wasm.ImageDrawLineV(
    dst.toJS,
    $.Vector2$.Ref1(start).toJS,
    $.Vector2$.Ref2(end).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDrawLineEx(
    StructPointer<ImageD> dst,
    Vector2D start,
    Vector2D end,
    int thick,
    ColorD color,
  ) => _wasm.ImageDrawLineEx(
    dst.toJS,
    $.Vector2$.Ref1(start).toJS,
    $.Vector2$.Ref2(end).toJS,
    thick.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDrawCircle(
    StructPointer<ImageD> dst,
    int centerX,
    int centerY,
    int radius,
    ColorD color,
  ) => _wasm.ImageDrawCircle(
    dst.toJS,
    centerX.toJS,
    centerY.toJS,
    radius.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDrawCircleV(
    StructPointer<ImageD> dst,
    Vector2D center,
    int radius,
    ColorD color,
  ) => _wasm.ImageDrawCircleV(
    dst.toJS,
    $.Vector2$.Ref1(center).toJS,
    radius.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDrawCircleLines(
    StructPointer<ImageD> dst,
    int centerX,
    int centerY,
    int radius,
    ColorD color,
  ) => _wasm.ImageDrawCircleLines(
    dst.toJS,
    centerX.toJS,
    centerY.toJS,
    radius.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDrawCircleLinesV(
    StructPointer<ImageD> dst,
    Vector2D center,
    int radius,
    ColorD color,
  ) => _wasm.ImageDrawCircleLinesV(
    dst.toJS,
    $.Vector2$.Ref1(center).toJS,
    radius.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDrawRectangle(
    StructPointer<ImageD> dst,
    int posX,
    int posY,
    int width,
    int height,
    ColorD color,
  ) => _wasm.ImageDrawRectangle(
    dst.toJS,
    posX.toJS,
    posY.toJS,
    width.toJS,
    height.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDrawRectangleV(
    StructPointer<ImageD> dst,
    Vector2D position,
    Vector2D size,
    ColorD color,
  ) => _wasm.ImageDrawRectangleV(
    dst.toJS,
    $.Vector2$.Ref1(position).toJS,
    $.Vector2$.Ref2(size).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDrawRectangleRec(
    StructPointer<ImageD> dst,
    RectangleD rec,
    ColorD color,
  ) => _wasm.ImageDrawRectangleRec(
    dst.toJS,
    $.Rectangle$.Ref1(rec).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDrawRectangleLines(
    StructPointer<ImageD> dst,
    RectangleD rec,
    int thick,
    ColorD color,
  ) => _wasm.ImageDrawRectangleLines(
    dst.toJS,
    $.Rectangle$.Ref1(rec).toJS,
    thick.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDrawTriangle(
    StructPointer<ImageD> dst,
    Vector2D v1,
    Vector2D v2,
    Vector2D v3,
    ColorD color,
  ) => _wasm.ImageDrawTriangle(
    dst.toJS,
    $.Vector2$.Ref1(v1).toJS,
    $.Vector2$.Ref2(v2).toJS,
    $.Vector2$.Ref3(v3).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDrawTriangleEx(
    StructPointer<ImageD> dst,
    Vector2D v1,
    Vector2D v2,
    Vector2D v3,
    ColorD c1,
    ColorD c2,
    ColorD c3,
  ) => _wasm.ImageDrawTriangleEx(
    dst.toJS,
    $.Vector2$.Ref1(v1).toJS,
    $.Vector2$.Ref2(v2).toJS,
    $.Vector2$.Ref3(v3).toJS,
    $.Color$.Ref1(c1).toJS,
    $.Color$.Ref2(c2).toJS,
    $.Color$.Ref3(c3).toJS,
  );

  @override
  void ImageDrawTriangleLines(
    StructPointer<ImageD> dst,
    Vector2D v1,
    Vector2D v2,
    Vector2D v3,
    ColorD color,
  ) => _wasm.ImageDrawTriangleLines(
    dst.toJS,
    $.Vector2$.Ref1(v1).toJS,
    $.Vector2$.Ref2(v2).toJS,
    $.Vector2$.Ref3(v3).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDrawTriangleFan(
    StructPointer<ImageD> dst,
    StructPointer<Vector2D> points,
    int pointCount,
    ColorD color,
  ) => _wasm.ImageDrawTriangleFan(
    dst.toJS,
    points.toJS,
    pointCount.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDrawTriangleStrip(
    StructPointer<ImageD> dst,
    StructPointer<Vector2D> points,
    int pointCount,
    ColorD color,
  ) => _wasm.ImageDrawTriangleStrip(
    dst.toJS,
    points.toJS,
    pointCount.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDraw(
    StructPointer<ImageD> dst,
    ImageD src,
    RectangleD srcRec,
    RectangleD dstRec,
    ColorD tint,
  ) => _wasm.ImageDraw(
    dst.toJS,
    $.Image$.Ref2(src).toJS,
    $.Rectangle$.Ref1(srcRec).toJS,
    $.Rectangle$.Ref2(dstRec).toJS,
    $.Color$.Ref1(tint).toJS,
  );

  @override
  void ImageDrawText(
    StructPointer<ImageD> dst,
    MemoryPointer<RChar> text,
    int posX,
    int posY,
    int fontSize,
    ColorD color,
  ) => _wasm.ImageDrawText(
    dst.toJS,
    text.toJS,
    posX.toJS,
    posY.toJS,
    fontSize.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void ImageDrawTextEx(
    StructPointer<ImageD> dst,
    FontD font,
    MemoryPointer<RChar> text,
    Vector2D position,
    double fontSize,
    double spacing,
    ColorD tint,
  ) => _wasm.ImageDrawTextEx(
    dst.toJS,
    $.Font$.Ref1(font).toJS,
    text.toJS,
    $.Vector2$.Ref1(position).toJS,
    fontSize.toJS,
    spacing.toJS,
    $.Color$.Ref1(tint).toJS,
  );

  @override
  TextureD LoadTexture(
    MemoryPointer<RChar> fileName,
  ) => $.Texture$.RefCapture(
    RaylibCaptureIds.LoadTexture,
    (p) => _wasm.LoadTexture(
      p.toJS,
      fileName.toJS,
    ),
  );

  @override
  TextureD LoadTextureFromImage(
    ImageD image,
  ) => $.Texture$.RefCapture(
    RaylibCaptureIds.LoadTextureFromImage,
    (p) => _wasm.LoadTextureFromImage(
      p.toJS,
      $.Image$.Ref1(image).toJS,
    ),
  );

  @override
  TextureD LoadTextureCubemap(
    ImageD image,
    int layout,
  ) => $.Texture$.RefCapture(
    RaylibCaptureIds.LoadTextureCubemap,
    (p) => _wasm.LoadTextureCubemap(
      p.toJS,
      $.Image$.Ref1(image).toJS,
      layout.toJS,
    ),
  );

  @override
  RenderTextureD LoadRenderTexture(
    int width,
    int height,
  ) => $.RenderTexture$.RefCapture(
    RaylibCaptureIds.LoadRenderTexture,
    (p) => _wasm.LoadRenderTexture(
      p.toJS,
      width.toJS,
      height.toJS,
    ),
  );

  @override
  bool IsTextureValid(
    TextureD texture,
  ) => _wasm.IsTextureValid(
    $.Texture$.Ref1(texture).toJS,
  );

  @override
  void UnloadTexture(
    TextureD texture,
  ) => _wasm.UnloadTexture(
    $.Texture$.Ref1(texture).toJS,
  );

  @override
  bool IsRenderTextureValid(
    RenderTextureD target,
  ) => _wasm.IsRenderTextureValid(
    $.RenderTexture$.Ref1(target).toJS,
  );

  @override
  void UnloadRenderTexture(
    RenderTextureD target,
  ) => _wasm.UnloadRenderTexture(
    $.RenderTexture$.Ref1(target).toJS,
  );

  @override
  void UpdateTexture(
    TextureD texture,
    MemoryPointer<RVoid> pixels,
  ) => _wasm.UpdateTexture(
    $.Texture$.Ref1(texture).toJS,
    pixels.toJS,
  );

  @override
  void UpdateTextureRec(
    TextureD texture,
    RectangleD rec,
    MemoryPointer<RVoid> pixels,
  ) => _wasm.UpdateTextureRec(
    $.Texture$.Ref1(texture).toJS,
    $.Rectangle$.Ref1(rec).toJS,
    pixels.toJS,
  );

  @override
  void GenTextureMipmaps(
    StructPointer<TextureD> texture,
  ) => _wasm.GenTextureMipmaps(
    texture.toJS,
  );

  @override
  void SetTextureFilter(
    TextureD texture,
    int filter,
  ) => _wasm.SetTextureFilter(
    $.Texture$.Ref1(texture).toJS,
    filter.toJS,
  );

  @override
  void SetTextureWrap(
    TextureD texture,
    int wrap,
  ) => _wasm.SetTextureWrap(
    $.Texture$.Ref1(texture).toJS,
    wrap.toJS,
  );

  @override
  void DrawTexture(
    TextureD texture,
    int posX,
    int posY,
    ColorD tint,
  ) => _wasm.DrawTexture(
    $.Texture$.Ref1(texture).toJS,
    posX.toJS,
    posY.toJS,
    $.Color$.Ref1(tint).toJS,
  );

  @override
  void DrawTextureV(
    TextureD texture,
    Vector2D position,
    ColorD tint,
  ) => _wasm.DrawTextureV(
    $.Texture$.Ref1(texture).toJS,
    $.Vector2$.Ref1(position).toJS,
    $.Color$.Ref1(tint).toJS,
  );

  @override
  void DrawTextureEx(
    TextureD texture,
    Vector2D position,
    double rotation,
    double scale,
    ColorD tint,
  ) => _wasm.DrawTextureEx(
    $.Texture$.Ref1(texture).toJS,
    $.Vector2$.Ref1(position).toJS,
    rotation.toJS,
    scale.toJS,
    $.Color$.Ref1(tint).toJS,
  );

  @override
  void DrawTextureRec(
    TextureD texture,
    RectangleD source,
    Vector2D position,
    ColorD tint,
  ) => _wasm.DrawTextureRec(
    $.Texture$.Ref1(texture).toJS,
    $.Rectangle$.Ref1(source).toJS,
    $.Vector2$.Ref1(position).toJS,
    $.Color$.Ref1(tint).toJS,
  );

  @override
  void DrawTexturePro(
    TextureD texture,
    RectangleD source,
    RectangleD dest,
    Vector2D origin,
    double rotation,
    ColorD tint,
  ) => _wasm.DrawTexturePro(
    $.Texture$.Ref1(texture).toJS,
    $.Rectangle$.Ref1(source).toJS,
    $.Rectangle$.Ref2(dest).toJS,
    $.Vector2$.Ref1(origin).toJS,
    rotation.toJS,
    $.Color$.Ref1(tint).toJS,
  );

  @override
  void DrawTextureNPatch(
    TextureD texture,
    NPatchInfoD nPatchInfo,
    RectangleD dest,
    Vector2D origin,
    double rotation,
    ColorD tint,
  ) => _wasm.DrawTextureNPatch(
    $.Texture$.Ref1(texture).toJS,
    $.NPatchInfo$.Ref1(nPatchInfo).toJS,
    $.Rectangle$.Ref1(dest).toJS,
    $.Vector2$.Ref1(origin).toJS,
    rotation.toJS,
    $.Color$.Ref1(tint).toJS,
  );

  @override
  bool ColorIsEqual(
    ColorD col1,
    ColorD col2,
  ) => _wasm.ColorIsEqual(
    $.Color$.Ref1(col1).toJS,
    $.Color$.Ref2(col2).toJS,
  );

  @override
  ColorD Fade(
    ColorD color,
    double alpha,
  ) => $.Color$.Extract1(
    (p) => _wasm.Fade(
      p.toJS,
      $.Color$.Ref2(color).toJS,
      alpha.toJS,
    ),
  );

  @override
  int ColorToInt(
    ColorD color,
  ) => _wasm.ColorToInt(
    $.Color$.Ref1(color).toJS,
  );

  @override
  Vector4D ColorNormalize(
    ColorD color,
  ) => $.Vector4$.Extract1(
    (p) => _wasm.ColorNormalize(
      p.toJS,
      $.Color$.Ref1(color).toJS,
    ),
  );

  @override
  ColorD ColorFromNormalized(
    Vector4D normalized,
  ) => $.Color$.Extract1(
    (p) => _wasm.ColorFromNormalized(
      p.toJS,
      $.Vector4$.Ref1(normalized).toJS,
    ),
  );

  @override
  Vector3D ColorToHSV(
    ColorD color,
  ) => $.Vector3$.Extract1(
    (p) => _wasm.ColorToHSV(
      p.toJS,
      $.Color$.Ref1(color).toJS,
    ),
  );

  @override
  ColorD ColorFromHSV(
    double hue,
    double saturation,
    double value,
  ) => $.Color$.Extract1(
    (p) => _wasm.ColorFromHSV(
      p.toJS,
      hue.toJS,
      saturation.toJS,
      value.toJS,
    ),
  );

  @override
  ColorD ColorTint(
    ColorD color,
    ColorD tint,
  ) => $.Color$.Extract1(
    (p) => _wasm.ColorTint(
      p.toJS,
      $.Color$.Ref2(color).toJS,
      $.Color$.Ref3(tint).toJS,
    ),
  );

  @override
  ColorD ColorBrightness(
    ColorD color,
    double factor,
  ) => $.Color$.Extract1(
    (p) => _wasm.ColorBrightness(
      p.toJS,
      $.Color$.Ref2(color).toJS,
      factor.toJS,
    ),
  );

  @override
  ColorD ColorContrast(
    ColorD color,
    double contrast,
  ) => $.Color$.Extract1(
    (p) => _wasm.ColorContrast(
      p.toJS,
      $.Color$.Ref2(color).toJS,
      contrast.toJS,
    ),
  );

  @override
  ColorD ColorAlpha(
    ColorD color,
    double alpha,
  ) => $.Color$.Extract1(
    (p) => _wasm.ColorAlpha(
      p.toJS,
      $.Color$.Ref2(color).toJS,
      alpha.toJS,
    ),
  );

  @override
  ColorD ColorAlphaBlend(
    ColorD dst,
    ColorD src,
    ColorD tint,
  ) => $.Color$.Extract1(
    (p) => _wasm.ColorAlphaBlend(
      p.toJS,
      $.Color$.Ref2(dst).toJS,
      $.Color$.Ref3(src).toJS,
      $.Color$.Ref4(tint).toJS,
    ),
  );

  @override
  ColorD ColorLerp(
    ColorD color1,
    ColorD color2,
    double factor,
  ) => $.Color$.Extract1(
    (p) => _wasm.ColorLerp(
      p.toJS,
      $.Color$.Ref2(color1).toJS,
      $.Color$.Ref3(color2).toJS,
      factor.toJS,
    ),
  );

  @override
  ColorD GetColor(
    int hexValue,
  ) => $.Color$.Extract1(
    (p) => _wasm.GetColor(
      p.toJS,
      hexValue.toJS,
    ),
  );

  @override
  ColorD GetPixelColor(
    MemoryPointer<RVoid> srcPtr,
    int format,
  ) => $.Color$.Extract1(
    (p) => _wasm.GetPixelColor(
      p.toJS,
      srcPtr.toJS,
      format.toJS,
    ),
  );

  @override
  void SetPixelColor(
    MemoryPointer<RVoid> dstPtr,
    ColorD color,
    int format,
  ) => _wasm.SetPixelColor(
    dstPtr.toJS,
    $.Color$.Ref1(color).toJS,
    format.toJS,
  );

  @override
  int GetPixelDataSize(
    int width,
    int height,
    int format,
  ) => _wasm.GetPixelDataSize(
    width.toJS,
    height.toJS,
    format.toJS,
  );

  @override
  FontD GetFontDefault() => $.Font$.RefCaptureCached(
    RaylibCaptureIds.GetFontDefault,
    (p) => _wasm.GetFontDefault(
      p.toJS,
    ),
  );

  @override
  FontD LoadFont(
    MemoryPointer<RChar> fileName,
  ) => $.Font$.RefCapture(
    RaylibCaptureIds.LoadFont,
    (p) => _wasm.LoadFont(
      p.toJS,
      fileName.toJS,
    ),
  );

  @override
  FontD LoadFontEx(
    MemoryPointer<RChar> fileName,
    int fontSize,
    MemoryPointer<RInt> codepoints,
    int codepointCount,
  ) => $.Font$.RefCapture(
    RaylibCaptureIds.LoadFontEx,
    (p) => _wasm.LoadFontEx(
      p.toJS,
      fileName.toJS,
      fontSize.toJS,
      codepoints.toJS,
      codepointCount.toJS,
    ),
  );

  @override
  FontD LoadFontFromImage(
    ImageD image,
    ColorD key,
    int firstChar,
  ) => $.Font$.RefCapture(
    RaylibCaptureIds.LoadFontFromImage,
    (p) => _wasm.LoadFontFromImage(
      p.toJS,
      $.Image$.Ref1(image).toJS,
      $.Color$.Ref1(key).toJS,
      firstChar.toJS,
    ),
  );

  @override
  FontD LoadFontFromMemory(
    MemoryPointer<RChar> fileType,
    MemoryPointer<RUnsignedChar> fileData,
    int dataSize,
    int fontSize,
    MemoryPointer<RInt> codepoints,
    int codepointCount,
  ) => $.Font$.RefCapture(
    RaylibCaptureIds.LoadFontFromMemory,
    (p) => _wasm.LoadFontFromMemory(
      p.toJS,
      fileType.toJS,
      fileData.toJS,
      dataSize.toJS,
      fontSize.toJS,
      codepoints.toJS,
      codepointCount.toJS,
    ),
  );

  @override
  bool IsFontValid(
    FontD font,
  ) => _wasm.IsFontValid(
    $.Font$.Ref1(font).toJS,
  );

  @override
  StructPointer<GlyphInfoD> LoadFontData(
    MemoryPointer<RUnsignedChar> fileData,
    int dataSize,
    int fontSize,
    MemoryPointer<RInt> codepoints,
    int codepointCount,
    int type,
    MemoryPointer<RInt> glyphCount,
  ) => _wasm.LoadFontData(
    fileData.toJS,
    dataSize.toJS,
    fontSize.toJS,
    codepoints.toJS,
    codepointCount.toJS,
    type.toJS,
    glyphCount.toJS,
  );

  @override
  ImageD GenImageFontAtlas(
    StructPointer<GlyphInfoD> glyphs,
    MemoryPointer<RPointer<RStruct>> glyphRecs, // RectangleD
    int glyphCount,
    int fontSize,
    int padding,
    int packMethod,
  ) => $.Image$.RefCapture(
    RaylibCaptureIds.GenImageFontAtlas,
    (p) => _wasm.GenImageFontAtlas(
      p.toJS,
      glyphs.toJS,
      glyphRecs.toJS,
      glyphCount.toJS,
      fontSize.toJS,
      padding.toJS,
      packMethod.toJS,
    ),
  );

  @override
  void UnloadFontData(
    StructPointer<GlyphInfoD> glyphs,
    int glyphCount,
  ) => _wasm.UnloadFontData(
    glyphs.toJS,
    glyphCount.toJS,
  );

  @override
  void UnloadFont(
    FontD font,
  ) => _wasm.UnloadFont(
    $.Font$.Ref1(font).toJS,
  );

  @override
  bool ExportFontAsCode(
    FontD font,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportFontAsCode(
    $.Font$.Ref1(font).toJS,
    fileName.toJS,
  );

  @override
  void DrawFPS(
    int posX,
    int posY,
  ) => _wasm.DrawFPS(
    posX.toJS,
    posY.toJS,
  );

  @override
  void DrawText(
    MemoryPointer<RChar> text,
    int posX,
    int posY,
    int fontSize,
    ColorD color,
  ) => _wasm.DrawText(
    text.toJS,
    posX.toJS,
    posY.toJS,
    fontSize.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawTextEx(
    FontD font,
    MemoryPointer<RChar> text,
    Vector2D position,
    double fontSize,
    double spacing,
    ColorD tint,
  ) => _wasm.DrawTextEx(
    $.Font$.Ref1(font).toJS,
    text.toJS,
    $.Vector2$.Ref1(position).toJS,
    fontSize.toJS,
    spacing.toJS,
    $.Color$.Ref1(tint).toJS,
  );

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
  ) => _wasm.DrawTextPro(
    $.Font$.Ref1(font).toJS,
    text.toJS,
    $.Vector2$.Ref1(position).toJS,
    $.Vector2$.Ref2(origin).toJS,
    rotation.toJS,
    fontSize.toJS,
    spacing.toJS,
    $.Color$.Ref1(tint).toJS,
  );

  @override
  void DrawTextCodepoint(
    FontD font,
    int codepoint,
    Vector2D position,
    double fontSize,
    ColorD tint,
  ) => _wasm.DrawTextCodepoint(
    $.Font$.Ref1(font).toJS,
    codepoint.toJS,
    $.Vector2$.Ref1(position).toJS,
    fontSize.toJS,
    $.Color$.Ref1(tint).toJS,
  );

  @override
  void DrawTextCodepoints(
    FontD font,
    MemoryPointer<RInt> codepoints,
    int codepointCount,
    Vector2D position,
    double fontSize,
    double spacing,
    ColorD tint,
  ) => _wasm.DrawTextCodepoints(
    $.Font$.Ref1(font).toJS,
    codepoints.toJS,
    codepointCount.toJS,
    $.Vector2$.Ref1(position).toJS,
    fontSize.toJS,
    spacing.toJS,
    $.Color$.Ref1(tint).toJS,
  );

  @override
  void SetTextLineSpacing(
    int spacing,
  ) => _wasm.SetTextLineSpacing(
    spacing.toJS,
  );

  @override
  int MeasureText(
    MemoryPointer<RChar> text,
    int fontSize,
  ) => _wasm.MeasureText(
    text.toJS,
    fontSize.toJS,
  );

  @override
  Vector2D MeasureTextEx(
    FontD font,
    MemoryPointer<RChar> text,
    double fontSize,
    double spacing,
  ) => $.Vector2$.Extract1(
    (p) => _wasm.MeasureTextEx(
      p.toJS,
      $.Font$.Ref1(font).toJS,
      text.toJS,
      fontSize.toJS,
      spacing.toJS,
    ),
  );

  @override
  Vector2D MeasureTextCodepoints(
    FontD font,
    MemoryPointer<RInt> codepoints,
    int length,
    double fontSize,
    double spacing,
  ) => $.Vector2$.Extract1(
    (p) => _wasm.MeasureTextCodepoints(
      p.toJS,
      $.Font$.Ref1(font).toJS,
      codepoints.toJS,
      length.toJS,
      fontSize.toJS,
      spacing.toJS,
    ),
  );

  @override
  int GetGlyphIndex(
    FontD font,
    int codepoint,
  ) => _wasm.GetGlyphIndex(
    $.Font$.Ref1(font).toJS,
    codepoint.toJS,
  );

  @override
  GlyphInfoD GetGlyphInfo(
    FontD font,
    int codepoint,
  ) => $.GlyphInfo$.Extract1(
    (p) => _wasm.GetGlyphInfo(
      p.toJS,
      $.Font$.Ref1(font).toJS,
      codepoint.toJS,
    ),
  );

  @override
  RectangleD GetGlyphAtlasRec(
    FontD font,
    int codepoint,
  ) => $.Rectangle$.Extract1(
    (p) => _wasm.GetGlyphAtlasRec(
      p.toJS,
      $.Font$.Ref1(font).toJS,
      codepoint.toJS,
    ),
  );

  @override
  WasmMemoryPointer<RChar> LoadUTF8(
    MemoryPointer<RInt> codepoints,
    int length,
  ) => _wasm.LoadUTF8(
    codepoints.toJS,
    length.toJS,
  );

  @override
  void UnloadUTF8(
    MemoryPointer<RChar> text,
  ) => _wasm.UnloadUTF8(
    text.toJS,
  );

  @override
  WasmMemoryPointer<RInt> LoadCodepoints(
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> count,
  ) => _wasm.LoadCodepoints(
    text.toJS,
    count.toJS,
  );

  @override
  void UnloadCodepoints(
    MemoryPointer<RInt> codepoints,
  ) => _wasm.UnloadCodepoints(
    codepoints.toJS,
  );

  @override
  int GetCodepointCount(
    MemoryPointer<RChar> text,
  ) => _wasm.GetCodepointCount(
    text.toJS,
  );

  @override
  int GetCodepoint(
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> codepointSize,
  ) => _wasm.GetCodepoint(
    text.toJS,
    codepointSize.toJS,
  );

  @override
  int GetCodepointNext(
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> codepointSize,
  ) => _wasm.GetCodepointNext(
    text.toJS,
    codepointSize.toJS,
  );

  @override
  int GetCodepointPrevious(
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> codepointSize,
  ) => _wasm.GetCodepointPrevious(
    text.toJS,
    codepointSize.toJS,
  );

  @override
  WasmMemoryPointer<RChar> CodepointToUTF8(
    int codepoint,
    MemoryPointer<RInt> utf8Size,
  ) => _wasm.CodepointToUTF8(
    codepoint.toJS,
    utf8Size.toJS,
  );

  @override
  WasmMemoryPointer<RPointer<RChar>> LoadTextLines(
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> count,
  ) => _wasm.LoadTextLines(
    text.toJS,
    count.toJS,
  );

  @override
  void UnloadTextLines(
    MemoryPointer<RPointer<RChar>> text,
    int lineCount,
  ) => _wasm.UnloadTextLines(
    text.toJS,
    lineCount.toJS,
  );

  @override
  int TextCopy(
    MemoryPointer<RChar> dst,
    MemoryPointer<RChar> src,
  ) => _wasm.TextCopy(
    dst.toJS,
    src.toJS,
  );

  @override
  bool TextIsEqual(
    MemoryPointer<RChar> text1,
    MemoryPointer<RChar> text2,
  ) => _wasm.TextIsEqual(
    text1.toJS,
    text2.toJS,
  );

  @override
  int TextLength(
    MemoryPointer<RChar> text,
  ) => _wasm.TextLength(
    text.toJS,
  );

  @override
  WasmMemoryPointer<RChar> TextSubtext(
    MemoryPointer<RChar> text,
    int position,
    int length,
  ) => _wasm.TextSubtext(
    text.toJS,
    position.toJS,
    length.toJS
  );

  @override
  WasmMemoryPointer<RChar> TextRemoveSpaces(
    MemoryPointer<RChar> text,
  ) => _wasm.TextRemoveSpaces(
    text.toJS,
  );

  @override
  WasmMemoryPointer<RChar> GetTextBetween(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> begin,
    MemoryPointer<RChar> end,
  ) => _wasm.GetTextBetween(
    text.toJS,
    begin.toJS,
    end.toJS,
  );

  @override
  WasmMemoryPointer<RChar> TextReplace(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> replace,
    MemoryPointer<RChar> by,
  ) => _wasm.TextReplace(
    text.toJS,
    replace.toJS,
    by.toJS,
  );

  @override
  WasmMemoryPointer<RChar> TextReplaceAlloc(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> replace,
    MemoryPointer<RChar> by,
  ) => _wasm.TextReplaceAlloc(
    text.toJS,
    replace.toJS,
    by.toJS,
  );

  @override
  WasmMemoryPointer<RChar> TextReplaceBetween(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> begin,
    MemoryPointer<RChar> end,
    MemoryPointer<RChar> replacement,
  ) => _wasm.TextReplaceBetween(
    text.toJS,
    begin.toJS,
    end.toJS,
    replacement.toJS,
  );

  @override
  WasmMemoryPointer<RChar> TextReplaceBetweenAlloc(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> begin,
    MemoryPointer<RChar> end,
    MemoryPointer<RChar> replacement,
  ) => _wasm.TextReplaceBetweenAlloc(
    text.toJS,
    begin.toJS,
    end.toJS,
    replacement.toJS,
  );

  @override
  WasmMemoryPointer<RChar> TextInsert(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> insert,
    int position,
  ) => _wasm.TextInsert(
    text.toJS,
    insert.toJS,
    position.toJS,
  );

  @override
  WasmMemoryPointer<RChar> TextInsertAlloc(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> insert,
    int position,
  ) => _wasm.TextInsertAlloc(
    text.toJS,
    insert.toJS,
    position.toJS,
  );

  @override
  WasmMemoryPointer<RChar> TextJoin(
    MemoryPointer<RPointer<RChar>> textList,
    int count,
    MemoryPointer<RChar> delimiter,
  ) => _wasm.TextJoin(
    textList.toJS,
    count.toJS,
    delimiter.toJS,
  );

  @override
  WasmMemoryPointer<RPointer<RChar>> TextSplit(
    MemoryPointer<RChar> text,
    int delimiter,
    MemoryPointer<RInt> count,
  ) => _wasm.TextSplit(
    text.toJS,
    delimiter.toJS,
    count.toJS,
  );

  @override
  void TextAppend(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> append,
    MemoryPointer<RInt> position,
  ) => _wasm.TextAppend(
    text.toJS,
    append.toJS,
    position.toJS,
  );

  @override
  int TextFindIndex(
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> find,
  ) => _wasm.TextFindIndex(
    text.toJS,
    find.toJS,
  );

  @override
  WasmMemoryPointer<RChar> TextToUpper(
    MemoryPointer<RChar> text,
  ) => _wasm.TextToUpper(
    text.toJS,
  );

  @override
  WasmMemoryPointer<RChar> TextToLower(
    MemoryPointer<RChar> text,
  ) => _wasm.TextToLower(
    text.toJS,
  );

  @override
  WasmMemoryPointer<RChar> TextToPascal(
    MemoryPointer<RChar> text,
  ) => _wasm.TextToPascal(
    text.toJS,
  );

  @override
  WasmMemoryPointer<RChar> TextToSnake(
    MemoryPointer<RChar> text,
  ) => _wasm.TextToSnake(
    text.toJS,
  );

  @override
  WasmMemoryPointer<RChar> TextToCamel(
    MemoryPointer<RChar> text,
  ) => _wasm.TextToCamel(
    text.toJS,
  );

  @override
  int TextToInteger(
    MemoryPointer<RChar> text,
  ) => _wasm.TextToInteger(
    text.toJS,
  );

  @override
  double TextToFloat(
    MemoryPointer<RChar> text,
  ) => _wasm.TextToFloat(
    text.toJS,
  );

  @override
  void DrawLine3D(
    Vector3D startPos,
    Vector3D endPos,
    ColorD color,
  ) => _wasm.DrawLine3D(
    $.Vector3$.Ref1(startPos).toJS,
    $.Vector3$.Ref2(endPos).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawPoint3D(
    Vector3D position,
    ColorD color,
  ) => _wasm.DrawPoint3D(
    $.Vector3$.Ref1(position).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawCircle3D(
    Vector3D center,
    double radius,
    Vector3D rotationAxis,
    double rotationAngle,
    ColorD color,
  ) => _wasm.DrawCircle3D(
    $.Vector3$.Ref1(center).toJS,
    radius.toJS,
    $.Vector3$.Ref2(rotationAxis).toJS,
    rotationAngle.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawTriangle3D(
    Vector3D v1,
    Vector3D v2,
    Vector3D v3,
    ColorD color,
  ) => _wasm.DrawTriangle3D(
    $.Vector3$.Ref1(v1).toJS,
    $.Vector3$.Ref2(v2).toJS,
    $.Vector3$.Ref3(v3).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawTriangleStrip3D(
    StructPointer<Vector3D> points,
    int pointCount,
    ColorD color,
  ) => _wasm.DrawTriangleStrip3D(
    points.toJS,
    pointCount.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawCube(
    Vector3D position,
    double width,
    double height,
    double length,
    ColorD color,
  ) => _wasm.DrawCube(
    $.Vector3$.Ref1(position).toJS,
    width.toJS,
    height.toJS,
    length.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawCubeV(
    Vector3D position,
    Vector3D size,
    ColorD color,
  ) => _wasm.DrawCubeV(
    $.Vector3$.Ref1(position).toJS,
    $.Vector3$.Ref2(size).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawCubeWires(
    Vector3D position,
    double width,
    double height,
    double length,
    ColorD color,
  ) => _wasm.DrawCubeWires(
    $.Vector3$.Ref1(position).toJS,
    width.toJS,
    height.toJS,
    length.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawCubeWiresV(
    Vector3D position,
    Vector3D size,
    ColorD color,
  ) => _wasm.DrawCubeWiresV(
    $.Vector3$.Ref1(position).toJS,
    $.Vector3$.Ref2(size).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawSphere(
    Vector3D centerPos,
    double radius,
    ColorD color,
  ) => _wasm.DrawSphere(
    $.Vector3$.Ref1(centerPos).toJS,
    radius.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawSphereEx(
    Vector3D centerPos,
    double radius,
    int rings,
    int slices,
    ColorD color,
  ) => _wasm.DrawSphereEx(
    $.Vector3$.Ref1(centerPos).toJS,
    radius.toJS,
    rings.toJS,
    slices.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawSphereWires(
    Vector3D centerPos,
    double radius,
    int rings,
    int slices,
    ColorD color,
  ) => _wasm.DrawSphereWires(
    $.Vector3$.Ref1(centerPos).toJS,
    radius.toJS,
    rings.toJS,
    slices.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawCylinder(
    Vector3D position,
    double radiusTop,
    double radiusBottom,
    double height,
    int slices,
    ColorD color,
  ) => _wasm.DrawCylinder(
    $.Vector3$.Ref1(position).toJS,
    radiusTop.toJS,
    radiusBottom.toJS,
    height.toJS,
    slices.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawCylinderEx(
    Vector3D startPos,
    Vector3D endPos,
    double startRadius,
    double endRadius,
    int sides,
    ColorD color,
  ) => _wasm.DrawCylinderEx(
    $.Vector3$.Ref1(startPos).toJS,
    $.Vector3$.Ref2(endPos).toJS,
    startRadius.toJS,
    endRadius.toJS,
    sides.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawCylinderWires(
    Vector3D position,
    double radiusTop,
    double radiusBottom,
    double height,
    int slices,
    ColorD color,
  ) => _wasm.DrawCylinderWires(
    $.Vector3$.Ref1(position).toJS,
    radiusTop.toJS,
    radiusBottom.toJS,
    height.toJS,
    slices.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawCylinderWiresEx(
    Vector3D startPos,
    Vector3D endPos,
    double startRadius,
    double endRadius,
    int sides,
    ColorD color,
  ) => _wasm.DrawCylinderWiresEx(
    $.Vector3$.Ref1(startPos).toJS,
    $.Vector3$.Ref2(endPos).toJS,
    startRadius.toJS,
    endRadius.toJS,
    sides.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawCapsule(
    Vector3D startPos,
    Vector3D endPos,
    double radius,
    int slices,
    int rings,
    ColorD color,
  ) => _wasm.DrawCapsule(
    $.Vector3$.Ref1(startPos).toJS,
    $.Vector3$.Ref2(endPos).toJS,
    radius.toJS,
    slices.toJS,
    rings.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawCapsuleWires(
    Vector3D startPos,
    Vector3D endPos,
    double radius,
    int slices,
    int rings,
    ColorD color,
  ) => _wasm.DrawCapsuleWires(
    $.Vector3$.Ref1(startPos).toJS,
    $.Vector3$.Ref2(endPos).toJS,
    radius.toJS,
    slices.toJS,
    rings.toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawPlane(
    Vector3D centerPos,
    Vector2D size,
    ColorD color,
  ) => _wasm.DrawPlane(
    $.Vector3$.Ref1(centerPos).toJS,
    $.Vector2$.Ref1(size).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawRay(
    RayD ray,
    ColorD color,
  ) => _wasm.DrawRay(
    $.Ray$.Ref1(ray).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawGrid(
    int slices,
    double spacing,
  ) => _wasm.DrawGrid(
    slices.toJS,
    spacing.toJS,
  );

  @override
  ModelD LoadModel(
    MemoryPointer<RChar> fileName,
  ) => $.Model$.RefCapture(
    RaylibCaptureIds.LoadModel,
    (p) => _wasm.LoadModel(
      p.toJS,
      fileName.toJS,
    ),
  );

  @override
  ModelD LoadModelFromMesh(
    MeshD mesh,
  ) => $.Model$.RefCapture(
    RaylibCaptureIds.LoadModelFromMesh,
    (p) => _wasm.LoadModelFromMesh(
      p.toJS,
      $.Mesh$.Ref1(mesh).toJS,
    ),
  );

  @override
  bool IsModelValid(
    ModelD model,
  ) => _wasm.IsModelValid(
    $.Model$.Ref1(model).toJS,
  );

  @override
  void UnloadModel(
    ModelD model,
  ) => _wasm.UnloadModel(
    $.Model$.Ref1(model).toJS,
  );

  @override
  BoundingBoxD GetModelBoundingBox(
    ModelD model,
  ) => $.BoundingBox$.Extract1(
    (p) => _wasm.GetModelBoundingBox(
      p.toJS,
      $.Model$.Ref1(model).toJS,
    ),
  );

  @override
  void DrawModel(
    ModelD model,
    Vector3D position,
    double scale,
    ColorD tint,
  ) => _wasm.DrawModel(
    $.Model$.Ref1(model).toJS,
    $.Vector3$.Ref1(position).toJS,
    scale.toJS,
    $.Color$.Ref1(tint).toJS,
  );

  @override
  void DrawModelEx(
    ModelD model,
    Vector3D position,
    Vector3D rotationAxis,
    double rotationAngle,
    Vector3D scale,
    ColorD tint,
  ) => _wasm.DrawModelEx(
    $.Model$.Ref1(model).toJS,
    $.Vector3$.Ref1(position).toJS,
    $.Vector3$.Ref2(rotationAxis).toJS,
    rotationAngle.toJS,
    $.Vector3$.Ref3(scale).toJS,
    $.Color$.Ref1(tint).toJS,
  );

  @override
  void DrawModelWires(
    ModelD model,
    Vector3D position,
    double scale,
    ColorD tint,
  ) => _wasm.DrawModelWires(
    $.Model$.Ref1(model).toJS,
    $.Vector3$.Ref1(position).toJS,
    scale.toJS,
    $.Color$.Ref1(tint).toJS,
  );

  @override
  void DrawModelWiresEx(
    ModelD model,
    Vector3D position,
    Vector3D rotationAxis,
    double rotationAngle,
    Vector3D scale,
    ColorD tint,
  ) => _wasm.DrawModelWiresEx(
    $.Model$.Ref1(model).toJS,
    $.Vector3$.Ref1(position).toJS,
    $.Vector3$.Ref2(rotationAxis).toJS,
    rotationAngle.toJS,
    $.Vector3$.Ref3(scale).toJS,
    $.Color$.Ref1(tint).toJS,
  );

  @override
  void DrawBoundingBox(
    BoundingBoxD box,
    ColorD color,
  ) => _wasm.DrawBoundingBox(
    $.BoundingBox$.Ref1(box).toJS,
    $.Color$.Ref1(color).toJS,
  );

  @override
  void DrawBillboard(
    Camera3DD camera,
    TextureD texture,
    Vector3D position,
    double scale,
    ColorD tint,
  ) => _wasm.DrawBillboard(
    $.Camera3D$.Ref1(camera).toJS,
    $.Texture$.Ref1(texture).toJS,
    $.Vector3$.Ref1(position).toJS,
    scale.toJS,
    $.Color$.Ref1(tint).toJS,
  );

  @override
  void DrawBillboardRec(
    Camera3DD camera,
    TextureD texture,
    RectangleD source,
    Vector3D position,
    Vector2D size,
    ColorD tint,
  ) => _wasm.DrawBillboardRec(
    $.Camera3D$.Ref1(camera).toJS,
    $.Texture$.Ref1(texture).toJS,
    $.Rectangle$.Ref1(source).toJS,
    $.Vector3$.Ref1(position).toJS,
    $.Vector2$.Ref1(size).toJS,
    $.Color$.Ref1(tint).toJS,
  );

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
  ) => _wasm.DrawBillboardPro(
    $.Camera3D$.Ref1(camera).toJS,
    $.Texture$.Ref1(texture).toJS,
    $.Rectangle$.Ref1(source).toJS,
    $.Vector3$.Ref1(position).toJS,
    $.Vector3$.Ref2(up).toJS,
    $.Vector2$.Ref1(size).toJS,
    $.Vector2$.Ref2(origin).toJS,
    rotation.toJS,
    $.Color$.Ref1(tint).toJS,
  );

  @override
  void UploadMesh(
    StructPointer<MeshD> mesh,
    bool dynamic,
  ) => _wasm.UploadMesh(
    mesh.toJS,
    dynamic.toJS,
  );

  @override
  void UpdateMeshBuffer(
    MeshD mesh,
    int index,
    MemoryPointer<RVoid> data,
    int dataSize,
    int offset,
  ) => _wasm.UpdateMeshBuffer(
    $.Mesh$.Ref1(mesh).toJS,
    index.toJS,
    data.toJS,
    dataSize.toJS,
    offset.toJS,
  );

  @override
  void UnloadMesh(
    MeshD mesh,
  ) => _wasm.UnloadMesh(
    $.Mesh$.Ref1(mesh).toJS,
  );

  @override
  void DrawMesh(
    MeshD mesh,
    MaterialD material,
    MatrixD transform,
  ) => _wasm.DrawMesh(
    $.Mesh$.Ref1(mesh).toJS,
    $.Material$.Ref1(material).toJS,
    $.Matrix$.Ref1(transform).toJS,
  );

  @override
  void DrawMeshInstanced(
    MeshD mesh,
    MaterialD material,
    StructPointer<MatrixD> transforms,
    int instances,
  ) => _wasm.DrawMeshInstanced(
    $.Mesh$.Ref1(mesh).toJS,
    $.Material$.Ref1(material).toJS,
    transforms.toJS,
    instances.toJS,
  );

  @override
  BoundingBoxD GetMeshBoundingBox(
    MeshD mesh,
  ) => $.BoundingBox$.Extract1(
    (p) => _wasm.GetMeshBoundingBox(
      p.toJS,
      $.Mesh$.Ref1(mesh).toJS,
    ),
  );

  @override
  void GenMeshTangents(
    StructPointer<MeshD> mesh,
  ) => _wasm.GenMeshTangents(
    mesh.toJS,
  );

  @override
  bool ExportMesh(
    MeshD mesh,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportMesh(
    $.Mesh$.Ref1(mesh).toJS,
    fileName.toJS,
  );

  @override
  bool ExportMeshAsCode(
    MeshD mesh,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportMeshAsCode(
    $.Mesh$.Ref1(mesh).toJS,
    fileName.toJS,
  );

  @override
  MeshD GenMeshPoly(
    int sides,
    double radius,
  ) => $.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshPoly,
    (p) => _wasm.GenMeshPoly(
      p.toJS,
      sides.toJS,
      radius.toJS,
    ),
  );

  @override
  MeshD GenMeshPlane(
    double width,
    double length,
    int resX,
    int resZ,
  ) => $.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshPlane,
    (p) => _wasm.GenMeshPlane(
      p.toJS,
      width.toJS,
      length.toJS,
      resX.toJS,
      resZ.toJS,
    ),
  );

  @override
  MeshD GenMeshCube(
    double width,
    double height,
    double length,
  ) => $.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshCube,
    (p) => _wasm.GenMeshCube(
      p.toJS,
      width.toJS,
      height.toJS,
      length.toJS,
    ),
  );

  @override
  MeshD GenMeshSphere(
    double radius,
    int rings,
    int slices,
  ) => $.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshSphere,
    (p) => _wasm.GenMeshSphere(
      p.toJS,
      radius.toJS,
      rings.toJS,
      slices.toJS,
    ),
  );

  @override
  MeshD GenMeshHemiSphere(
    double radius,
    int rings,
    int slices,
  ) => $.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshHemiSphere,
    (p) => _wasm.GenMeshHemiSphere(
      p.toJS,
      radius.toJS,
      rings.toJS,
      slices.toJS,
    ),
  );

  @override
  MeshD GenMeshCylinder(
    double radius,
    double height,
    int slices,
  ) => $.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshCylinder,
    (p) => _wasm.GenMeshCylinder(
      p.toJS,
      radius.toJS,
      height.toJS,
      slices.toJS,
    ),
  );

  @override
  MeshD GenMeshCone(
    double radius,
    double height,
    int slices,
  ) => $.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshCone,
    (p) => _wasm.GenMeshCone(
      p.toJS,
      radius.toJS,
      height.toJS,
      slices.toJS,
    ),
  );

  @override
  MeshD GenMeshTorus(
    double radius,
    double size,
    int radSeg,
    int sides,
  ) => $.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshTorus,
    (p) => _wasm.GenMeshTorus(
      p.toJS,
      radius.toJS,
      size.toJS,
      radSeg.toJS,
      sides.toJS,
    ),
  );

  @override
  MeshD GenMeshKnot(
    double radius,
    double size,
    int radSeg,
    int sides,
  ) => $.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshKnot,
    (p) => _wasm.GenMeshKnot(
      p.toJS,
      radius.toJS,
      size.toJS,
      radSeg.toJS,
      sides.toJS,
    ),
  );

  @override
  MeshD GenMeshHeightmap(
    ImageD heightmap,
    Vector3D size,
  ) => $.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshHeightmap,
    (p) => _wasm.GenMeshHeightmap(
      p.toJS,
      $.Image$.Ref1(heightmap).toJS,
      $.Vector3$.Ref1(size).toJS,
    ),
  );

  @override
  MeshD GenMeshCubicmap(
    ImageD cubicmap,
    Vector3D cubeSize,
  ) => $.Mesh$.RefCapture(
    RaylibCaptureIds.GenMeshCubicmap,
    (p) => _wasm.GenMeshCubicmap(
      p.toJS,
      $.Image$.Ref1(cubicmap).toJS,
      $.Vector3$.Ref1(cubeSize).toJS,
    ),
  );

  @override
  StructPointer<MaterialD> LoadMaterials(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RInt> materialCount,
  ) => _wasm.LoadMaterials(
    fileName.toJS,
    materialCount.toJS,
  );

  @override
  MaterialD LoadMaterialDefault() => $.Material$.RefCapture(
    RaylibCaptureIds.LoadMaterialDefault,
    (p) => _wasm.LoadMaterialDefault(
      p.toJS,
    ),
  );

  @override
  bool IsMaterialValid(
    MaterialD material,
  ) => _wasm.IsMaterialValid(
    $.Material$.Ref1(material).toJS,
  );

  @override
  void UnloadMaterial(
    MaterialD material,
  ) => _wasm.UnloadMaterial(
    $.Material$.Ref1(material).toJS,
  );

  @override
  void SetMaterialTexture(
    StructPointer<MaterialD> material,
    int mapType,
    TextureD texture,
  ) => _wasm.SetMaterialTexture(
    material.toJS,
    mapType.toJS,
    $.Texture$.Ref1(texture).toJS,
  );

  @override
  void SetModelMeshMaterial(
    StructPointer<ModelD> model,
    int meshId,
    int materialId,
  ) => _wasm.SetModelMeshMaterial(
    model.toJS,
    meshId.toJS,
    materialId.toJS,
  );

  @override
  StructPointer<ModelAnimationD> LoadModelAnimations(
    MemoryPointer<RChar> fileName,
    MemoryPointer<RInt> animCount,
  ) => _wasm.LoadModelAnimations(
    fileName.toJS,
    animCount.toJS,
  );

  @override
  void UpdateModelAnimation(
    ModelD model,
    ModelAnimationD anim,
    double frame,
  ) => _wasm.UpdateModelAnimation(
    $.Model$.Ref1(model).toJS,
    $.ModelAnimation$.Ref1(anim).toJS,
    frame.toJS,
  );

  @override
  void UpdateModelAnimationEx(
    ModelD model,
    ModelAnimationD animA,
    double frameA,
    ModelAnimationD animB,
    double frameB,
    double blend,
  ) => _wasm.UpdateModelAnimationEx(
    $.Model$.Ref1(model).toJS,
    $.ModelAnimation$.Ref1(animA).toJS,
    frameA.toJS,
    $.ModelAnimation$.Ref2(animB).toJS,
    frameB.toJS,
    blend.toJS,
  );

  @override
  void UnloadModelAnimations(
    StructPointer<ModelAnimationD> animations,
    int animCount,
  ) => _wasm.UnloadModelAnimations(
    animations.toJS,
    animCount.toJS,
  );

  @override
  bool IsModelAnimationValid(
    ModelD model,
    ModelAnimationD anim,
  ) => _wasm.IsModelAnimationValid(
    $.Model$.Ref1(model).toJS,
    $.ModelAnimation$.Ref1(anim).toJS,
  );

  @override
  bool CheckCollisionSpheres(
    Vector3D center1,
    double radius1,
    Vector3D center2,
    double radius2,
  ) => _wasm.CheckCollisionSpheres(
    $.Vector3$.Ref1(center1).toJS,
    radius1.toJS,
    $.Vector3$.Ref2(center2).toJS,
    radius2.toJS,
  );

  @override
  bool CheckCollisionBoxes(
    BoundingBoxD box1,
    BoundingBoxD box2,
  ) => _wasm.CheckCollisionBoxes(
    $.BoundingBox$.Ref1(box1).toJS,
    $.BoundingBox$.Ref2(box2).toJS,
  );

  @override
  bool CheckCollisionBoxSphere(
    BoundingBoxD box,
    Vector3D center,
    double radius,
  ) => _wasm.CheckCollisionBoxSphere(
    $.BoundingBox$.Ref1(box).toJS,
    $.Vector3$.Ref1(center).toJS,
    radius.toJS,
  );

  @override
  RayCollisionD GetRayCollisionSphere(
    RayD ray,
    Vector3D center,
    double radius,
  ) => $.RayCollision$.Extract1(
    (p) => _wasm.GetRayCollisionSphere(
      p.toJS,
      $.Ray$.Ref1(ray).toJS,
      $.Vector3$.Ref1(center).toJS,
      radius.toJS,
    ),
  );

  @override
  RayCollisionD GetRayCollisionBox(
    RayD ray,
    BoundingBoxD box,
  ) => $.RayCollision$.Extract1(
    (p) => _wasm.GetRayCollisionBox(
      p.toJS,
      $.Ray$.Ref1(ray).toJS,
      $.BoundingBox$.Ref1(box).toJS,
    ),
  );

  @override
  RayCollisionD GetRayCollisionMesh(
    RayD ray,
    MeshD mesh,
    MatrixD transform,
  ) => $.RayCollision$.Extract1(
    (p) => _wasm.GetRayCollisionMesh(
      p.toJS,
      $.Ray$.Ref1(ray).toJS,
      $.Mesh$.Ref1(mesh).toJS,
      $.Matrix$.Ref1(transform).toJS,
    ),
  );

  @override
  RayCollisionD GetRayCollisionTriangle(
    RayD ray,
    Vector3D p1,
    Vector3D p2,
    Vector3D p3,
  ) => $.RayCollision$.Extract1(
    (p) => _wasm.GetRayCollisionTriangle(
      p.toJS,
      $.Ray$.Ref1(ray).toJS,
      $.Vector3$.Ref1(p1).toJS,
      $.Vector3$.Ref2(p2).toJS,
      $.Vector3$.Ref3(p3).toJS,
    ),
  );

  @override
  RayCollisionD GetRayCollisionQuad(
    RayD ray,
    Vector3D p1,
    Vector3D p2,
    Vector3D p3,
    Vector3D p4,
  ) => $.RayCollision$.Extract1(
    (p) => _wasm.GetRayCollisionQuad(
      p.toJS,
      $.Ray$.Ref1(ray).toJS,
      $.Vector3$.Ref1(p1).toJS,
      $.Vector3$.Ref2(p2).toJS,
      $.Vector3$.Ref3(p3).toJS,
      $.Vector3$.Ref4(p4).toJS,
    ),
  );
}