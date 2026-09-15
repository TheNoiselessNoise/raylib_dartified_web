import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibCore get _module => Raylib.instance.module();

/// See [RaylibCore.InitWindow].
WF3<void> get InitWindow => _module.InitWindow;
/// See [RaylibCore.CloseWindow].
WF0<void> get CloseWindow => _module.CloseWindow;
/// See [RaylibCore.WindowShouldClose].
WF0<bool> get WindowShouldClose => _module.WindowShouldClose;
/// See [RaylibCore.IsWindowReady].
WF0<bool> get IsWindowReady => _module.IsWindowReady;
/// See [RaylibCore.IsWindowFullscreen].
WF0<bool> get IsWindowFullscreen => _module.IsWindowFullscreen;
/// See [RaylibCore.IsWindowHidden].
WF0<bool> get IsWindowHidden => _module.IsWindowHidden;
/// See [RaylibCore.IsWindowMinimized].
WF0<bool> get IsWindowMinimized => _module.IsWindowMinimized;
/// See [RaylibCore.IsWindowMaximized].
WF0<bool> get IsWindowMaximized => _module.IsWindowMaximized;
/// See [RaylibCore.IsWindowFocused].
WF0<bool> get IsWindowFocused => _module.IsWindowFocused;
/// See [RaylibCore.IsWindowResized].
WF0<bool> get IsWindowResized => _module.IsWindowResized;
/// See [RaylibCore.IsWindowState].
WF1<bool> get IsWindowState => _module.IsWindowState;
/// See [RaylibCore.SetWindowState].
WF1<void> get SetWindowState => _module.SetWindowState;
/// See [RaylibCore.ClearWindowState].
WF1<void> get ClearWindowState => _module.ClearWindowState;
/// See [RaylibCore.ToggleFullscreen].
WF0<void> get ToggleFullscreen => _module.ToggleFullscreen;
/// See [RaylibCore.ToggleBorderlessWindowed].
WF0<void> get ToggleBorderlessWindowed => _module.ToggleBorderlessWindowed;
/// See [RaylibCore.MaximizeWindow].
WF0<void> get MaximizeWindow => _module.MaximizeWindow;
/// See [RaylibCore.MinimizeWindow].
WF0<void> get MinimizeWindow => _module.MinimizeWindow;
/// See [RaylibCore.RestoreWindow].
WF0<void> get RestoreWindow => _module.RestoreWindow;
/// See [RaylibCore.SetWindowIcon].
WF1<void> get SetWindowIcon => _module.SetWindowIcon;
/// See [RaylibCore.SetWindowIcons].
WF2<void> get SetWindowIcons => _module.SetWindowIcons;
/// See [RaylibCore.SetWindowTitle].
WF1<void> get SetWindowTitle => _module.SetWindowTitle;
/// See [RaylibCore.SetWindowPosition].
WF2<void> get SetWindowPosition => _module.SetWindowPosition;
/// See [RaylibCore.SetWindowMonitor].
WF1<void> get SetWindowMonitor => _module.SetWindowMonitor;
/// See [RaylibCore.SetWindowMinSize].
WF2<void> get SetWindowMinSize => _module.SetWindowMinSize;
/// See [RaylibCore.SetWindowMaxSize].
WF2<void> get SetWindowMaxSize => _module.SetWindowMaxSize;
/// See [RaylibCore.SetWindowSize].
WF2<void> get SetWindowSize => _module.SetWindowSize;
/// See [RaylibCore.SetWindowOpacity].
WF1<void> get SetWindowOpacity => _module.SetWindowOpacity;
/// See [RaylibCore.SetWindowFocused].
WF0<void> get SetWindowFocused => _module.SetWindowFocused;
/// See [RaylibCore.GetWindowHandle].
WF0<WasmMemoryPointer<RVoid>> get GetWindowHandle => _module.GetWindowHandle;
/// See [RaylibCore.GetScreenWidth].
WF0<int> get GetScreenWidth => _module.GetScreenWidth;
/// See [RaylibCore.GetScreenHeight].
WF0<int> get GetScreenHeight => _module.GetScreenHeight;
/// See [RaylibCore.GetRenderWidth].
WF0<int> get GetRenderWidth => _module.GetRenderWidth;
/// See [RaylibCore.GetRenderHeight].
WF0<int> get GetRenderHeight => _module.GetRenderHeight;
/// See [RaylibCore.GetMonitorCount].
WF0<int> get GetMonitorCount => _module.GetMonitorCount;
/// See [RaylibCore.GetCurrentMonitor].
WF0<int> get GetCurrentMonitor => _module.GetCurrentMonitor;
/// See [RaylibCore.GetMonitorPosition].
WF2<void> get GetMonitorPosition => _module.GetMonitorPosition;
/// See [RaylibCore.GetMonitorWidth].
WF1<int> get GetMonitorWidth => _module.GetMonitorWidth;
/// See [RaylibCore.GetMonitorHeight].
WF1<int> get GetMonitorHeight => _module.GetMonitorHeight;
/// See [RaylibCore.GetMonitorPhysicalWidth].
WF1<int> get GetMonitorPhysicalWidth => _module.GetMonitorPhysicalWidth;
/// See [RaylibCore.GetMonitorPhysicalHeight].
WF1<int> get GetMonitorPhysicalHeight => _module.GetMonitorPhysicalHeight;
/// See [RaylibCore.GetMonitorRefreshRate].
WF1<int> get GetMonitorRefreshRate => _module.GetMonitorRefreshRate;
/// See [RaylibCore.GetWindowPosition].
WF1<void> get GetWindowPosition => _module.GetWindowPosition;
/// See [RaylibCore.GetWindowScaleDPI].
WF1<void> get GetWindowScaleDPI => _module.GetWindowScaleDPI;
/// See [RaylibCore.GetMonitorName].
WF1<WasmMemoryPointer<RChar>> get GetMonitorName => _module.GetMonitorName;
/// See [RaylibCore.SetClipboardText].
WF1<void> get SetClipboardText => _module.SetClipboardText;
/// See [RaylibCore.GetClipboardText].
WF0<WasmMemoryPointer<RChar>> get GetClipboardText => _module.GetClipboardText;
/// See [RaylibCore.GetClipboardImage].
WF1<void> get GetClipboardImage => _module.GetClipboardImage;
/// See [RaylibCore.EnableEventWaiting].
WF0<void> get EnableEventWaiting => _module.EnableEventWaiting;
/// See [RaylibCore.DisableEventWaiting].
WF0<void> get DisableEventWaiting => _module.DisableEventWaiting;
/// See [RaylibCore.ShowCursor].
WF0<void> get ShowCursor => _module.ShowCursor;
/// See [RaylibCore.HideCursor].
WF0<void> get HideCursor => _module.HideCursor;
/// See [RaylibCore.IsCursorHidden].
WF0<bool> get IsCursorHidden => _module.IsCursorHidden;
/// See [RaylibCore.EnableCursor].
WF0<void> get EnableCursor => _module.EnableCursor;
/// See [RaylibCore.DisableCursor].
WF0<void> get DisableCursor => _module.DisableCursor;
/// See [RaylibCore.IsCursorOnScreen].
WF0<bool> get IsCursorOnScreen => _module.IsCursorOnScreen;
/// See [RaylibCore.ClearBackground].
WF1<void> get ClearBackground => _module.ClearBackground;
/// See [RaylibCore.BeginDrawing].
WF0<void> get BeginDrawing => _module.BeginDrawing;
/// See [RaylibCore.EndDrawing].
WF0<void> get EndDrawing => _module.EndDrawing;
/// See [RaylibCore.BeginMode2D].
WF1<void> get BeginMode2D => _module.BeginMode2D;
/// See [RaylibCore.EndMode2D].
WF0<void> get EndMode2D => _module.EndMode2D;
/// See [RaylibCore.BeginMode3D].
WF1<void> get BeginMode3D => _module.BeginMode3D;
/// See [RaylibCore.EndMode3D].
WF0<void> get EndMode3D => _module.EndMode3D;
/// See [RaylibCore.BeginTextureMode].
WF1<void> get BeginTextureMode => _module.BeginTextureMode;
/// See [RaylibCore.EndTextureMode].
WF0<void> get EndTextureMode => _module.EndTextureMode;
/// See [RaylibCore.BeginShaderMode].
WF1<void> get BeginShaderMode => _module.BeginShaderMode;
/// See [RaylibCore.EndShaderMode].
WF0<void> get EndShaderMode => _module.EndShaderMode;
/// See [RaylibCore.BeginBlendMode].
WF1<void> get BeginBlendMode => _module.BeginBlendMode;
/// See [RaylibCore.EndBlendMode].
WF0<void> get EndBlendMode => _module.EndBlendMode;
/// See [RaylibCore.BeginScissorMode].
WF4<void> get BeginScissorMode => _module.BeginScissorMode;
/// See [RaylibCore.EndScissorMode].
WF0<void> get EndScissorMode => _module.EndScissorMode;
/// See [RaylibCore.BeginVrStereoMode].
WF1<void> get BeginVrStereoMode => _module.BeginVrStereoMode;
/// See [RaylibCore.EndVrStereoMode].
WF0<void> get EndVrStereoMode => _module.EndVrStereoMode;
/// See [RaylibCore.LoadVrStereoConfig].
WF2<void> get LoadVrStereoConfig => _module.LoadVrStereoConfig;
/// See [RaylibCore.UnloadVrStereoConfig].
WF1<void> get UnloadVrStereoConfig => _module.UnloadVrStereoConfig;
/// See [RaylibCore.LoadShader].
WF3<void> get LoadShader => _module.LoadShader;
/// See [RaylibCore.LoadShaderFromMemory].
WF3<void> get LoadShaderFromMemory => _module.LoadShaderFromMemory;
/// See [RaylibCore.IsShaderValid].
WF1<bool> get IsShaderValid => _module.IsShaderValid;
/// See [RaylibCore.GetShaderLocation].
WF2<int> get GetShaderLocation => _module.GetShaderLocation;
/// See [RaylibCore.GetShaderLocationAttrib].
WF2<int> get GetShaderLocationAttrib => _module.GetShaderLocationAttrib;
/// See [RaylibCore.SetShaderValue].
WF4<void> get SetShaderValue => _module.SetShaderValue;
/// See [RaylibCore.SetShaderValueV].
WF5<void> get SetShaderValueV => _module.SetShaderValueV;
/// See [RaylibCore.SetShaderValueMatrix].
WF3<void> get SetShaderValueMatrix => _module.SetShaderValueMatrix;
/// See [RaylibCore.SetShaderValueTexture].
WF3<void> get SetShaderValueTexture => _module.SetShaderValueTexture;
/// See [RaylibCore.UnloadShader].
WF1<void> get UnloadShader => _module.UnloadShader;
/// See [RaylibCore.GetScreenToWorldRay].
WF3<void> get GetScreenToWorldRay => _module.GetScreenToWorldRay;
/// See [RaylibCore.GetScreenToWorldRayEx].
WF5<void> get GetScreenToWorldRayEx => _module.GetScreenToWorldRayEx;
/// See [RaylibCore.GetWorldToScreen].
WF3<void> get GetWorldToScreen => _module.GetWorldToScreen;
/// See [RaylibCore.GetWorldToScreenEx].
WF5<void> get GetWorldToScreenEx => _module.GetWorldToScreenEx;
/// See [RaylibCore.GetWorldToScreen2D].
WF3<void> get GetWorldToScreen2D => _module.GetWorldToScreen2D;
/// See [RaylibCore.GetScreenToWorld2D].
WF3<void> get GetScreenToWorld2D => _module.GetScreenToWorld2D;
/// See [RaylibCore.GetCameraMatrix].
WF2<void> get GetCameraMatrix => _module.GetCameraMatrix;
/// See [RaylibCore.GetCameraMatrix2D].
WF2<void> get GetCameraMatrix2D => _module.GetCameraMatrix2D;
/// See [RaylibCore.SetTargetFPS].
WF1<void> get SetTargetFPS => _module.SetTargetFPS;
/// See [RaylibCore.GetFrameTime].
WF0<double> get GetFrameTime => _module.GetFrameTime;
/// See [RaylibCore.GetTime].
WF0<double> get GetTime => _module.GetTime;
/// See [RaylibCore.GetFPS].
WF0<int> get GetFPS => _module.GetFPS;
/// See [RaylibCore.SwapScreenBuffer].
WF0<void> get SwapScreenBuffer => _module.SwapScreenBuffer;
/// See [RaylibCore.PollInputEvents].
WF0<void> get PollInputEvents => _module.PollInputEvents;
/// See [RaylibCore.WaitTime].
WF1<void> get WaitTime => _module.WaitTime;
/// See [RaylibCore.SetRandomSeed].
WF1<void> get SetRandomSeed => _module.SetRandomSeed;
/// See [RaylibCore.GetRandomValue].
WF2<int> get GetRandomValue => _module.GetRandomValue;
/// See [RaylibCore.LoadRandomSequence].
WF3<WasmMemoryPointer<RInt>> get LoadRandomSequence => _module.LoadRandomSequence;
/// See [RaylibCore.UnloadRandomSequence].
WF1<void> get UnloadRandomSequence => _module.UnloadRandomSequence;
/// See [RaylibCore.TakeScreenshot].
WF1<void> get TakeScreenshot => _module.TakeScreenshot;
/// See [RaylibCore.SetConfigFlags].
WF1<void> get SetConfigFlags => _module.SetConfigFlags;
/// See [RaylibCore.OpenURL].
WF1<void> get OpenURL => _module.OpenURL;
/// See [RaylibCore.TraceLog].
WF2<void> get TraceLog => _module.TraceLog;
/// See [RaylibCore.SetTraceLogLevel].
WF1<void> get SetTraceLogLevel => _module.SetTraceLogLevel;
/// See [RaylibCore.SetTraceLogCallback].
WF1<void> get SetTraceLogCallback => _module.SetTraceLogCallback;
/// See [RaylibCore.SetLoadFileDataCallback].
WF1<void> get SetLoadFileDataCallback => _module.SetLoadFileDataCallback;
/// See [RaylibCore.SetSaveFileDataCallback].
WF1<void> get SetSaveFileDataCallback => _module.SetSaveFileDataCallback;
/// See [RaylibCore.SetLoadFileTextCallback].
WF1<void> get SetLoadFileTextCallback => _module.SetLoadFileTextCallback;
/// See [RaylibCore.SetSaveFileTextCallback].
WF1<void> get SetSaveFileTextCallback => _module.SetSaveFileTextCallback;
/// See [RaylibCore.LoadFileData].
WF2<WasmMemoryPointer<RUnsignedChar>> get LoadFileData => _module.LoadFileData;
/// See [RaylibCore.UnloadFileData].
WF1<void> get UnloadFileData => _module.UnloadFileData;
/// See [RaylibCore.SaveFileData].
WF3<bool> get SaveFileData => _module.SaveFileData;
/// See [RaylibCore.ExportDataAsCode].
WF3<bool> get ExportDataAsCode => _module.ExportDataAsCode;
/// See [RaylibCore.LoadFileText].
WF1<WasmMemoryPointer<RChar>> get LoadFileText => _module.LoadFileText;
/// See [RaylibCore.UnloadFileText].
WF1<void> get UnloadFileText => _module.UnloadFileText;
/// See [RaylibCore.SaveFileText].
WF2<bool> get SaveFileText => _module.SaveFileText;
/// See [RaylibCore.FileRename].
WF2<int> get FileRename => _module.FileRename;
/// See [RaylibCore.FileRemove].
WF1<int> get FileRemove => _module.FileRemove;
/// See [RaylibCore.FileCopy].
WF2<int> get FileCopy => _module.FileCopy;
/// See [RaylibCore.FileMove].
WF2<int> get FileMove => _module.FileMove;
/// See [RaylibCore.FileTextReplace].
WF3<int> get FileTextReplace => _module.FileTextReplace;
/// See [RaylibCore.FileTextFindIndex].
WF2<int> get FileTextFindIndex => _module.FileTextFindIndex;
/// See [RaylibCore.FileExists].
WF1<bool> get FileExists => _module.FileExists;
/// See [RaylibCore.DirectoryExists].
WF1<bool> get DirectoryExists => _module.DirectoryExists;
/// See [RaylibCore.IsFileExtension].
WF2<bool> get IsFileExtension => _module.IsFileExtension;
/// See [RaylibCore.GetFileLength].
WF1<int> get GetFileLength => _module.GetFileLength;
/// See [RaylibCore.GetFileExtension].
WF1<WasmMemoryPointer<RChar>> get GetFileExtension => _module.GetFileExtension;
/// See [RaylibCore.GetFileName].
WF1<WasmMemoryPointer<RChar>> get GetFileName => _module.GetFileName;
/// See [RaylibCore.GetFileNameWithoutExt].
WF1<WasmMemoryPointer<RChar>> get GetFileNameWithoutExt => _module.GetFileNameWithoutExt;
/// See [RaylibCore.GetDirectoryFileCount].
WF1<int> get GetDirectoryFileCount => _module.GetDirectoryFileCount;
/// See [RaylibCore.GetDirectoryFileCountEx].
WF3<int> get GetDirectoryFileCountEx => _module.GetDirectoryFileCountEx;
/// See [RaylibCore.GetDirectoryPath].
WF1<WasmMemoryPointer<RChar>> get GetDirectoryPath => _module.GetDirectoryPath;
/// See [RaylibCore.GetPrevDirectoryPath].
WF1<WasmMemoryPointer<RChar>> get GetPrevDirectoryPath => _module.GetPrevDirectoryPath;
/// See [RaylibCore.GetWorkingDirectory].
WF0<WasmMemoryPointer<RChar>> get GetWorkingDirectory => _module.GetWorkingDirectory;
/// See [RaylibCore.GetApplicationDirectory].
WF0<WasmMemoryPointer<RChar>> get GetApplicationDirectory => _module.GetApplicationDirectory;
/// See [RaylibCore.MakeDirectory].
WF1<int> get MakeDirectory => _module.MakeDirectory;
/// See [RaylibCore.ChangeDirectory].
WF1<bool> get ChangeDirectory => _module.ChangeDirectory;
/// See [RaylibCore.IsPathFile].
WF1<bool> get IsPathFile => _module.IsPathFile;
/// See [RaylibCore.IsFileNameValid].
WF1<bool> get IsFileNameValid => _module.IsFileNameValid;
/// See [RaylibCore.LoadDirectoryFiles].
WF2<void> get LoadDirectoryFiles => _module.LoadDirectoryFiles;
/// See [RaylibCore.LoadDirectoryFilesEx].
WF4<void> get LoadDirectoryFilesEx => _module.LoadDirectoryFilesEx;
/// See [RaylibCore.UnloadDirectoryFiles].
WF1<void> get UnloadDirectoryFiles => _module.UnloadDirectoryFiles;
/// See [RaylibCore.IsFileDropped].
WF0<bool> get IsFileDropped => _module.IsFileDropped;
/// See [RaylibCore.LoadDroppedFiles].
WF1<void> get LoadDroppedFiles => _module.LoadDroppedFiles;
/// See [RaylibCore.UnloadDroppedFiles].
WF1<void> get UnloadDroppedFiles => _module.UnloadDroppedFiles;
/// See [RaylibCore.GetFileModTime].
WF1<int> get GetFileModTime => _module.GetFileModTime;
/// See [RaylibCore.CompressData].
WF3<WasmMemoryPointer<RUnsignedChar>> get CompressData => _module.CompressData;
/// See [RaylibCore.DecompressData].
WF3<WasmMemoryPointer<RUnsignedChar>> get DecompressData => _module.DecompressData;
/// See [RaylibCore.EncodeDataBase64].
WF3<WasmMemoryPointer<RChar>> get EncodeDataBase64 => _module.EncodeDataBase64;
/// See [RaylibCore.DecodeDataBase64].
WF2<WasmMemoryPointer<RUnsignedChar>> get DecodeDataBase64 => _module.DecodeDataBase64;
/// See [RaylibCore.ComputeCRC32].
WF2<int> get ComputeCRC32 => _module.ComputeCRC32;
/// See [RaylibCore.ComputeMD5].
WF2<WasmMemoryPointer<RUnsignedInt>> get ComputeMD5 => _module.ComputeMD5;
/// See [RaylibCore.ComputeSHA1].
WF2<WasmMemoryPointer<RUnsignedInt>> get ComputeSHA1 => _module.ComputeSHA1;
/// See [RaylibCore.ComputeSHA256].
WF2<WasmMemoryPointer<RUnsignedInt>> get ComputeSHA256 => _module.ComputeSHA256;
/// See [RaylibCore.LoadAutomationEventList].
WF2<void> get LoadAutomationEventList => _module.LoadAutomationEventList;
/// See [RaylibCore.UnloadAutomationEventList].
WF1<void> get UnloadAutomationEventList => _module.UnloadAutomationEventList;
/// See [RaylibCore.ExportAutomationEventList].
WF2<bool> get ExportAutomationEventList => _module.ExportAutomationEventList;
/// See [RaylibCore.SetAutomationEventList].
WF1<void> get SetAutomationEventList => _module.SetAutomationEventList;
/// See [RaylibCore.SetAutomationEventBaseFrame].
WF1<void> get SetAutomationEventBaseFrame => _module.SetAutomationEventBaseFrame;
/// See [RaylibCore.StartAutomationEventRecording].
WF0<void> get StartAutomationEventRecording => _module.StartAutomationEventRecording;
/// See [RaylibCore.StopAutomationEventRecording].
WF0<void> get StopAutomationEventRecording => _module.StopAutomationEventRecording;
/// See [RaylibCore.PlayAutomationEvent].
WF1<void> get PlayAutomationEvent => _module.PlayAutomationEvent;
/// See [RaylibCore.IsKeyPressed].
WF1<bool> get IsKeyPressed => _module.IsKeyPressed;
/// See [RaylibCore.IsKeyPressedRepeat].
WF1<bool> get IsKeyPressedRepeat => _module.IsKeyPressedRepeat;
/// See [RaylibCore.IsKeyDown].
WF1<bool> get IsKeyDown => _module.IsKeyDown;
/// See [RaylibCore.IsKeyReleased].
WF1<bool> get IsKeyReleased => _module.IsKeyReleased;
/// See [RaylibCore.IsKeyUp].
WF1<bool> get IsKeyUp => _module.IsKeyUp;
/// See [RaylibCore.GetKeyName].
WF1<WasmMemoryPointer<RChar>> get GetKeyName => _module.GetKeyName;
/// See [RaylibCore.GetKeyPressed].
WF0<int> get GetKeyPressed => _module.GetKeyPressed;
/// See [RaylibCore.GetCharPressed].
WF0<int> get GetCharPressed => _module.GetCharPressed;
/// See [RaylibCore.SetExitKey].
WF1<void> get SetExitKey => _module.SetExitKey;
/// See [RaylibCore.IsGamepadAvailable].
WF1<bool> get IsGamepadAvailable => _module.IsGamepadAvailable;
/// See [RaylibCore.GetGamepadName].
WF1<WasmMemoryPointer<RChar>> get GetGamepadName => _module.GetGamepadName;
/// See [RaylibCore.IsGamepadButtonPressed].
WF2<bool> get IsGamepadButtonPressed => _module.IsGamepadButtonPressed;
/// See [RaylibCore.IsGamepadButtonDown].
WF2<bool> get IsGamepadButtonDown => _module.IsGamepadButtonDown;
/// See [RaylibCore.IsGamepadButtonReleased].
WF2<bool> get IsGamepadButtonReleased => _module.IsGamepadButtonReleased;
/// See [RaylibCore.IsGamepadButtonUp].
WF2<bool> get IsGamepadButtonUp => _module.IsGamepadButtonUp;
/// See [RaylibCore.GetGamepadButtonPressed].
WF0<int> get GetGamepadButtonPressed => _module.GetGamepadButtonPressed;
/// See [RaylibCore.GetGamepadAxisCount].
WF1<int> get GetGamepadAxisCount => _module.GetGamepadAxisCount;
/// See [RaylibCore.GetGamepadAxisMovement].
WF2<double> get GetGamepadAxisMovement => _module.GetGamepadAxisMovement;
/// See [RaylibCore.SetGamepadMappings].
WF1<int> get SetGamepadMappings => _module.SetGamepadMappings;
/// See [RaylibCore.SetGamepadVibration].
WF4<void> get SetGamepadVibration => _module.SetGamepadVibration;
/// See [RaylibCore.IsMouseButtonPressed].
WF1<bool> get IsMouseButtonPressed => _module.IsMouseButtonPressed;
/// See [RaylibCore.IsMouseButtonDown].
WF1<bool> get IsMouseButtonDown => _module.IsMouseButtonDown;
/// See [RaylibCore.IsMouseButtonReleased].
WF1<bool> get IsMouseButtonReleased => _module.IsMouseButtonReleased;
/// See [RaylibCore.IsMouseButtonUp].
WF1<bool> get IsMouseButtonUp => _module.IsMouseButtonUp;
/// See [RaylibCore.GetMouseX].
WF0<int> get GetMouseX => _module.GetMouseX;
/// See [RaylibCore.GetMouseY].
WF0<int> get GetMouseY => _module.GetMouseY;
/// See [RaylibCore.GetMousePosition].
WF1<void> get GetMousePosition => _module.GetMousePosition;
/// See [RaylibCore.GetMouseDelta].
WF1<void> get GetMouseDelta => _module.GetMouseDelta;
/// See [RaylibCore.SetMousePosition].
WF2<void> get SetMousePosition => _module.SetMousePosition;
/// See [RaylibCore.SetMouseOffset].
WF2<void> get SetMouseOffset => _module.SetMouseOffset;
/// See [RaylibCore.SetMouseScale].
WF2<void> get SetMouseScale => _module.SetMouseScale;
/// See [RaylibCore.GetMouseWheelMove].
WF0<double> get GetMouseWheelMove => _module.GetMouseWheelMove;
/// See [RaylibCore.GetMouseWheelMoveV].
WF1<void> get GetMouseWheelMoveV => _module.GetMouseWheelMoveV;
/// See [RaylibCore.SetMouseCursor].
WF1<void> get SetMouseCursor => _module.SetMouseCursor;
/// See [RaylibCore.GetTouchX].
WF0<int> get GetTouchX => _module.GetTouchX;
/// See [RaylibCore.GetTouchY].
WF0<int> get GetTouchY => _module.GetTouchY;
/// See [RaylibCore.GetTouchPosition].
WF2<void> get GetTouchPosition => _module.GetTouchPosition;
/// See [RaylibCore.GetTouchPointId].
WF1<int> get GetTouchPointId => _module.GetTouchPointId;
/// See [RaylibCore.GetTouchPointCount].
WF0<int> get GetTouchPointCount => _module.GetTouchPointCount;
/// See [RaylibCore.SetGesturesEnabled].
WF1<void> get SetGesturesEnabled => _module.SetGesturesEnabled;
/// See [RaylibCore.IsGestureDetected].
WF1<bool> get IsGestureDetected => _module.IsGestureDetected;
/// See [RaylibCore.GetGestureDetected].
WF0<int> get GetGestureDetected => _module.GetGestureDetected;
/// See [RaylibCore.GetGestureHoldDuration].
WF0<double> get GetGestureHoldDuration => _module.GetGestureHoldDuration;
/// See [RaylibCore.GetGestureDragVector].
WF1<void> get GetGestureDragVector => _module.GetGestureDragVector;
/// See [RaylibCore.GetGestureDragAngle].
WF0<double> get GetGestureDragAngle => _module.GetGestureDragAngle;
/// See [RaylibCore.GetGesturePinchVector].
WF1<void> get GetGesturePinchVector => _module.GetGesturePinchVector;
/// See [RaylibCore.GetGesturePinchAngle].
WF0<double> get GetGesturePinchAngle => _module.GetGesturePinchAngle;
/// See [RaylibCore.ProcessGestureEvent].
WF1<void> get ProcessGestureEvent => _module.ProcessGestureEvent;
/// See [RaylibCore.UpdateGestures].
WF0<void> get UpdateGestures => _module.UpdateGestures;
/// See [RaylibCore.UpdateCamera].
WF2<void> get UpdateCamera => _module.UpdateCamera;
/// See [RaylibCore.UpdateCameraPro].
WF4<void> get UpdateCameraPro => _module.UpdateCameraPro;
/// See [RaylibCore.SetShapesTexture].
WF2<void> get SetShapesTexture => _module.SetShapesTexture;
/// See [RaylibCore.GetShapesTexture].
WF1<void> get GetShapesTexture => _module.GetShapesTexture;
/// See [RaylibCore.GetShapesTextureRectangle].
WF1<void> get GetShapesTextureRectangle => _module.GetShapesTextureRectangle;
/// See [RaylibCore.DrawPixel].
WF3<void> get DrawPixel => _module.DrawPixel;
/// See [RaylibCore.DrawPixelV].
WF2<void> get DrawPixelV => _module.DrawPixelV;
/// See [RaylibCore.DrawLine].
WF5<void> get DrawLine => _module.DrawLine;
/// See [RaylibCore.DrawLineV].
WF3<void> get DrawLineV => _module.DrawLineV;
/// See [RaylibCore.DrawLineEx].
WF4<void> get DrawLineEx => _module.DrawLineEx;
/// See [RaylibCore.DrawLineStrip].
WF3<void> get DrawLineStrip => _module.DrawLineStrip;
/// See [RaylibCore.DrawLineBezier].
WF4<void> get DrawLineBezier => _module.DrawLineBezier;
/// See [RaylibCore.DrawLineDashed].
WF5<void> get DrawLineDashed => _module.DrawLineDashed;
/// See [RaylibCore.DrawCircle].
WF4<void> get DrawCircle => _module.DrawCircle;
/// See [RaylibCore.DrawCircleSector].
WF6<void> get DrawCircleSector => _module.DrawCircleSector;
/// See [RaylibCore.DrawCircleSectorLines].
WF6<void> get DrawCircleSectorLines => _module.DrawCircleSectorLines;
/// See [RaylibCore.DrawCircleGradient].
WF4<void> get DrawCircleGradient => _module.DrawCircleGradient;
/// See [RaylibCore.DrawCircleV].
WF3<void> get DrawCircleV => _module.DrawCircleV;
/// See [RaylibCore.DrawCircleLines].
WF4<void> get DrawCircleLines => _module.DrawCircleLines;
/// See [RaylibCore.DrawCircleLinesV].
WF3<void> get DrawCircleLinesV => _module.DrawCircleLinesV;
/// See [RaylibCore.DrawEllipse].
WF5<void> get DrawEllipse => _module.DrawEllipse;
/// See [RaylibCore.DrawEllipseV].
WF4<void> get DrawEllipseV => _module.DrawEllipseV;
/// See [RaylibCore.DrawEllipseLines].
WF5<void> get DrawEllipseLines => _module.DrawEllipseLines;
/// See [RaylibCore.DrawEllipseLinesV].
WF4<void> get DrawEllipseLinesV => _module.DrawEllipseLinesV;
/// See [RaylibCore.DrawRing].
WF7<void> get DrawRing => _module.DrawRing;
/// See [RaylibCore.DrawRingLines].
WF7<void> get DrawRingLines => _module.DrawRingLines;
/// See [RaylibCore.DrawRectangle].
WF5<void> get DrawRectangle => _module.DrawRectangle;
/// See [RaylibCore.DrawRectangleV].
WF3<void> get DrawRectangleV => _module.DrawRectangleV;
/// See [RaylibCore.DrawRectangleRec].
WF2<void> get DrawRectangleRec => _module.DrawRectangleRec;
/// See [RaylibCore.DrawRectanglePro].
WF4<void> get DrawRectanglePro => _module.DrawRectanglePro;
/// See [RaylibCore.DrawRectangleGradientV].
WF6<void> get DrawRectangleGradientV => _module.DrawRectangleGradientV;
/// See [RaylibCore.DrawRectangleGradientH].
WF6<void> get DrawRectangleGradientH => _module.DrawRectangleGradientH;
/// See [RaylibCore.DrawRectangleGradientEx].
WF5<void> get DrawRectangleGradientEx => _module.DrawRectangleGradientEx;
/// See [RaylibCore.DrawRectangleLines].
WF5<void> get DrawRectangleLines => _module.DrawRectangleLines;
/// See [RaylibCore.DrawRectangleLinesEx].
WF3<void> get DrawRectangleLinesEx => _module.DrawRectangleLinesEx;
/// See [RaylibCore.DrawRectangleRounded].
WF4<void> get DrawRectangleRounded => _module.DrawRectangleRounded;
/// See [RaylibCore.DrawRectangleRoundedLines].
WF4<void> get DrawRectangleRoundedLines => _module.DrawRectangleRoundedLines;
/// See [RaylibCore.DrawRectangleRoundedLinesEx].
WF5<void> get DrawRectangleRoundedLinesEx => _module.DrawRectangleRoundedLinesEx;
/// See [RaylibCore.DrawTriangle].
WF4<void> get DrawTriangle => _module.DrawTriangle;
/// See [RaylibCore.DrawTriangleLines].
WF4<void> get DrawTriangleLines => _module.DrawTriangleLines;
/// See [RaylibCore.DrawTriangleFan].
WF3<void> get DrawTriangleFan => _module.DrawTriangleFan;
/// See [RaylibCore.DrawTriangleStrip].
WF3<void> get DrawTriangleStrip => _module.DrawTriangleStrip;
/// See [RaylibCore.DrawPoly].
WF5<void> get DrawPoly => _module.DrawPoly;
/// See [RaylibCore.DrawPolyLines].
WF5<void> get DrawPolyLines => _module.DrawPolyLines;
/// See [RaylibCore.DrawPolyLinesEx].
WF6<void> get DrawPolyLinesEx => _module.DrawPolyLinesEx;
/// See [RaylibCore.DrawSplineLinear].
WF4<void> get DrawSplineLinear => _module.DrawSplineLinear;
/// See [RaylibCore.DrawSplineBasis].
WF4<void> get DrawSplineBasis => _module.DrawSplineBasis;
/// See [RaylibCore.DrawSplineCatmullRom].
WF4<void> get DrawSplineCatmullRom => _module.DrawSplineCatmullRom;
/// See [RaylibCore.DrawSplineBezierQuadratic].
WF4<void> get DrawSplineBezierQuadratic => _module.DrawSplineBezierQuadratic;
/// See [RaylibCore.DrawSplineBezierCubic].
WF4<void> get DrawSplineBezierCubic => _module.DrawSplineBezierCubic;
/// See [RaylibCore.DrawSplineSegmentLinear].
WF4<void> get DrawSplineSegmentLinear => _module.DrawSplineSegmentLinear;
/// See [RaylibCore.DrawSplineSegmentBasis].
WF6<void> get DrawSplineSegmentBasis => _module.DrawSplineSegmentBasis;
/// See [RaylibCore.DrawSplineSegmentCatmullRom].
WF6<void> get DrawSplineSegmentCatmullRom => _module.DrawSplineSegmentCatmullRom;
/// See [RaylibCore.DrawSplineSegmentBezierQuadratic].
WF5<void> get DrawSplineSegmentBezierQuadratic => _module.DrawSplineSegmentBezierQuadratic;
/// See [RaylibCore.DrawSplineSegmentBezierCubic].
WF6<void> get DrawSplineSegmentBezierCubic => _module.DrawSplineSegmentBezierCubic;
/// See [RaylibCore.GetSplinePointLinear].
WF4<void> get GetSplinePointLinear => _module.GetSplinePointLinear;
/// See [RaylibCore.GetSplinePointBasis].
WF6<void> get GetSplinePointBasis => _module.GetSplinePointBasis;
/// See [RaylibCore.GetSplinePointCatmullRom].
WF6<void> get GetSplinePointCatmullRom => _module.GetSplinePointCatmullRom;
/// See [RaylibCore.GetSplinePointBezierQuad].
WF5<void> get GetSplinePointBezierQuad => _module.GetSplinePointBezierQuad;
/// See [RaylibCore.GetSplinePointBezierCubic].
WF6<void> get GetSplinePointBezierCubic => _module.GetSplinePointBezierCubic;
/// See [RaylibCore.CheckCollisionRecs].
WF2<bool> get CheckCollisionRecs => _module.CheckCollisionRecs;
/// See [RaylibCore.CheckCollisionCircles].
WF4<bool> get CheckCollisionCircles => _module.CheckCollisionCircles;
/// See [RaylibCore.CheckCollisionCircleRec].
WF3<bool> get CheckCollisionCircleRec => _module.CheckCollisionCircleRec;
/// See [RaylibCore.CheckCollisionCircleLine].
WF4<bool> get CheckCollisionCircleLine => _module.CheckCollisionCircleLine;
/// See [RaylibCore.CheckCollisionPointRec].
WF2<bool> get CheckCollisionPointRec => _module.CheckCollisionPointRec;
/// See [RaylibCore.CheckCollisionPointCircle].
WF3<bool> get CheckCollisionPointCircle => _module.CheckCollisionPointCircle;
/// See [RaylibCore.CheckCollisionPointTriangle].
WF4<bool> get CheckCollisionPointTriangle => _module.CheckCollisionPointTriangle;
/// See [RaylibCore.CheckCollisionPointLine].
WF4<bool> get CheckCollisionPointLine => _module.CheckCollisionPointLine;
/// See [RaylibCore.CheckCollisionPointPoly].
WF3<bool> get CheckCollisionPointPoly => _module.CheckCollisionPointPoly;
/// See [RaylibCore.CheckCollisionLines].
WF5<bool> get CheckCollisionLines => _module.CheckCollisionLines;
/// See [RaylibCore.GetCollisionRec].
WF3<void> get GetCollisionRec => _module.GetCollisionRec;
/// See [RaylibCore.LoadImage].
WF2<void> get LoadImage => _module.LoadImage;
/// See [RaylibCore.LoadImageRaw].
WF6<void> get LoadImageRaw => _module.LoadImageRaw;
/// See [RaylibCore.LoadImageAnim].
WF3<void> get LoadImageAnim => _module.LoadImageAnim;
/// See [RaylibCore.LoadImageAnimFromMemory].
WF5<void> get LoadImageAnimFromMemory => _module.LoadImageAnimFromMemory;
/// See [RaylibCore.LoadImageFromMemory].
WF4<void> get LoadImageFromMemory => _module.LoadImageFromMemory;
/// See [RaylibCore.LoadImageFromTexture].
WF2<void> get LoadImageFromTexture => _module.LoadImageFromTexture;
/// See [RaylibCore.LoadImageFromScreen].
WF1<void> get LoadImageFromScreen => _module.LoadImageFromScreen;
/// See [RaylibCore.IsImageValid].
WF1<bool> get IsImageValid => _module.IsImageValid;
/// See [RaylibCore.UnloadImage].
WF1<void> get UnloadImage => _module.UnloadImage;
/// See [RaylibCore.ExportImage].
WF2<bool> get ExportImage => _module.ExportImage;
/// See [RaylibCore.ExportImageToMemory].
WF3<WasmMemoryPointer<RUnsignedChar>> get ExportImageToMemory => _module.ExportImageToMemory;
/// See [RaylibCore.ExportImageAsCode].
WF2<bool> get ExportImageAsCode => _module.ExportImageAsCode;
/// See [RaylibCore.GenImageColor].
WF4<void> get GenImageColor => _module.GenImageColor;
/// See [RaylibCore.GenImageGradientLinear].
WF6<void> get GenImageGradientLinear => _module.GenImageGradientLinear;
/// See [RaylibCore.GenImageGradientRadial].
WF6<void> get GenImageGradientRadial => _module.GenImageGradientRadial;
/// See [RaylibCore.GenImageGradientSquare].
WF6<void> get GenImageGradientSquare => _module.GenImageGradientSquare;
/// See [RaylibCore.GenImageChecked].
WF7<void> get GenImageChecked => _module.GenImageChecked;
/// See [RaylibCore.GenImageWhiteNoise].
WF4<void> get GenImageWhiteNoise => _module.GenImageWhiteNoise;
/// See [RaylibCore.GenImagePerlinNoise].
WF6<void> get GenImagePerlinNoise => _module.GenImagePerlinNoise;
/// See [RaylibCore.GenImageCellular].
WF4<void> get GenImageCellular => _module.GenImageCellular;
/// See [RaylibCore.GenImageText].
WF4<void> get GenImageText => _module.GenImageText;
/// See [RaylibCore.ImageCopy].
WF2<void> get ImageCopy => _module.ImageCopy;
/// See [RaylibCore.ImageFromImage].
WF3<void> get ImageFromImage => _module.ImageFromImage;
/// See [RaylibCore.ImageFromChannel].
WF3<void> get ImageFromChannel => _module.ImageFromChannel;
/// See [RaylibCore.ImageText].
WF4<void> get ImageText => _module.ImageText;
/// See [RaylibCore.ImageTextEx].
WF6<void> get ImageTextEx => _module.ImageTextEx;
/// See [RaylibCore.ImageFormat].
WF2<void> get ImageFormat => _module.ImageFormat;
/// See [RaylibCore.ImageToPOT].
WF2<void> get ImageToPOT => _module.ImageToPOT;
/// See [RaylibCore.ImageCrop].
WF2<void> get ImageCrop => _module.ImageCrop;
/// See [RaylibCore.ImageAlphaCrop].
WF2<void> get ImageAlphaCrop => _module.ImageAlphaCrop;
/// See [RaylibCore.ImageAlphaClear].
WF3<void> get ImageAlphaClear => _module.ImageAlphaClear;
/// See [RaylibCore.ImageAlphaMask].
WF2<void> get ImageAlphaMask => _module.ImageAlphaMask;
/// See [RaylibCore.ImageAlphaPremultiply].
WF1<void> get ImageAlphaPremultiply => _module.ImageAlphaPremultiply;
/// See [RaylibCore.ImageBlurGaussian].
WF2<void> get ImageBlurGaussian => _module.ImageBlurGaussian;
/// See [RaylibCore.ImageKernelConvolution].
WF3<void> get ImageKernelConvolution => _module.ImageKernelConvolution;
/// See [RaylibCore.ImageResize].
WF3<void> get ImageResize => _module.ImageResize;
/// See [RaylibCore.ImageResizeNN].
WF3<void> get ImageResizeNN => _module.ImageResizeNN;
/// See [RaylibCore.ImageResizeCanvas].
WF6<void> get ImageResizeCanvas => _module.ImageResizeCanvas;
/// See [RaylibCore.ImageMipmaps].
WF1<void> get ImageMipmaps => _module.ImageMipmaps;
/// See [RaylibCore.ImageDither].
WF5<void> get ImageDither => _module.ImageDither;
/// See [RaylibCore.ImageFlipVertical].
WF1<void> get ImageFlipVertical => _module.ImageFlipVertical;
/// See [RaylibCore.ImageFlipHorizontal].
WF1<void> get ImageFlipHorizontal => _module.ImageFlipHorizontal;
/// See [RaylibCore.ImageRotate].
WF2<void> get ImageRotate => _module.ImageRotate;
/// See [RaylibCore.ImageRotateCW].
WF1<void> get ImageRotateCW => _module.ImageRotateCW;
/// See [RaylibCore.ImageRotateCCW].
WF1<void> get ImageRotateCCW => _module.ImageRotateCCW;
/// See [RaylibCore.ImageColorTint].
WF2<void> get ImageColorTint => _module.ImageColorTint;
/// See [RaylibCore.ImageColorInvert].
WF1<void> get ImageColorInvert => _module.ImageColorInvert;
/// See [RaylibCore.ImageColorGrayscale].
WF1<void> get ImageColorGrayscale => _module.ImageColorGrayscale;
/// See [RaylibCore.ImageColorContrast].
WF2<void> get ImageColorContrast => _module.ImageColorContrast;
/// See [RaylibCore.ImageColorBrightness].
WF2<void> get ImageColorBrightness => _module.ImageColorBrightness;
/// See [RaylibCore.ImageColorReplace].
WF3<void> get ImageColorReplace => _module.ImageColorReplace;
/// See [RaylibCore.LoadImageColors].
WF1<StructPointer<ColorD>> get LoadImageColors => _module.LoadImageColors;
/// See [RaylibCore.LoadImagePalette].
WF3<StructPointer<ColorD>> get LoadImagePalette => _module.LoadImagePalette;
/// See [RaylibCore.UnloadImageColors].
WF1<void> get UnloadImageColors => _module.UnloadImageColors;
/// See [RaylibCore.UnloadImagePalette].
WF1<void> get UnloadImagePalette => _module.UnloadImagePalette;
/// See [RaylibCore.GetImageAlphaBorder].
WF3<void> get GetImageAlphaBorder => _module.GetImageAlphaBorder;
/// See [RaylibCore.GetImageColor].
WF4<void> get GetImageColor => _module.GetImageColor;
/// See [RaylibCore.ImageClearBackground].
WF2<void> get ImageClearBackground => _module.ImageClearBackground;
/// See [RaylibCore.ImageDrawPixel].
WF4<void> get ImageDrawPixel => _module.ImageDrawPixel;
/// See [RaylibCore.ImageDrawPixelV].
WF3<void> get ImageDrawPixelV => _module.ImageDrawPixelV;
/// See [RaylibCore.ImageDrawLine].
WF6<void> get ImageDrawLine => _module.ImageDrawLine;
/// See [RaylibCore.ImageDrawLineV].
WF4<void> get ImageDrawLineV => _module.ImageDrawLineV;
/// See [RaylibCore.ImageDrawLineEx].
WF5<void> get ImageDrawLineEx => _module.ImageDrawLineEx;
/// See [RaylibCore.ImageDrawCircle].
WF5<void> get ImageDrawCircle => _module.ImageDrawCircle;
/// See [RaylibCore.ImageDrawCircleV].
WF4<void> get ImageDrawCircleV => _module.ImageDrawCircleV;
/// See [RaylibCore.ImageDrawCircleLines].
WF5<void> get ImageDrawCircleLines => _module.ImageDrawCircleLines;
/// See [RaylibCore.ImageDrawCircleLinesV].
WF4<void> get ImageDrawCircleLinesV => _module.ImageDrawCircleLinesV;
/// See [RaylibCore.ImageDrawRectangle].
WF6<void> get ImageDrawRectangle => _module.ImageDrawRectangle;
/// See [RaylibCore.ImageDrawRectangleV].
WF4<void> get ImageDrawRectangleV => _module.ImageDrawRectangleV;
/// See [RaylibCore.ImageDrawRectangleRec].
WF3<void> get ImageDrawRectangleRec => _module.ImageDrawRectangleRec;
/// See [RaylibCore.ImageDrawRectangleLines].
WF4<void> get ImageDrawRectangleLines => _module.ImageDrawRectangleLines;
/// See [RaylibCore.ImageDrawTriangle].
WF5<void> get ImageDrawTriangle => _module.ImageDrawTriangle;
/// See [RaylibCore.ImageDrawTriangleEx].
WF7<void> get ImageDrawTriangleEx => _module.ImageDrawTriangleEx;
/// See [RaylibCore.ImageDrawTriangleLines].
WF5<void> get ImageDrawTriangleLines => _module.ImageDrawTriangleLines;
/// See [RaylibCore.ImageDrawTriangleFan].
WF4<void> get ImageDrawTriangleFan => _module.ImageDrawTriangleFan;
/// See [RaylibCore.ImageDrawTriangleStrip].
WF4<void> get ImageDrawTriangleStrip => _module.ImageDrawTriangleStrip;
/// See [RaylibCore.ImageDraw].
WF5<void> get ImageDraw => _module.ImageDraw;
/// See [RaylibCore.ImageDrawText].
WF6<void> get ImageDrawText => _module.ImageDrawText;
/// See [RaylibCore.ImageDrawTextEx].
WF7<void> get ImageDrawTextEx => _module.ImageDrawTextEx;
/// See [RaylibCore.LoadTexture].
WF2<void> get LoadTexture => _module.LoadTexture;
/// See [RaylibCore.LoadTextureFromImage].
WF2<void> get LoadTextureFromImage => _module.LoadTextureFromImage;
/// See [RaylibCore.LoadTextureCubemap].
WF3<void> get LoadTextureCubemap => _module.LoadTextureCubemap;
/// See [RaylibCore.LoadRenderTexture].
WF3<void> get LoadRenderTexture => _module.LoadRenderTexture;
/// See [RaylibCore.IsTextureValid].
WF1<bool> get IsTextureValid => _module.IsTextureValid;
/// See [RaylibCore.UnloadTexture].
WF1<void> get UnloadTexture => _module.UnloadTexture;
/// See [RaylibCore.IsRenderTextureValid].
WF1<bool> get IsRenderTextureValid => _module.IsRenderTextureValid;
/// See [RaylibCore.UnloadRenderTexture].
WF1<void> get UnloadRenderTexture => _module.UnloadRenderTexture;
/// See [RaylibCore.UpdateTexture].
WF2<void> get UpdateTexture => _module.UpdateTexture;
/// See [RaylibCore.UpdateTextureRec].
WF3<void> get UpdateTextureRec => _module.UpdateTextureRec;
/// See [RaylibCore.GenTextureMipmaps].
WF1<void> get GenTextureMipmaps => _module.GenTextureMipmaps;
/// See [RaylibCore.SetTextureFilter].
WF2<void> get SetTextureFilter => _module.SetTextureFilter;
/// See [RaylibCore.SetTextureWrap].
WF2<void> get SetTextureWrap => _module.SetTextureWrap;
/// See [RaylibCore.DrawTexture].
WF4<void> get DrawTexture => _module.DrawTexture;
/// See [RaylibCore.DrawTextureV].
WF3<void> get DrawTextureV => _module.DrawTextureV;
/// See [RaylibCore.DrawTextureEx].
WF5<void> get DrawTextureEx => _module.DrawTextureEx;
/// See [RaylibCore.DrawTextureRec].
WF4<void> get DrawTextureRec => _module.DrawTextureRec;
/// See [RaylibCore.DrawTexturePro].
WF6<void> get DrawTexturePro => _module.DrawTexturePro;
/// See [RaylibCore.DrawTextureNPatch].
WF6<void> get DrawTextureNPatch => _module.DrawTextureNPatch;
/// See [RaylibCore.ColorIsEqual].
WF2<bool> get ColorIsEqual => _module.ColorIsEqual;
/// See [RaylibCore.Fade].
WF3<void> get Fade => _module.Fade;
/// See [RaylibCore.ColorToInt].
WF1<int> get ColorToInt => _module.ColorToInt;
/// See [RaylibCore.ColorNormalize].
WF2<void> get ColorNormalize => _module.ColorNormalize;
/// See [RaylibCore.ColorFromNormalized].
WF2<void> get ColorFromNormalized => _module.ColorFromNormalized;
/// See [RaylibCore.ColorToHSV].
WF2<void> get ColorToHSV => _module.ColorToHSV;
/// See [RaylibCore.ColorFromHSV].
WF4<void> get ColorFromHSV => _module.ColorFromHSV;
/// See [RaylibCore.ColorTint].
WF3<void> get ColorTint => _module.ColorTint;
/// See [RaylibCore.ColorBrightness].
WF3<void> get ColorBrightness => _module.ColorBrightness;
/// See [RaylibCore.ColorContrast].
WF3<void> get ColorContrast => _module.ColorContrast;
/// See [RaylibCore.ColorAlpha].
WF3<void> get ColorAlpha => _module.ColorAlpha;
/// See [RaylibCore.ColorAlphaBlend].
WF4<void> get ColorAlphaBlend => _module.ColorAlphaBlend;
/// See [RaylibCore.ColorLerp].
WF4<void> get ColorLerp => _module.ColorLerp;
/// See [RaylibCore.GetColor].
WF2<void> get GetColor => _module.GetColor;
/// See [RaylibCore.GetPixelColor].
WF3<void> get GetPixelColor => _module.GetPixelColor;
/// See [RaylibCore.SetPixelColor].
WF3<void> get SetPixelColor => _module.SetPixelColor;
/// See [RaylibCore.GetPixelDataSize].
WF3<int> get GetPixelDataSize => _module.GetPixelDataSize;
/// See [RaylibCore.GetFontDefault].
WF1<void> get GetFontDefault => _module.GetFontDefault;
/// See [RaylibCore.LoadFont].
WF2<void> get LoadFont => _module.LoadFont;
/// See [RaylibCore.LoadFontEx].
WF5<void> get LoadFontEx => _module.LoadFontEx;
/// See [RaylibCore.LoadFontFromImage].
WF4<void> get LoadFontFromImage => _module.LoadFontFromImage;
/// See [RaylibCore.LoadFontFromMemory].
WF7<void> get LoadFontFromMemory => _module.LoadFontFromMemory;
/// See [RaylibCore.IsFontValid].
WF1<bool> get IsFontValid => _module.IsFontValid;
/// See [RaylibCore.LoadFontData].
WF7<StructPointer<GlyphInfoD>> get LoadFontData => _module.LoadFontData;
/// See [RaylibCore.GenImageFontAtlas].
WF7<void> get GenImageFontAtlas => _module.GenImageFontAtlas;
/// See [RaylibCore.UnloadFontData].
WF2<void> get UnloadFontData => _module.UnloadFontData;
/// See [RaylibCore.UnloadFont].
WF1<void> get UnloadFont => _module.UnloadFont;
/// See [RaylibCore.ExportFontAsCode].
WF2<bool> get ExportFontAsCode => _module.ExportFontAsCode;
/// See [RaylibCore.DrawFPS].
WF2<void> get DrawFPS => _module.DrawFPS;
/// See [RaylibCore.DrawText].
WF5<void> get DrawText => _module.DrawText;
/// See [RaylibCore.DrawTextEx].
WF6<void> get DrawTextEx => _module.DrawTextEx;
/// See [RaylibCore.DrawTextPro].
WF8<void> get DrawTextPro => _module.DrawTextPro;
/// See [RaylibCore.DrawTextCodepoint].
WF5<void> get DrawTextCodepoint => _module.DrawTextCodepoint;
/// See [RaylibCore.DrawTextCodepoints].
WF7<void> get DrawTextCodepoints => _module.DrawTextCodepoints;
/// See [RaylibCore.SetTextLineSpacing].
WF1<void> get SetTextLineSpacing => _module.SetTextLineSpacing;
/// See [RaylibCore.MeasureText].
WF2<int> get MeasureText => _module.MeasureText;
/// See [RaylibCore.MeasureTextEx].
WF5<void> get MeasureTextEx => _module.MeasureTextEx;
/// See [RaylibCore.MeasureTextCodepoints].
WF6<void> get MeasureTextCodepoints => _module.MeasureTextCodepoints;
/// See [RaylibCore.GetGlyphIndex].
WF2<int> get GetGlyphIndex => _module.GetGlyphIndex;
/// See [RaylibCore.GetGlyphInfo].
WF3<void> get GetGlyphInfo => _module.GetGlyphInfo;
/// See [RaylibCore.GetGlyphAtlasRec].
WF3<void> get GetGlyphAtlasRec => _module.GetGlyphAtlasRec;
/// See [RaylibCore.LoadUTF8].
WF2<WasmMemoryPointer<RChar>> get LoadUTF8 => _module.LoadUTF8;
/// See [RaylibCore.UnloadUTF8].
WF1<void> get UnloadUTF8 => _module.UnloadUTF8;
/// See [RaylibCore.LoadCodepoints].
WF2<WasmMemoryPointer<RInt>> get LoadCodepoints => _module.LoadCodepoints;
/// See [RaylibCore.UnloadCodepoints].
WF1<void> get UnloadCodepoints => _module.UnloadCodepoints;
/// See [RaylibCore.GetCodepointCount].
WF1<int> get GetCodepointCount => _module.GetCodepointCount;
/// See [RaylibCore.GetCodepoint].
WF2<int> get GetCodepoint => _module.GetCodepoint;
/// See [RaylibCore.GetCodepointNext].
WF2<int> get GetCodepointNext => _module.GetCodepointNext;
/// See [RaylibCore.GetCodepointPrevious].
WF2<int> get GetCodepointPrevious => _module.GetCodepointPrevious;
/// See [RaylibCore.CodepointToUTF8].
WF2<WasmMemoryPointer<RChar>> get CodepointToUTF8 => _module.CodepointToUTF8;
/// See [RaylibCore.LoadTextLines].
WF2<WasmMemoryPointer<RPointer<RChar>>> get LoadTextLines => _module.LoadTextLines;
/// See [RaylibCore.UnloadTextLines].
WF2<void> get UnloadTextLines => _module.UnloadTextLines;
/// See [RaylibCore.TextCopy].
WF2<int> get TextCopy => _module.TextCopy;
/// See [RaylibCore.TextIsEqual].
WF2<bool> get TextIsEqual => _module.TextIsEqual;
/// See [RaylibCore.TextLength].
WF1<int> get TextLength => _module.TextLength;
/// See [RaylibCore.TextFormat].
WF1<WasmMemoryPointer<RChar>> get TextFormat => _module.TextFormat;
/// See [RaylibCore.TextSubtext].
WF3<WasmMemoryPointer<RChar>> get TextSubtext => _module.TextSubtext;
/// See [RaylibCore.TextRemoveSpaces].
WF1<WasmMemoryPointer<RChar>> get TextRemoveSpaces => _module.TextRemoveSpaces;
/// See [RaylibCore.GetTextBetween].
WF3<WasmMemoryPointer<RChar>> get GetTextBetween => _module.GetTextBetween;
/// See [RaylibCore.TextReplace].
WF3<WasmMemoryPointer<RChar>> get TextReplace => _module.TextReplace;
/// See [RaylibCore.TextReplaceAlloc].
WF3<WasmMemoryPointer<RChar>> get TextReplaceAlloc => _module.TextReplaceAlloc;
/// See [RaylibCore.TextReplaceBetween].
WF4<WasmMemoryPointer<RChar>> get TextReplaceBetween => _module.TextReplaceBetween;
/// See [RaylibCore.TextReplaceBetweenAlloc].
WF4<WasmMemoryPointer<RChar>> get TextReplaceBetweenAlloc => _module.TextReplaceBetweenAlloc;
/// See [RaylibCore.TextInsert].
WF3<WasmMemoryPointer<RChar>> get TextInsert => _module.TextInsert;
/// See [RaylibCore.TextInsertAlloc].
WF3<WasmMemoryPointer<RChar>> get TextInsertAlloc => _module.TextInsertAlloc;
/// See [RaylibCore.TextJoin].
WF3<WasmMemoryPointer<RChar>> get TextJoin => _module.TextJoin;
/// See [RaylibCore.TextSplit].
WF3<WasmMemoryPointer<RPointer<RChar>>> get TextSplit => _module.TextSplit;
/// See [RaylibCore.TextAppend].
WF3<void> get TextAppend => _module.TextAppend;
/// See [RaylibCore.TextFindIndex].
WF2<int> get TextFindIndex => _module.TextFindIndex;
/// See [RaylibCore.TextToUpper].
WF1<WasmMemoryPointer<RChar>> get TextToUpper => _module.TextToUpper;
/// See [RaylibCore.TextToLower].
WF1<WasmMemoryPointer<RChar>> get TextToLower => _module.TextToLower;
/// See [RaylibCore.TextToPascal].
WF1<WasmMemoryPointer<RChar>> get TextToPascal => _module.TextToPascal;
/// See [RaylibCore.TextToSnake].
WF1<WasmMemoryPointer<RChar>> get TextToSnake => _module.TextToSnake;
/// See [RaylibCore.TextToCamel].
WF1<WasmMemoryPointer<RChar>> get TextToCamel => _module.TextToCamel;
/// See [RaylibCore.TextToInteger].
WF1<int> get TextToInteger => _module.TextToInteger;
/// See [RaylibCore.TextToFloat].
WF1<double> get TextToFloat => _module.TextToFloat;
/// See [RaylibCore.DrawLine3D].
WF3<void> get DrawLine3D => _module.DrawLine3D;
/// See [RaylibCore.DrawPoint3D].
WF2<void> get DrawPoint3D => _module.DrawPoint3D;
/// See [RaylibCore.DrawCircle3D].
WF5<void> get DrawCircle3D => _module.DrawCircle3D;
/// See [RaylibCore.DrawTriangle3D].
WF4<void> get DrawTriangle3D => _module.DrawTriangle3D;
/// See [RaylibCore.DrawTriangleStrip3D].
WF3<void> get DrawTriangleStrip3D => _module.DrawTriangleStrip3D;
/// See [RaylibCore.DrawCube].
WF5<void> get DrawCube => _module.DrawCube;
/// See [RaylibCore.DrawCubeV].
WF3<void> get DrawCubeV => _module.DrawCubeV;
/// See [RaylibCore.DrawCubeWires].
WF5<void> get DrawCubeWires => _module.DrawCubeWires;
/// See [RaylibCore.DrawCubeWiresV].
WF3<void> get DrawCubeWiresV => _module.DrawCubeWiresV;
/// See [RaylibCore.DrawSphere].
WF3<void> get DrawSphere => _module.DrawSphere;
/// See [RaylibCore.DrawSphereEx].
WF5<void> get DrawSphereEx => _module.DrawSphereEx;
/// See [RaylibCore.DrawSphereWires].
WF5<void> get DrawSphereWires => _module.DrawSphereWires;
/// See [RaylibCore.DrawCylinder].
WF6<void> get DrawCylinder => _module.DrawCylinder;
/// See [RaylibCore.DrawCylinderEx].
WF6<void> get DrawCylinderEx => _module.DrawCylinderEx;
/// See [RaylibCore.DrawCylinderWires].
WF6<void> get DrawCylinderWires => _module.DrawCylinderWires;
/// See [RaylibCore.DrawCylinderWiresEx].
WF6<void> get DrawCylinderWiresEx => _module.DrawCylinderWiresEx;
/// See [RaylibCore.DrawCapsule].
WF6<void> get DrawCapsule => _module.DrawCapsule;
/// See [RaylibCore.DrawCapsuleWires].
WF6<void> get DrawCapsuleWires => _module.DrawCapsuleWires;
/// See [RaylibCore.DrawPlane].
WF3<void> get DrawPlane => _module.DrawPlane;
/// See [RaylibCore.DrawRay].
WF2<void> get DrawRay => _module.DrawRay;
/// See [RaylibCore.DrawGrid].
WF2<void> get DrawGrid => _module.DrawGrid;
/// See [RaylibCore.LoadModel].
WF2<void> get LoadModel => _module.LoadModel;
/// See [RaylibCore.LoadModelFromMesh].
WF2<void> get LoadModelFromMesh => _module.LoadModelFromMesh;
/// See [RaylibCore.IsModelValid].
WF1<bool> get IsModelValid => _module.IsModelValid;
/// See [RaylibCore.UnloadModel].
WF1<void> get UnloadModel => _module.UnloadModel;
/// See [RaylibCore.GetModelBoundingBox].
WF2<void> get GetModelBoundingBox => _module.GetModelBoundingBox;
/// See [RaylibCore.DrawModel].
WF4<void> get DrawModel => _module.DrawModel;
/// See [RaylibCore.DrawModelEx].
WF6<void> get DrawModelEx => _module.DrawModelEx;
/// See [RaylibCore.DrawModelWires].
WF4<void> get DrawModelWires => _module.DrawModelWires;
/// See [RaylibCore.DrawModelWiresEx].
WF6<void> get DrawModelWiresEx => _module.DrawModelWiresEx;
/// See [RaylibCore.DrawBoundingBox].
WF2<void> get DrawBoundingBox => _module.DrawBoundingBox;
/// See [RaylibCore.DrawBillboard].
WF5<void> get DrawBillboard => _module.DrawBillboard;
/// See [RaylibCore.DrawBillboardRec].
WF6<void> get DrawBillboardRec => _module.DrawBillboardRec;
/// See [RaylibCore.DrawBillboardPro].
WF9<void> get DrawBillboardPro => _module.DrawBillboardPro;
/// See [RaylibCore.UploadMesh].
WF2<void> get UploadMesh => _module.UploadMesh;
/// See [RaylibCore.UpdateMeshBuffer].
WF5<void> get UpdateMeshBuffer => _module.UpdateMeshBuffer;
/// See [RaylibCore.UnloadMesh].
WF1<void> get UnloadMesh => _module.UnloadMesh;
/// See [RaylibCore.DrawMesh].
WF3<void> get DrawMesh => _module.DrawMesh;
/// See [RaylibCore.DrawMeshInstanced].
WF4<void> get DrawMeshInstanced => _module.DrawMeshInstanced;
/// See [RaylibCore.GetMeshBoundingBox].
WF2<void> get GetMeshBoundingBox => _module.GetMeshBoundingBox;
/// See [RaylibCore.GenMeshTangents].
WF1<void> get GenMeshTangents => _module.GenMeshTangents;
/// See [RaylibCore.ExportMesh].
WF2<bool> get ExportMesh => _module.ExportMesh;
/// See [RaylibCore.ExportMeshAsCode].
WF2<bool> get ExportMeshAsCode => _module.ExportMeshAsCode;
/// See [RaylibCore.GenMeshPoly].
WF3<void> get GenMeshPoly => _module.GenMeshPoly;
/// See [RaylibCore.GenMeshPlane].
WF5<void> get GenMeshPlane => _module.GenMeshPlane;
/// See [RaylibCore.GenMeshCube].
WF4<void> get GenMeshCube => _module.GenMeshCube;
/// See [RaylibCore.GenMeshSphere].
WF4<void> get GenMeshSphere => _module.GenMeshSphere;
/// See [RaylibCore.GenMeshHemiSphere].
WF4<void> get GenMeshHemiSphere => _module.GenMeshHemiSphere;
/// See [RaylibCore.GenMeshCylinder].
WF4<void> get GenMeshCylinder => _module.GenMeshCylinder;
/// See [RaylibCore.GenMeshCone].
WF4<void> get GenMeshCone => _module.GenMeshCone;
/// See [RaylibCore.GenMeshTorus].
WF5<void> get GenMeshTorus => _module.GenMeshTorus;
/// See [RaylibCore.GenMeshKnot].
WF5<void> get GenMeshKnot => _module.GenMeshKnot;
/// See [RaylibCore.GenMeshHeightmap].
WF3<void> get GenMeshHeightmap => _module.GenMeshHeightmap;
/// See [RaylibCore.GenMeshCubicmap].
WF3<void> get GenMeshCubicmap => _module.GenMeshCubicmap;
/// See [RaylibCore.LoadMaterials].
WF2<StructPointer<MaterialD>> get LoadMaterials => _module.LoadMaterials;
/// See [RaylibCore.LoadMaterialDefault].
WF1<void> get LoadMaterialDefault => _module.LoadMaterialDefault;
/// See [RaylibCore.IsMaterialValid].
WF1<bool> get IsMaterialValid => _module.IsMaterialValid;
/// See [RaylibCore.UnloadMaterial].
WF1<void> get UnloadMaterial => _module.UnloadMaterial;
/// See [RaylibCore.SetMaterialTexture].
WF3<void> get SetMaterialTexture => _module.SetMaterialTexture;
/// See [RaylibCore.SetModelMeshMaterial].
WF3<void> get SetModelMeshMaterial => _module.SetModelMeshMaterial;
/// See [RaylibCore.LoadModelAnimations].
WF2<StructPointer<ModelAnimationD>> get LoadModelAnimations => _module.LoadModelAnimations;
/// See [RaylibCore.UpdateModelAnimation].
WF3<void> get UpdateModelAnimation => _module.UpdateModelAnimation;
/// See [RaylibCore.UpdateModelAnimationEx].
WF6<void> get UpdateModelAnimationEx => _module.UpdateModelAnimationEx;
/// See [RaylibCore.UnloadModelAnimations].
WF2<void> get UnloadModelAnimations => _module.UnloadModelAnimations;
/// See [RaylibCore.IsModelAnimationValid].
WF2<bool> get IsModelAnimationValid => _module.IsModelAnimationValid;
/// See [RaylibCore.CheckCollisionSpheres].
WF4<bool> get CheckCollisionSpheres => _module.CheckCollisionSpheres;
/// See [RaylibCore.CheckCollisionBoxes].
WF2<bool> get CheckCollisionBoxes => _module.CheckCollisionBoxes;
/// See [RaylibCore.CheckCollisionBoxSphere].
WF3<bool> get CheckCollisionBoxSphere => _module.CheckCollisionBoxSphere;
/// See [RaylibCore.GetRayCollisionSphere].
WF4<void> get GetRayCollisionSphere => _module.GetRayCollisionSphere;
/// See [RaylibCore.GetRayCollisionBox].
WF3<void> get GetRayCollisionBox => _module.GetRayCollisionBox;
/// See [RaylibCore.GetRayCollisionMesh].
WF4<void> get GetRayCollisionMesh => _module.GetRayCollisionMesh;
/// See [RaylibCore.GetRayCollisionTriangle].
WF5<void> get GetRayCollisionTriangle => _module.GetRayCollisionTriangle;
/// See [RaylibCore.GetRayCollisionQuad].
WF6<void> get GetRayCollisionQuad => _module.GetRayCollisionQuad;