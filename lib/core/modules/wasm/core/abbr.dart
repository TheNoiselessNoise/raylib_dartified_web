import 'dart:js_interop';
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibCore get _module => Raylib.instance.Core;

/// See [RaylibCore.InitWindow].
JSFunction get InitWindow => _module.InitWindow;
/// See [RaylibCore.CloseWindow].
JSFunction get CloseWindow => _module.CloseWindow;
/// See [RaylibCore.WindowShouldClose].
JSFunction get WindowShouldClose => _module.WindowShouldClose;
/// See [RaylibCore.IsWindowReady].
JSFunction get IsWindowReady => _module.IsWindowReady;
/// See [RaylibCore.IsWindowFullscreen].
JSFunction get IsWindowFullscreen => _module.IsWindowFullscreen;
/// See [RaylibCore.IsWindowHidden].
JSFunction get IsWindowHidden => _module.IsWindowHidden;
/// See [RaylibCore.IsWindowMinimized].
JSFunction get IsWindowMinimized => _module.IsWindowMinimized;
/// See [RaylibCore.IsWindowMaximized].
JSFunction get IsWindowMaximized => _module.IsWindowMaximized;
/// See [RaylibCore.IsWindowFocused].
JSFunction get IsWindowFocused => _module.IsWindowFocused;
/// See [RaylibCore.IsWindowResized].
JSFunction get IsWindowResized => _module.IsWindowResized;
/// See [RaylibCore.IsWindowState].
JSFunction get IsWindowState => _module.IsWindowState;
/// See [RaylibCore.SetWindowState].
JSFunction get SetWindowState => _module.SetWindowState;
/// See [RaylibCore.ClearWindowState].
JSFunction get ClearWindowState => _module.ClearWindowState;
/// See [RaylibCore.ToggleFullscreen].
JSFunction get ToggleFullscreen => _module.ToggleFullscreen;
/// See [RaylibCore.ToggleBorderlessWindowed].
JSFunction get ToggleBorderlessWindowed => _module.ToggleBorderlessWindowed;
/// See [RaylibCore.MaximizeWindow].
JSFunction get MaximizeWindow => _module.MaximizeWindow;
/// See [RaylibCore.MinimizeWindow].
JSFunction get MinimizeWindow => _module.MinimizeWindow;
/// See [RaylibCore.RestoreWindow].
JSFunction get RestoreWindow => _module.RestoreWindow;
/// See [RaylibCore.SetWindowIcon].
JSFunction get SetWindowIcon => _module.SetWindowIcon;
/// See [RaylibCore.SetWindowIcons].
JSFunction get SetWindowIcons => _module.SetWindowIcons;
/// See [RaylibCore.SetWindowTitle].
JSFunction get SetWindowTitle => _module.SetWindowTitle;
/// See [RaylibCore.SetWindowPosition].
JSFunction get SetWindowPosition => _module.SetWindowPosition;
/// See [RaylibCore.SetWindowMonitor].
JSFunction get SetWindowMonitor => _module.SetWindowMonitor;
/// See [RaylibCore.SetWindowMinSize].
JSFunction get SetWindowMinSize => _module.SetWindowMinSize;
/// See [RaylibCore.SetWindowMaxSize].
JSFunction get SetWindowMaxSize => _module.SetWindowMaxSize;
/// See [RaylibCore.SetWindowSize].
JSFunction get SetWindowSize => _module.SetWindowSize;
/// See [RaylibCore.SetWindowOpacity].
JSFunction get SetWindowOpacity => _module.SetWindowOpacity;
/// See [RaylibCore.SetWindowFocused].
JSFunction get SetWindowFocused => _module.SetWindowFocused;
/// See [RaylibCore.GetWindowHandle].
JSFunction get GetWindowHandle => _module.GetWindowHandle;
/// See [RaylibCore.GetScreenWidth].
JSFunction get GetScreenWidth => _module.GetScreenWidth;
/// See [RaylibCore.GetScreenHeight].
JSFunction get GetScreenHeight => _module.GetScreenHeight;
/// See [RaylibCore.GetRenderWidth].
JSFunction get GetRenderWidth => _module.GetRenderWidth;
/// See [RaylibCore.GetRenderHeight].
JSFunction get GetRenderHeight => _module.GetRenderHeight;
/// See [RaylibCore.GetMonitorCount].
JSFunction get GetMonitorCount => _module.GetMonitorCount;
/// See [RaylibCore.GetCurrentMonitor].
JSFunction get GetCurrentMonitor => _module.GetCurrentMonitor;
/// See [RaylibCore.GetMonitorPosition].
JSFunction get GetMonitorPosition => _module.GetMonitorPosition;
/// See [RaylibCore.GetMonitorWidth].
JSFunction get GetMonitorWidth => _module.GetMonitorWidth;
/// See [RaylibCore.GetMonitorHeight].
JSFunction get GetMonitorHeight => _module.GetMonitorHeight;
/// See [RaylibCore.GetMonitorPhysicalWidth].
JSFunction get GetMonitorPhysicalWidth => _module.GetMonitorPhysicalWidth;
/// See [RaylibCore.GetMonitorPhysicalHeight].
JSFunction get GetMonitorPhysicalHeight => _module.GetMonitorPhysicalHeight;
/// See [RaylibCore.GetMonitorRefreshRate].
JSFunction get GetMonitorRefreshRate => _module.GetMonitorRefreshRate;
/// See [RaylibCore.GetWindowPosition].
JSFunction get GetWindowPosition => _module.GetWindowPosition;
/// See [RaylibCore.GetWindowScaleDPI].
JSFunction get GetWindowScaleDPI => _module.GetWindowScaleDPI;
/// See [RaylibCore.GetMonitorName].
JSFunction get GetMonitorName => _module.GetMonitorName;
/// See [RaylibCore.SetClipboardText].
JSFunction get SetClipboardText => _module.SetClipboardText;
/// See [RaylibCore.GetClipboardText].
JSFunction get GetClipboardText => _module.GetClipboardText;
/// See [RaylibCore.GetClipboardImage].
JSFunction get GetClipboardImage => _module.GetClipboardImage;
/// See [RaylibCore.EnableEventWaiting].
JSFunction get EnableEventWaiting => _module.EnableEventWaiting;
/// See [RaylibCore.DisableEventWaiting].
JSFunction get DisableEventWaiting => _module.DisableEventWaiting;
/// See [RaylibCore.ShowCursor].
JSFunction get ShowCursor => _module.ShowCursor;
/// See [RaylibCore.HideCursor].
JSFunction get HideCursor => _module.HideCursor;
/// See [RaylibCore.IsCursorHidden].
JSFunction get IsCursorHidden => _module.IsCursorHidden;
/// See [RaylibCore.EnableCursor].
JSFunction get EnableCursor => _module.EnableCursor;
/// See [RaylibCore.DisableCursor].
JSFunction get DisableCursor => _module.DisableCursor;
/// See [RaylibCore.IsCursorOnScreen].
JSFunction get IsCursorOnScreen => _module.IsCursorOnScreen;
/// See [RaylibCore.ClearBackground].
JSFunction get ClearBackground => _module.ClearBackground;
/// See [RaylibCore.BeginDrawing].
JSFunction get BeginDrawing => _module.BeginDrawing;
/// See [RaylibCore.EndDrawing].
JSFunction get EndDrawing => _module.EndDrawing;
/// See [RaylibCore.BeginMode2D].
JSFunction get BeginMode2D => _module.BeginMode2D;
/// See [RaylibCore.EndMode2D].
JSFunction get EndMode2D => _module.EndMode2D;
/// See [RaylibCore.BeginMode3D].
JSFunction get BeginMode3D => _module.BeginMode3D;
/// See [RaylibCore.EndMode3D].
JSFunction get EndMode3D => _module.EndMode3D;
/// See [RaylibCore.BeginTextureMode].
JSFunction get BeginTextureMode => _module.BeginTextureMode;
/// See [RaylibCore.EndTextureMode].
JSFunction get EndTextureMode => _module.EndTextureMode;
/// See [RaylibCore.BeginShaderMode].
JSFunction get BeginShaderMode => _module.BeginShaderMode;
/// See [RaylibCore.EndShaderMode].
JSFunction get EndShaderMode => _module.EndShaderMode;
/// See [RaylibCore.BeginBlendMode].
JSFunction get BeginBlendMode => _module.BeginBlendMode;
/// See [RaylibCore.EndBlendMode].
JSFunction get EndBlendMode => _module.EndBlendMode;
/// See [RaylibCore.BeginScissorMode].
JSFunction get BeginScissorMode => _module.BeginScissorMode;
/// See [RaylibCore.EndScissorMode].
JSFunction get EndScissorMode => _module.EndScissorMode;
/// See [RaylibCore.BeginVrStereoMode].
JSFunction get BeginVrStereoMode => _module.BeginVrStereoMode;
/// See [RaylibCore.EndVrStereoMode].
JSFunction get EndVrStereoMode => _module.EndVrStereoMode;
/// See [RaylibCore.LoadVrStereoConfig].
JSFunction get LoadVrStereoConfig => _module.LoadVrStereoConfig;
/// See [RaylibCore.UnloadVrStereoConfig].
JSFunction get UnloadVrStereoConfig => _module.UnloadVrStereoConfig;
/// See [RaylibCore.LoadShader].
JSFunction get LoadShader => _module.LoadShader;
/// See [RaylibCore.LoadShaderFromMemory].
JSFunction get LoadShaderFromMemory => _module.LoadShaderFromMemory;
/// See [RaylibCore.IsShaderValid].
JSFunction get IsShaderValid => _module.IsShaderValid;
/// See [RaylibCore.GetShaderLocation].
JSFunction get GetShaderLocation => _module.GetShaderLocation;
/// See [RaylibCore.GetShaderLocationAttrib].
JSFunction get GetShaderLocationAttrib => _module.GetShaderLocationAttrib;
/// See [RaylibCore.SetShaderValue].
JSFunction get SetShaderValue => _module.SetShaderValue;
/// See [RaylibCore.SetShaderValueV].
JSFunction get SetShaderValueV => _module.SetShaderValueV;
/// See [RaylibCore.SetShaderValueMatrix].
JSFunction get SetShaderValueMatrix => _module.SetShaderValueMatrix;
/// See [RaylibCore.SetShaderValueTexture].
JSFunction get SetShaderValueTexture => _module.SetShaderValueTexture;
/// See [RaylibCore.UnloadShader].
JSFunction get UnloadShader => _module.UnloadShader;
/// See [RaylibCore.GetScreenToWorldRay].
JSFunction get GetScreenToWorldRay => _module.GetScreenToWorldRay;
/// See [RaylibCore.GetScreenToWorldRayEx].
JSFunction get GetScreenToWorldRayEx => _module.GetScreenToWorldRayEx;
/// See [RaylibCore.GetWorldToScreen].
JSFunction get GetWorldToScreen => _module.GetWorldToScreen;
/// See [RaylibCore.GetWorldToScreenEx].
JSFunction get GetWorldToScreenEx => _module.GetWorldToScreenEx;
/// See [RaylibCore.GetWorldToScreen2D].
JSFunction get GetWorldToScreen2D => _module.GetWorldToScreen2D;
/// See [RaylibCore.GetScreenToWorld2D].
JSFunction get GetScreenToWorld2D => _module.GetScreenToWorld2D;
/// See [RaylibCore.GetCameraMatrix].
JSFunction get GetCameraMatrix => _module.GetCameraMatrix;
/// See [RaylibCore.GetCameraMatrix2D].
JSFunction get GetCameraMatrix2D => _module.GetCameraMatrix2D;
/// See [RaylibCore.SetTargetFPS].
JSFunction get SetTargetFPS => _module.SetTargetFPS;
/// See [RaylibCore.GetFrameTime].
JSFunction get GetFrameTime => _module.GetFrameTime;
/// See [RaylibCore.GetTime].
JSFunction get GetTime => _module.GetTime;
/// See [RaylibCore.GetFPS].
JSFunction get GetFPS => _module.GetFPS;
/// See [RaylibCore.SwapScreenBuffer].
JSFunction get SwapScreenBuffer => _module.SwapScreenBuffer;
/// See [RaylibCore.PollInputEvents].
JSFunction get PollInputEvents => _module.PollInputEvents;
/// See [RaylibCore.WaitTime].
JSFunction get WaitTime => _module.WaitTime;
/// See [RaylibCore.SetRandomSeed].
JSFunction get SetRandomSeed => _module.SetRandomSeed;
/// See [RaylibCore.GetRandomValue].
JSFunction get GetRandomValue => _module.GetRandomValue;
/// See [RaylibCore.LoadRandomSequence].
JSFunction get LoadRandomSequence => _module.LoadRandomSequence;
/// See [RaylibCore.UnloadRandomSequence].
JSFunction get UnloadRandomSequence => _module.UnloadRandomSequence;
/// See [RaylibCore.TakeScreenshot].
JSFunction get TakeScreenshot => _module.TakeScreenshot;
/// See [RaylibCore.SetConfigFlags].
JSFunction get SetConfigFlags => _module.SetConfigFlags;
/// See [RaylibCore.OpenURL].
JSFunction get OpenURL => _module.OpenURL;
/// See [RaylibCore.TraceLog].
JSFunction get TraceLog => _module.TraceLog;
/// See [RaylibCore.SetTraceLogLevel].
JSFunction get SetTraceLogLevel => _module.SetTraceLogLevel;
/// See [RaylibCore.SetTraceLogCallback].
JSFunction get SetTraceLogCallback => _module.SetTraceLogCallback;
/// See [RaylibCore.SetLoadFileDataCallback].
JSFunction get SetLoadFileDataCallback => _module.SetLoadFileDataCallback;
/// See [RaylibCore.SetSaveFileDataCallback].
JSFunction get SetSaveFileDataCallback => _module.SetSaveFileDataCallback;
/// See [RaylibCore.SetLoadFileTextCallback].
JSFunction get SetLoadFileTextCallback => _module.SetLoadFileTextCallback;
/// See [RaylibCore.SetSaveFileTextCallback].
JSFunction get SetSaveFileTextCallback => _module.SetSaveFileTextCallback;
/// See [RaylibCore.LoadFileData].
JSFunction get LoadFileData => _module.LoadFileData;
/// See [RaylibCore.UnloadFileData].
JSFunction get UnloadFileData => _module.UnloadFileData;
/// See [RaylibCore.SaveFileData].
JSFunction get SaveFileData => _module.SaveFileData;
/// See [RaylibCore.ExportDataAsCode].
JSFunction get ExportDataAsCode => _module.ExportDataAsCode;
/// See [RaylibCore.LoadFileText].
JSFunction get LoadFileText => _module.LoadFileText;
/// See [RaylibCore.UnloadFileText].
JSFunction get UnloadFileText => _module.UnloadFileText;
/// See [RaylibCore.SaveFileText].
JSFunction get SaveFileText => _module.SaveFileText;
/// See [RaylibCore.FileRename].
JSFunction get FileRename => _module.FileRename;
/// See [RaylibCore.FileRemove].
JSFunction get FileRemove => _module.FileRemove;
/// See [RaylibCore.FileCopy].
JSFunction get FileCopy => _module.FileCopy;
/// See [RaylibCore.FileMove].
JSFunction get FileMove => _module.FileMove;
/// See [RaylibCore.FileTextReplace].
JSFunction get FileTextReplace => _module.FileTextReplace;
/// See [RaylibCore.FileTextFindIndex].
JSFunction get FileTextFindIndex => _module.FileTextFindIndex;
/// See [RaylibCore.FileExists].
JSFunction get FileExists => _module.FileExists;
/// See [RaylibCore.DirectoryExists].
JSFunction get DirectoryExists => _module.DirectoryExists;
/// See [RaylibCore.IsFileExtension].
JSFunction get IsFileExtension => _module.IsFileExtension;
/// See [RaylibCore.GetFileLength].
JSFunction get GetFileLength => _module.GetFileLength;
/// See [RaylibCore.GetFileExtension].
JSFunction get GetFileExtension => _module.GetFileExtension;
/// See [RaylibCore.GetFileName].
JSFunction get GetFileName => _module.GetFileName;
/// See [RaylibCore.GetFileNameWithoutExt].
JSFunction get GetFileNameWithoutExt => _module.GetFileNameWithoutExt;
/// See [RaylibCore.GetDirectoryFileCount].
JSFunction get GetDirectoryFileCount => _module.GetDirectoryFileCount;
/// See [RaylibCore.GetDirectoryFileCountEx].
JSFunction get GetDirectoryFileCountEx => _module.GetDirectoryFileCountEx;
/// See [RaylibCore.GetDirectoryPath].
JSFunction get GetDirectoryPath => _module.GetDirectoryPath;
/// See [RaylibCore.GetPrevDirectoryPath].
JSFunction get GetPrevDirectoryPath => _module.GetPrevDirectoryPath;
/// See [RaylibCore.GetWorkingDirectory].
JSFunction get GetWorkingDirectory => _module.GetWorkingDirectory;
/// See [RaylibCore.GetApplicationDirectory].
JSFunction get GetApplicationDirectory => _module.GetApplicationDirectory;
/// See [RaylibCore.MakeDirectory].
JSFunction get MakeDirectory => _module.MakeDirectory;
/// See [RaylibCore.ChangeDirectory].
JSFunction get ChangeDirectory => _module.ChangeDirectory;
/// See [RaylibCore.IsPathFile].
JSFunction get IsPathFile => _module.IsPathFile;
/// See [RaylibCore.IsFileNameValid].
JSFunction get IsFileNameValid => _module.IsFileNameValid;
/// See [RaylibCore.LoadDirectoryFiles].
JSFunction get LoadDirectoryFiles => _module.LoadDirectoryFiles;
/// See [RaylibCore.LoadDirectoryFilesEx].
JSFunction get LoadDirectoryFilesEx => _module.LoadDirectoryFilesEx;
/// See [RaylibCore.UnloadDirectoryFiles].
JSFunction get UnloadDirectoryFiles => _module.UnloadDirectoryFiles;
/// See [RaylibCore.IsFileDropped].
JSFunction get IsFileDropped => _module.IsFileDropped;
/// See [RaylibCore.LoadDroppedFiles].
JSFunction get LoadDroppedFiles => _module.LoadDroppedFiles;
/// See [RaylibCore.UnloadDroppedFiles].
JSFunction get UnloadDroppedFiles => _module.UnloadDroppedFiles;
/// See [RaylibCore.GetFileModTime].
JSFunction get GetFileModTime => _module.GetFileModTime;
/// See [RaylibCore.CompressData].
JSFunction get CompressData => _module.CompressData;
/// See [RaylibCore.DecompressData].
JSFunction get DecompressData => _module.DecompressData;
/// See [RaylibCore.EncodeDataBase64].
JSFunction get EncodeDataBase64 => _module.EncodeDataBase64;
/// See [RaylibCore.DecodeDataBase64].
JSFunction get DecodeDataBase64 => _module.DecodeDataBase64;
/// See [RaylibCore.ComputeCRC32].
JSFunction get ComputeCRC32 => _module.ComputeCRC32;
/// See [RaylibCore.ComputeMD5].
JSFunction get ComputeMD5 => _module.ComputeMD5;
/// See [RaylibCore.ComputeSHA1].
JSFunction get ComputeSHA1 => _module.ComputeSHA1;
/// See [RaylibCore.ComputeSHA256].
JSFunction get ComputeSHA256 => _module.ComputeSHA256;
/// See [RaylibCore.LoadAutomationEventList].
JSFunction get LoadAutomationEventList => _module.LoadAutomationEventList;
/// See [RaylibCore.UnloadAutomationEventList].
JSFunction get UnloadAutomationEventList => _module.UnloadAutomationEventList;
/// See [RaylibCore.ExportAutomationEventList].
JSFunction get ExportAutomationEventList => _module.ExportAutomationEventList;
/// See [RaylibCore.SetAutomationEventList].
JSFunction get SetAutomationEventList => _module.SetAutomationEventList;
/// See [RaylibCore.SetAutomationEventBaseFrame].
JSFunction get SetAutomationEventBaseFrame => _module.SetAutomationEventBaseFrame;
/// See [RaylibCore.StartAutomationEventRecording].
JSFunction get StartAutomationEventRecording => _module.StartAutomationEventRecording;
/// See [RaylibCore.StopAutomationEventRecording].
JSFunction get StopAutomationEventRecording => _module.StopAutomationEventRecording;
/// See [RaylibCore.PlayAutomationEvent].
JSFunction get PlayAutomationEvent => _module.PlayAutomationEvent;
/// See [RaylibCore.IsKeyPressed].
JSFunction get IsKeyPressed => _module.IsKeyPressed;
/// See [RaylibCore.IsKeyPressedRepeat].
JSFunction get IsKeyPressedRepeat => _module.IsKeyPressedRepeat;
/// See [RaylibCore.IsKeyDown].
JSFunction get IsKeyDown => _module.IsKeyDown;
/// See [RaylibCore.IsKeyReleased].
JSFunction get IsKeyReleased => _module.IsKeyReleased;
/// See [RaylibCore.IsKeyUp].
JSFunction get IsKeyUp => _module.IsKeyUp;
/// See [RaylibCore.GetKeyName].
JSFunction get GetKeyName => _module.GetKeyName;
/// See [RaylibCore.GetKeyPressed].
JSFunction get GetKeyPressed => _module.GetKeyPressed;
/// See [RaylibCore.GetCharPressed].
JSFunction get GetCharPressed => _module.GetCharPressed;
/// See [RaylibCore.SetExitKey].
JSFunction get SetExitKey => _module.SetExitKey;
/// See [RaylibCore.IsGamepadAvailable].
JSFunction get IsGamepadAvailable => _module.IsGamepadAvailable;
/// See [RaylibCore.GetGamepadName].
JSFunction get GetGamepadName => _module.GetGamepadName;
/// See [RaylibCore.IsGamepadButtonPressed].
JSFunction get IsGamepadButtonPressed => _module.IsGamepadButtonPressed;
/// See [RaylibCore.IsGamepadButtonDown].
JSFunction get IsGamepadButtonDown => _module.IsGamepadButtonDown;
/// See [RaylibCore.IsGamepadButtonReleased].
JSFunction get IsGamepadButtonReleased => _module.IsGamepadButtonReleased;
/// See [RaylibCore.IsGamepadButtonUp].
JSFunction get IsGamepadButtonUp => _module.IsGamepadButtonUp;
/// See [RaylibCore.GetGamepadButtonPressed].
JSFunction get GetGamepadButtonPressed => _module.GetGamepadButtonPressed;
/// See [RaylibCore.GetGamepadAxisCount].
JSFunction get GetGamepadAxisCount => _module.GetGamepadAxisCount;
/// See [RaylibCore.GetGamepadAxisMovement].
JSFunction get GetGamepadAxisMovement => _module.GetGamepadAxisMovement;
/// See [RaylibCore.SetGamepadMappings].
JSFunction get SetGamepadMappings => _module.SetGamepadMappings;
/// See [RaylibCore.SetGamepadVibration].
JSFunction get SetGamepadVibration => _module.SetGamepadVibration;
/// See [RaylibCore.IsMouseButtonPressed].
JSFunction get IsMouseButtonPressed => _module.IsMouseButtonPressed;
/// See [RaylibCore.IsMouseButtonDown].
JSFunction get IsMouseButtonDown => _module.IsMouseButtonDown;
/// See [RaylibCore.IsMouseButtonReleased].
JSFunction get IsMouseButtonReleased => _module.IsMouseButtonReleased;
/// See [RaylibCore.IsMouseButtonUp].
JSFunction get IsMouseButtonUp => _module.IsMouseButtonUp;
/// See [RaylibCore.GetMouseX].
JSFunction get GetMouseX => _module.GetMouseX;
/// See [RaylibCore.GetMouseY].
JSFunction get GetMouseY => _module.GetMouseY;
/// See [RaylibCore.GetMousePosition].
JSFunction get GetMousePosition => _module.GetMousePosition;
/// See [RaylibCore.GetMouseDelta].
JSFunction get GetMouseDelta => _module.GetMouseDelta;
/// See [RaylibCore.SetMousePosition].
JSFunction get SetMousePosition => _module.SetMousePosition;
/// See [RaylibCore.SetMouseOffset].
JSFunction get SetMouseOffset => _module.SetMouseOffset;
/// See [RaylibCore.SetMouseScale].
JSFunction get SetMouseScale => _module.SetMouseScale;
/// See [RaylibCore.GetMouseWheelMove].
JSFunction get GetMouseWheelMove => _module.GetMouseWheelMove;
/// See [RaylibCore.GetMouseWheelMoveV].
JSFunction get GetMouseWheelMoveV => _module.GetMouseWheelMoveV;
/// See [RaylibCore.SetMouseCursor].
JSFunction get SetMouseCursor => _module.SetMouseCursor;
/// See [RaylibCore.GetTouchX].
JSFunction get GetTouchX => _module.GetTouchX;
/// See [RaylibCore.GetTouchY].
JSFunction get GetTouchY => _module.GetTouchY;
/// See [RaylibCore.GetTouchPosition].
JSFunction get GetTouchPosition => _module.GetTouchPosition;
/// See [RaylibCore.GetTouchPointId].
JSFunction get GetTouchPointId => _module.GetTouchPointId;
/// See [RaylibCore.GetTouchPointCount].
JSFunction get GetTouchPointCount => _module.GetTouchPointCount;
/// See [RaylibCore.SetGesturesEnabled].
JSFunction get SetGesturesEnabled => _module.SetGesturesEnabled;
/// See [RaylibCore.IsGestureDetected].
JSFunction get IsGestureDetected => _module.IsGestureDetected;
/// See [RaylibCore.GetGestureDetected].
JSFunction get GetGestureDetected => _module.GetGestureDetected;
/// See [RaylibCore.GetGestureHoldDuration].
JSFunction get GetGestureHoldDuration => _module.GetGestureHoldDuration;
/// See [RaylibCore.GetGestureDragVector].
JSFunction get GetGestureDragVector => _module.GetGestureDragVector;
/// See [RaylibCore.GetGestureDragAngle].
JSFunction get GetGestureDragAngle => _module.GetGestureDragAngle;
/// See [RaylibCore.GetGesturePinchVector].
JSFunction get GetGesturePinchVector => _module.GetGesturePinchVector;
/// See [RaylibCore.GetGesturePinchAngle].
JSFunction get GetGesturePinchAngle => _module.GetGesturePinchAngle;
/// See [RaylibCore.ProcessGestureEvent].
JSFunction get ProcessGestureEvent => _module.ProcessGestureEvent;
/// See [RaylibCore.UpdateGestures].
JSFunction get UpdateGestures => _module.UpdateGestures;
/// See [RaylibCore.UpdateCamera].
JSFunction get UpdateCamera => _module.UpdateCamera;
/// See [RaylibCore.UpdateCameraPro].
JSFunction get UpdateCameraPro => _module.UpdateCameraPro;
/// See [RaylibCore.SetShapesTexture].
JSFunction get SetShapesTexture => _module.SetShapesTexture;
/// See [RaylibCore.GetShapesTexture].
JSFunction get GetShapesTexture => _module.GetShapesTexture;
/// See [RaylibCore.GetShapesTextureRectangle].
JSFunction get GetShapesTextureRectangle => _module.GetShapesTextureRectangle;
/// See [RaylibCore.DrawPixel].
JSFunction get DrawPixel => _module.DrawPixel;
/// See [RaylibCore.DrawPixelV].
JSFunction get DrawPixelV => _module.DrawPixelV;
/// See [RaylibCore.DrawLine].
JSFunction get DrawLine => _module.DrawLine;
/// See [RaylibCore.DrawLineV].
JSFunction get DrawLineV => _module.DrawLineV;
/// See [RaylibCore.DrawLineEx].
JSFunction get DrawLineEx => _module.DrawLineEx;
/// See [RaylibCore.DrawLineStrip].
JSFunction get DrawLineStrip => _module.DrawLineStrip;
/// See [RaylibCore.DrawLineBezier].
JSFunction get DrawLineBezier => _module.DrawLineBezier;
/// See [RaylibCore.DrawLineDashed].
JSFunction get DrawLineDashed => _module.DrawLineDashed;
/// See [RaylibCore.DrawCircle].
JSFunction get DrawCircle => _module.DrawCircle;
/// See [RaylibCore.DrawCircleSector].
JSFunction get DrawCircleSector => _module.DrawCircleSector;
/// See [RaylibCore.DrawCircleSectorLines].
JSFunction get DrawCircleSectorLines => _module.DrawCircleSectorLines;
/// See [RaylibCore.DrawCircleGradient].
JSFunction get DrawCircleGradient => _module.DrawCircleGradient;
/// See [RaylibCore.DrawCircleV].
JSFunction get DrawCircleV => _module.DrawCircleV;
/// See [RaylibCore.DrawCircleLines].
JSFunction get DrawCircleLines => _module.DrawCircleLines;
/// See [RaylibCore.DrawCircleLinesV].
JSFunction get DrawCircleLinesV => _module.DrawCircleLinesV;
/// See [RaylibCore.DrawEllipse].
JSFunction get DrawEllipse => _module.DrawEllipse;
/// See [RaylibCore.DrawEllipseV].
JSFunction get DrawEllipseV => _module.DrawEllipseV;
/// See [RaylibCore.DrawEllipseLines].
JSFunction get DrawEllipseLines => _module.DrawEllipseLines;
/// See [RaylibCore.DrawEllipseLinesV].
JSFunction get DrawEllipseLinesV => _module.DrawEllipseLinesV;
/// See [RaylibCore.DrawRing].
JSFunction get DrawRing => _module.DrawRing;
/// See [RaylibCore.DrawRingLines].
JSFunction get DrawRingLines => _module.DrawRingLines;
/// See [RaylibCore.DrawRectangle].
JSFunction get DrawRectangle => _module.DrawRectangle;
/// See [RaylibCore.DrawRectangleV].
JSFunction get DrawRectangleV => _module.DrawRectangleV;
/// See [RaylibCore.DrawRectangleRec].
JSFunction get DrawRectangleRec => _module.DrawRectangleRec;
/// See [RaylibCore.DrawRectanglePro].
JSFunction get DrawRectanglePro => _module.DrawRectanglePro;
/// See [RaylibCore.DrawRectangleGradientV].
JSFunction get DrawRectangleGradientV => _module.DrawRectangleGradientV;
/// See [RaylibCore.DrawRectangleGradientH].
JSFunction get DrawRectangleGradientH => _module.DrawRectangleGradientH;
/// See [RaylibCore.DrawRectangleGradientEx].
JSFunction get DrawRectangleGradientEx => _module.DrawRectangleGradientEx;
/// See [RaylibCore.DrawRectangleLines].
JSFunction get DrawRectangleLines => _module.DrawRectangleLines;
/// See [RaylibCore.DrawRectangleLinesEx].
JSFunction get DrawRectangleLinesEx => _module.DrawRectangleLinesEx;
/// See [RaylibCore.DrawRectangleRounded].
JSFunction get DrawRectangleRounded => _module.DrawRectangleRounded;
/// See [RaylibCore.DrawRectangleRoundedLines].
JSFunction get DrawRectangleRoundedLines => _module.DrawRectangleRoundedLines;
/// See [RaylibCore.DrawRectangleRoundedLinesEx].
JSFunction get DrawRectangleRoundedLinesEx => _module.DrawRectangleRoundedLinesEx;
/// See [RaylibCore.DrawTriangle].
JSFunction get DrawTriangle => _module.DrawTriangle;
/// See [RaylibCore.DrawTriangleLines].
JSFunction get DrawTriangleLines => _module.DrawTriangleLines;
/// See [RaylibCore.DrawTriangleFan].
JSFunction get DrawTriangleFan => _module.DrawTriangleFan;
/// See [RaylibCore.DrawTriangleStrip].
JSFunction get DrawTriangleStrip => _module.DrawTriangleStrip;
/// See [RaylibCore.DrawPoly].
JSFunction get DrawPoly => _module.DrawPoly;
/// See [RaylibCore.DrawPolyLines].
JSFunction get DrawPolyLines => _module.DrawPolyLines;
/// See [RaylibCore.DrawPolyLinesEx].
JSFunction get DrawPolyLinesEx => _module.DrawPolyLinesEx;
/// See [RaylibCore.DrawSplineLinear].
JSFunction get DrawSplineLinear => _module.DrawSplineLinear;
/// See [RaylibCore.DrawSplineBasis].
JSFunction get DrawSplineBasis => _module.DrawSplineBasis;
/// See [RaylibCore.DrawSplineCatmullRom].
JSFunction get DrawSplineCatmullRom => _module.DrawSplineCatmullRom;
/// See [RaylibCore.DrawSplineBezierQuadratic].
JSFunction get DrawSplineBezierQuadratic => _module.DrawSplineBezierQuadratic;
/// See [RaylibCore.DrawSplineBezierCubic].
JSFunction get DrawSplineBezierCubic => _module.DrawSplineBezierCubic;
/// See [RaylibCore.DrawSplineSegmentLinear].
JSFunction get DrawSplineSegmentLinear => _module.DrawSplineSegmentLinear;
/// See [RaylibCore.DrawSplineSegmentBasis].
JSFunction get DrawSplineSegmentBasis => _module.DrawSplineSegmentBasis;
/// See [RaylibCore.DrawSplineSegmentCatmullRom].
JSFunction get DrawSplineSegmentCatmullRom => _module.DrawSplineSegmentCatmullRom;
/// See [RaylibCore.DrawSplineSegmentBezierQuadratic].
JSFunction get DrawSplineSegmentBezierQuadratic => _module.DrawSplineSegmentBezierQuadratic;
/// See [RaylibCore.DrawSplineSegmentBezierCubic].
JSFunction get DrawSplineSegmentBezierCubic => _module.DrawSplineSegmentBezierCubic;
/// See [RaylibCore.GetSplinePointLinear].
JSFunction get GetSplinePointLinear => _module.GetSplinePointLinear;
/// See [RaylibCore.GetSplinePointBasis].
JSFunction get GetSplinePointBasis => _module.GetSplinePointBasis;
/// See [RaylibCore.GetSplinePointCatmullRom].
JSFunction get GetSplinePointCatmullRom => _module.GetSplinePointCatmullRom;
/// See [RaylibCore.GetSplinePointBezierQuad].
JSFunction get GetSplinePointBezierQuad => _module.GetSplinePointBezierQuad;
/// See [RaylibCore.GetSplinePointBezierCubic].
JSFunction get GetSplinePointBezierCubic => _module.GetSplinePointBezierCubic;
/// See [RaylibCore.CheckCollisionRecs].
JSFunction get CheckCollisionRecs => _module.CheckCollisionRecs;
/// See [RaylibCore.CheckCollisionCircles].
JSFunction get CheckCollisionCircles => _module.CheckCollisionCircles;
/// See [RaylibCore.CheckCollisionCircleRec].
JSFunction get CheckCollisionCircleRec => _module.CheckCollisionCircleRec;
/// See [RaylibCore.CheckCollisionCircleLine].
JSFunction get CheckCollisionCircleLine => _module.CheckCollisionCircleLine;
/// See [RaylibCore.CheckCollisionPointRec].
JSFunction get CheckCollisionPointRec => _module.CheckCollisionPointRec;
/// See [RaylibCore.CheckCollisionPointCircle].
JSFunction get CheckCollisionPointCircle => _module.CheckCollisionPointCircle;
/// See [RaylibCore.CheckCollisionPointTriangle].
JSFunction get CheckCollisionPointTriangle => _module.CheckCollisionPointTriangle;
/// See [RaylibCore.CheckCollisionPointLine].
JSFunction get CheckCollisionPointLine => _module.CheckCollisionPointLine;
/// See [RaylibCore.CheckCollisionPointPoly].
JSFunction get CheckCollisionPointPoly => _module.CheckCollisionPointPoly;
/// See [RaylibCore.CheckCollisionLines].
JSFunction get CheckCollisionLines => _module.CheckCollisionLines;
/// See [RaylibCore.GetCollisionRec].
JSFunction get GetCollisionRec => _module.GetCollisionRec;
/// See [RaylibCore.LoadImage].
JSFunction get LoadImage => _module.LoadImage;
/// See [RaylibCore.LoadImageRaw].
JSFunction get LoadImageRaw => _module.LoadImageRaw;
/// See [RaylibCore.LoadImageAnim].
JSFunction get LoadImageAnim => _module.LoadImageAnim;
/// See [RaylibCore.LoadImageAnimFromMemory].
JSFunction get LoadImageAnimFromMemory => _module.LoadImageAnimFromMemory;
/// See [RaylibCore.LoadImageFromMemory].
JSFunction get LoadImageFromMemory => _module.LoadImageFromMemory;
/// See [RaylibCore.LoadImageFromTexture].
JSFunction get LoadImageFromTexture => _module.LoadImageFromTexture;
/// See [RaylibCore.LoadImageFromScreen].
JSFunction get LoadImageFromScreen => _module.LoadImageFromScreen;
/// See [RaylibCore.IsImageValid].
JSFunction get IsImageValid => _module.IsImageValid;
/// See [RaylibCore.UnloadImage].
JSFunction get UnloadImage => _module.UnloadImage;
/// See [RaylibCore.ExportImage].
JSFunction get ExportImage => _module.ExportImage;
/// See [RaylibCore.ExportImageToMemory].
JSFunction get ExportImageToMemory => _module.ExportImageToMemory;
/// See [RaylibCore.ExportImageAsCode].
JSFunction get ExportImageAsCode => _module.ExportImageAsCode;
/// See [RaylibCore.GenImageColor].
JSFunction get GenImageColor => _module.GenImageColor;
/// See [RaylibCore.GenImageGradientLinear].
JSFunction get GenImageGradientLinear => _module.GenImageGradientLinear;
/// See [RaylibCore.GenImageGradientRadial].
JSFunction get GenImageGradientRadial => _module.GenImageGradientRadial;
/// See [RaylibCore.GenImageGradientSquare].
JSFunction get GenImageGradientSquare => _module.GenImageGradientSquare;
/// See [RaylibCore.GenImageChecked].
JSFunction get GenImageChecked => _module.GenImageChecked;
/// See [RaylibCore.GenImageWhiteNoise].
JSFunction get GenImageWhiteNoise => _module.GenImageWhiteNoise;
/// See [RaylibCore.GenImagePerlinNoise].
JSFunction get GenImagePerlinNoise => _module.GenImagePerlinNoise;
/// See [RaylibCore.GenImageCellular].
JSFunction get GenImageCellular => _module.GenImageCellular;
/// See [RaylibCore.GenImageText].
JSFunction get GenImageText => _module.GenImageText;
/// See [RaylibCore.ImageCopy].
JSFunction get ImageCopy => _module.ImageCopy;
/// See [RaylibCore.ImageFromImage].
JSFunction get ImageFromImage => _module.ImageFromImage;
/// See [RaylibCore.ImageFromChannel].
JSFunction get ImageFromChannel => _module.ImageFromChannel;
/// See [RaylibCore.ImageText].
JSFunction get ImageText => _module.ImageText;
/// See [RaylibCore.ImageTextEx].
JSFunction get ImageTextEx => _module.ImageTextEx;
/// See [RaylibCore.ImageFormat].
JSFunction get ImageFormat => _module.ImageFormat;
/// See [RaylibCore.ImageToPOT].
JSFunction get ImageToPOT => _module.ImageToPOT;
/// See [RaylibCore.ImageCrop].
JSFunction get ImageCrop => _module.ImageCrop;
/// See [RaylibCore.ImageAlphaCrop].
JSFunction get ImageAlphaCrop => _module.ImageAlphaCrop;
/// See [RaylibCore.ImageAlphaClear].
JSFunction get ImageAlphaClear => _module.ImageAlphaClear;
/// See [RaylibCore.ImageAlphaMask].
JSFunction get ImageAlphaMask => _module.ImageAlphaMask;
/// See [RaylibCore.ImageAlphaPremultiply].
JSFunction get ImageAlphaPremultiply => _module.ImageAlphaPremultiply;
/// See [RaylibCore.ImageBlurGaussian].
JSFunction get ImageBlurGaussian => _module.ImageBlurGaussian;
/// See [RaylibCore.ImageKernelConvolution].
JSFunction get ImageKernelConvolution => _module.ImageKernelConvolution;
/// See [RaylibCore.ImageResize].
JSFunction get ImageResize => _module.ImageResize;
/// See [RaylibCore.ImageResizeNN].
JSFunction get ImageResizeNN => _module.ImageResizeNN;
/// See [RaylibCore.ImageResizeCanvas].
JSFunction get ImageResizeCanvas => _module.ImageResizeCanvas;
/// See [RaylibCore.ImageMipmaps].
JSFunction get ImageMipmaps => _module.ImageMipmaps;
/// See [RaylibCore.ImageDither].
JSFunction get ImageDither => _module.ImageDither;
/// See [RaylibCore.ImageFlipVertical].
JSFunction get ImageFlipVertical => _module.ImageFlipVertical;
/// See [RaylibCore.ImageFlipHorizontal].
JSFunction get ImageFlipHorizontal => _module.ImageFlipHorizontal;
/// See [RaylibCore.ImageRotate].
JSFunction get ImageRotate => _module.ImageRotate;
/// See [RaylibCore.ImageRotateCW].
JSFunction get ImageRotateCW => _module.ImageRotateCW;
/// See [RaylibCore.ImageRotateCCW].
JSFunction get ImageRotateCCW => _module.ImageRotateCCW;
/// See [RaylibCore.ImageColorTint].
JSFunction get ImageColorTint => _module.ImageColorTint;
/// See [RaylibCore.ImageColorInvert].
JSFunction get ImageColorInvert => _module.ImageColorInvert;
/// See [RaylibCore.ImageColorGrayscale].
JSFunction get ImageColorGrayscale => _module.ImageColorGrayscale;
/// See [RaylibCore.ImageColorContrast].
JSFunction get ImageColorContrast => _module.ImageColorContrast;
/// See [RaylibCore.ImageColorBrightness].
JSFunction get ImageColorBrightness => _module.ImageColorBrightness;
/// See [RaylibCore.ImageColorReplace].
JSFunction get ImageColorReplace => _module.ImageColorReplace;
/// See [RaylibCore.LoadImageColors].
JSFunction get LoadImageColors => _module.LoadImageColors;
/// See [RaylibCore.LoadImagePalette].
JSFunction get LoadImagePalette => _module.LoadImagePalette;
/// See [RaylibCore.UnloadImageColors].
JSFunction get UnloadImageColors => _module.UnloadImageColors;
/// See [RaylibCore.UnloadImagePalette].
JSFunction get UnloadImagePalette => _module.UnloadImagePalette;
/// See [RaylibCore.GetImageAlphaBorder].
JSFunction get GetImageAlphaBorder => _module.GetImageAlphaBorder;
/// See [RaylibCore.GetImageColor].
JSFunction get GetImageColor => _module.GetImageColor;
/// See [RaylibCore.ImageClearBackground].
JSFunction get ImageClearBackground => _module.ImageClearBackground;
/// See [RaylibCore.ImageDrawPixel].
JSFunction get ImageDrawPixel => _module.ImageDrawPixel;
/// See [RaylibCore.ImageDrawPixelV].
JSFunction get ImageDrawPixelV => _module.ImageDrawPixelV;
/// See [RaylibCore.ImageDrawLine].
JSFunction get ImageDrawLine => _module.ImageDrawLine;
/// See [RaylibCore.ImageDrawLineV].
JSFunction get ImageDrawLineV => _module.ImageDrawLineV;
/// See [RaylibCore.ImageDrawLineEx].
JSFunction get ImageDrawLineEx => _module.ImageDrawLineEx;
/// See [RaylibCore.ImageDrawCircle].
JSFunction get ImageDrawCircle => _module.ImageDrawCircle;
/// See [RaylibCore.ImageDrawCircleV].
JSFunction get ImageDrawCircleV => _module.ImageDrawCircleV;
/// See [RaylibCore.ImageDrawCircleLines].
JSFunction get ImageDrawCircleLines => _module.ImageDrawCircleLines;
/// See [RaylibCore.ImageDrawCircleLinesV].
JSFunction get ImageDrawCircleLinesV => _module.ImageDrawCircleLinesV;
/// See [RaylibCore.ImageDrawRectangle].
JSFunction get ImageDrawRectangle => _module.ImageDrawRectangle;
/// See [RaylibCore.ImageDrawRectangleV].
JSFunction get ImageDrawRectangleV => _module.ImageDrawRectangleV;
/// See [RaylibCore.ImageDrawRectangleRec].
JSFunction get ImageDrawRectangleRec => _module.ImageDrawRectangleRec;
/// See [RaylibCore.ImageDrawRectangleLines].
JSFunction get ImageDrawRectangleLines => _module.ImageDrawRectangleLines;
/// See [RaylibCore.ImageDrawTriangle].
JSFunction get ImageDrawTriangle => _module.ImageDrawTriangle;
/// See [RaylibCore.ImageDrawTriangleEx].
JSFunction get ImageDrawTriangleEx => _module.ImageDrawTriangleEx;
/// See [RaylibCore.ImageDrawTriangleLines].
JSFunction get ImageDrawTriangleLines => _module.ImageDrawTriangleLines;
/// See [RaylibCore.ImageDrawTriangleFan].
JSFunction get ImageDrawTriangleFan => _module.ImageDrawTriangleFan;
/// See [RaylibCore.ImageDrawTriangleStrip].
JSFunction get ImageDrawTriangleStrip => _module.ImageDrawTriangleStrip;
/// See [RaylibCore.ImageDraw].
JSFunction get ImageDraw => _module.ImageDraw;
/// See [RaylibCore.ImageDrawText].
JSFunction get ImageDrawText => _module.ImageDrawText;
/// See [RaylibCore.ImageDrawTextEx].
JSFunction get ImageDrawTextEx => _module.ImageDrawTextEx;
/// See [RaylibCore.LoadTexture].
JSFunction get LoadTexture => _module.LoadTexture;
/// See [RaylibCore.LoadTextureFromImage].
JSFunction get LoadTextureFromImage => _module.LoadTextureFromImage;
/// See [RaylibCore.LoadTextureCubemap].
JSFunction get LoadTextureCubemap => _module.LoadTextureCubemap;
/// See [RaylibCore.LoadRenderTexture].
JSFunction get LoadRenderTexture => _module.LoadRenderTexture;
/// See [RaylibCore.IsTextureValid].
JSFunction get IsTextureValid => _module.IsTextureValid;
/// See [RaylibCore.UnloadTexture].
JSFunction get UnloadTexture => _module.UnloadTexture;
/// See [RaylibCore.IsRenderTextureValid].
JSFunction get IsRenderTextureValid => _module.IsRenderTextureValid;
/// See [RaylibCore.UnloadRenderTexture].
JSFunction get UnloadRenderTexture => _module.UnloadRenderTexture;
/// See [RaylibCore.UpdateTexture].
JSFunction get UpdateTexture => _module.UpdateTexture;
/// See [RaylibCore.UpdateTextureRec].
JSFunction get UpdateTextureRec => _module.UpdateTextureRec;
/// See [RaylibCore.GenTextureMipmaps].
JSFunction get GenTextureMipmaps => _module.GenTextureMipmaps;
/// See [RaylibCore.SetTextureFilter].
JSFunction get SetTextureFilter => _module.SetTextureFilter;
/// See [RaylibCore.SetTextureWrap].
JSFunction get SetTextureWrap => _module.SetTextureWrap;
/// See [RaylibCore.DrawTexture].
JSFunction get DrawTexture => _module.DrawTexture;
/// See [RaylibCore.DrawTextureV].
JSFunction get DrawTextureV => _module.DrawTextureV;
/// See [RaylibCore.DrawTextureEx].
JSFunction get DrawTextureEx => _module.DrawTextureEx;
/// See [RaylibCore.DrawTextureRec].
JSFunction get DrawTextureRec => _module.DrawTextureRec;
/// See [RaylibCore.DrawTexturePro].
JSFunction get DrawTexturePro => _module.DrawTexturePro;
/// See [RaylibCore.DrawTextureNPatch].
JSFunction get DrawTextureNPatch => _module.DrawTextureNPatch;
/// See [RaylibCore.ColorIsEqual].
JSFunction get ColorIsEqual => _module.ColorIsEqual;
/// See [RaylibCore.Fade].
JSFunction get Fade => _module.Fade;
/// See [RaylibCore.ColorToInt].
JSFunction get ColorToInt => _module.ColorToInt;
/// See [RaylibCore.ColorNormalize].
JSFunction get ColorNormalize => _module.ColorNormalize;
/// See [RaylibCore.ColorFromNormalized].
JSFunction get ColorFromNormalized => _module.ColorFromNormalized;
/// See [RaylibCore.ColorToHSV].
JSFunction get ColorToHSV => _module.ColorToHSV;
/// See [RaylibCore.ColorFromHSV].
JSFunction get ColorFromHSV => _module.ColorFromHSV;
/// See [RaylibCore.ColorTint].
JSFunction get ColorTint => _module.ColorTint;
/// See [RaylibCore.ColorBrightness].
JSFunction get ColorBrightness => _module.ColorBrightness;
/// See [RaylibCore.ColorContrast].
JSFunction get ColorContrast => _module.ColorContrast;
/// See [RaylibCore.ColorAlpha].
JSFunction get ColorAlpha => _module.ColorAlpha;
/// See [RaylibCore.ColorAlphaBlend].
JSFunction get ColorAlphaBlend => _module.ColorAlphaBlend;
/// See [RaylibCore.ColorLerp].
JSFunction get ColorLerp => _module.ColorLerp;
/// See [RaylibCore.GetColor].
JSFunction get GetColor => _module.GetColor;
/// See [RaylibCore.GetPixelColor].
JSFunction get GetPixelColor => _module.GetPixelColor;
/// See [RaylibCore.SetPixelColor].
JSFunction get SetPixelColor => _module.SetPixelColor;
/// See [RaylibCore.GetPixelDataSize].
JSFunction get GetPixelDataSize => _module.GetPixelDataSize;
/// See [RaylibCore.GetFontDefault].
JSFunction get GetFontDefault => _module.GetFontDefault;
/// See [RaylibCore.LoadFont].
JSFunction get LoadFont => _module.LoadFont;
/// See [RaylibCore.LoadFontEx].
JSFunction get LoadFontEx => _module.LoadFontEx;
/// See [RaylibCore.LoadFontFromImage].
JSFunction get LoadFontFromImage => _module.LoadFontFromImage;
/// See [RaylibCore.LoadFontFromMemory].
JSFunction get LoadFontFromMemory => _module.LoadFontFromMemory;
/// See [RaylibCore.IsFontValid].
JSFunction get IsFontValid => _module.IsFontValid;
/// See [RaylibCore.LoadFontData].
JSFunction get LoadFontData => _module.LoadFontData;
/// See [RaylibCore.GenImageFontAtlas].
JSFunction get GenImageFontAtlas => _module.GenImageFontAtlas;
/// See [RaylibCore.UnloadFontData].
JSFunction get UnloadFontData => _module.UnloadFontData;
/// See [RaylibCore.UnloadFont].
JSFunction get UnloadFont => _module.UnloadFont;
/// See [RaylibCore.ExportFontAsCode].
JSFunction get ExportFontAsCode => _module.ExportFontAsCode;
/// See [RaylibCore.DrawFPS].
JSFunction get DrawFPS => _module.DrawFPS;
/// See [RaylibCore.DrawText].
JSFunction get DrawText => _module.DrawText;
/// See [RaylibCore.DrawTextEx].
JSFunction get DrawTextEx => _module.DrawTextEx;
/// See [RaylibCore.DrawTextPro].
JSFunction get DrawTextPro => _module.DrawTextPro;
/// See [RaylibCore.DrawTextCodepoint].
JSFunction get DrawTextCodepoint => _module.DrawTextCodepoint;
/// See [RaylibCore.DrawTextCodepoints].
JSFunction get DrawTextCodepoints => _module.DrawTextCodepoints;
/// See [RaylibCore.SetTextLineSpacing].
JSFunction get SetTextLineSpacing => _module.SetTextLineSpacing;
/// See [RaylibCore.MeasureText].
JSFunction get MeasureText => _module.MeasureText;
/// See [RaylibCore.MeasureTextEx].
JSFunction get MeasureTextEx => _module.MeasureTextEx;
/// See [RaylibCore.MeasureTextCodepoints].
JSFunction get MeasureTextCodepoints => _module.MeasureTextCodepoints;
/// See [RaylibCore.GetGlyphIndex].
JSFunction get GetGlyphIndex => _module.GetGlyphIndex;
/// See [RaylibCore.GetGlyphInfo].
JSFunction get GetGlyphInfo => _module.GetGlyphInfo;
/// See [RaylibCore.GetGlyphAtlasRec].
JSFunction get GetGlyphAtlasRec => _module.GetGlyphAtlasRec;
/// See [RaylibCore.LoadUTF8].
JSFunction get LoadUTF8 => _module.LoadUTF8;
/// See [RaylibCore.UnloadUTF8].
JSFunction get UnloadUTF8 => _module.UnloadUTF8;
/// See [RaylibCore.LoadCodepoints].
JSFunction get LoadCodepoints => _module.LoadCodepoints;
/// See [RaylibCore.UnloadCodepoints].
JSFunction get UnloadCodepoints => _module.UnloadCodepoints;
/// See [RaylibCore.GetCodepointCount].
JSFunction get GetCodepointCount => _module.GetCodepointCount;
/// See [RaylibCore.GetCodepoint].
JSFunction get GetCodepoint => _module.GetCodepoint;
/// See [RaylibCore.GetCodepointNext].
JSFunction get GetCodepointNext => _module.GetCodepointNext;
/// See [RaylibCore.GetCodepointPrevious].
JSFunction get GetCodepointPrevious => _module.GetCodepointPrevious;
/// See [RaylibCore.CodepointToUTF8].
JSFunction get CodepointToUTF8 => _module.CodepointToUTF8;
/// See [RaylibCore.LoadTextLines].
JSFunction get LoadTextLines => _module.LoadTextLines;
/// See [RaylibCore.UnloadTextLines].
JSFunction get UnloadTextLines => _module.UnloadTextLines;
/// See [RaylibCore.TextCopy].
JSFunction get TextCopy => _module.TextCopy;
/// See [RaylibCore.TextIsEqual].
JSFunction get TextIsEqual => _module.TextIsEqual;
/// See [RaylibCore.TextLength].
JSFunction get TextLength => _module.TextLength;
/// See [RaylibCore.TextFormat].
JSFunction get TextFormat => _module.TextFormat;
/// See [RaylibCore.TextSubtext].
JSFunction get TextSubtext => _module.TextSubtext;
/// See [RaylibCore.TextRemoveSpaces].
JSFunction get TextRemoveSpaces => _module.TextRemoveSpaces;
/// See [RaylibCore.GetTextBetween].
JSFunction get GetTextBetween => _module.GetTextBetween;
/// See [RaylibCore.TextReplace].
JSFunction get TextReplace => _module.TextReplace;
/// See [RaylibCore.TextReplaceAlloc].
JSFunction get TextReplaceAlloc => _module.TextReplaceAlloc;
/// See [RaylibCore.TextReplaceBetween].
JSFunction get TextReplaceBetween => _module.TextReplaceBetween;
/// See [RaylibCore.TextReplaceBetweenAlloc].
JSFunction get TextReplaceBetweenAlloc => _module.TextReplaceBetweenAlloc;
/// See [RaylibCore.TextInsert].
JSFunction get TextInsert => _module.TextInsert;
/// See [RaylibCore.TextInsertAlloc].
JSFunction get TextInsertAlloc => _module.TextInsertAlloc;
/// See [RaylibCore.TextJoin].
JSFunction get TextJoin => _module.TextJoin;
/// See [RaylibCore.TextSplit].
JSFunction get TextSplit => _module.TextSplit;
/// See [RaylibCore.TextAppend].
JSFunction get TextAppend => _module.TextAppend;
/// See [RaylibCore.TextFindIndex].
JSFunction get TextFindIndex => _module.TextFindIndex;
/// See [RaylibCore.TextToUpper].
JSFunction get TextToUpper => _module.TextToUpper;
/// See [RaylibCore.TextToLower].
JSFunction get TextToLower => _module.TextToLower;
/// See [RaylibCore.TextToPascal].
JSFunction get TextToPascal => _module.TextToPascal;
/// See [RaylibCore.TextToSnake].
JSFunction get TextToSnake => _module.TextToSnake;
/// See [RaylibCore.TextToCamel].
JSFunction get TextToCamel => _module.TextToCamel;
/// See [RaylibCore.TextToInteger].
JSFunction get TextToInteger => _module.TextToInteger;
/// See [RaylibCore.TextToFloat].
JSFunction get TextToFloat => _module.TextToFloat;
/// See [RaylibCore.DrawLine3D].
JSFunction get DrawLine3D => _module.DrawLine3D;
/// See [RaylibCore.DrawPoint3D].
JSFunction get DrawPoint3D => _module.DrawPoint3D;
/// See [RaylibCore.DrawCircle3D].
JSFunction get DrawCircle3D => _module.DrawCircle3D;
/// See [RaylibCore.DrawTriangle3D].
JSFunction get DrawTriangle3D => _module.DrawTriangle3D;
/// See [RaylibCore.DrawTriangleStrip3D].
JSFunction get DrawTriangleStrip3D => _module.DrawTriangleStrip3D;
/// See [RaylibCore.DrawCube].
JSFunction get DrawCube => _module.DrawCube;
/// See [RaylibCore.DrawCubeV].
JSFunction get DrawCubeV => _module.DrawCubeV;
/// See [RaylibCore.DrawCubeWires].
JSFunction get DrawCubeWires => _module.DrawCubeWires;
/// See [RaylibCore.DrawCubeWiresV].
JSFunction get DrawCubeWiresV => _module.DrawCubeWiresV;
/// See [RaylibCore.DrawSphere].
JSFunction get DrawSphere => _module.DrawSphere;
/// See [RaylibCore.DrawSphereEx].
JSFunction get DrawSphereEx => _module.DrawSphereEx;
/// See [RaylibCore.DrawSphereWires].
JSFunction get DrawSphereWires => _module.DrawSphereWires;
/// See [RaylibCore.DrawCylinder].
JSFunction get DrawCylinder => _module.DrawCylinder;
/// See [RaylibCore.DrawCylinderEx].
JSFunction get DrawCylinderEx => _module.DrawCylinderEx;
/// See [RaylibCore.DrawCylinderWires].
JSFunction get DrawCylinderWires => _module.DrawCylinderWires;
/// See [RaylibCore.DrawCylinderWiresEx].
JSFunction get DrawCylinderWiresEx => _module.DrawCylinderWiresEx;
/// See [RaylibCore.DrawCapsule].
JSFunction get DrawCapsule => _module.DrawCapsule;
/// See [RaylibCore.DrawCapsuleWires].
JSFunction get DrawCapsuleWires => _module.DrawCapsuleWires;
/// See [RaylibCore.DrawPlane].
JSFunction get DrawPlane => _module.DrawPlane;
/// See [RaylibCore.DrawRay].
JSFunction get DrawRay => _module.DrawRay;
/// See [RaylibCore.DrawGrid].
JSFunction get DrawGrid => _module.DrawGrid;
/// See [RaylibCore.LoadModel].
JSFunction get LoadModel => _module.LoadModel;
/// See [RaylibCore.LoadModelFromMesh].
JSFunction get LoadModelFromMesh => _module.LoadModelFromMesh;
/// See [RaylibCore.IsModelValid].
JSFunction get IsModelValid => _module.IsModelValid;
/// See [RaylibCore.UnloadModel].
JSFunction get UnloadModel => _module.UnloadModel;
/// See [RaylibCore.GetModelBoundingBox].
JSFunction get GetModelBoundingBox => _module.GetModelBoundingBox;
/// See [RaylibCore.DrawModel].
JSFunction get DrawModel => _module.DrawModel;
/// See [RaylibCore.DrawModelEx].
JSFunction get DrawModelEx => _module.DrawModelEx;
/// See [RaylibCore.DrawModelWires].
JSFunction get DrawModelWires => _module.DrawModelWires;
/// See [RaylibCore.DrawModelWiresEx].
JSFunction get DrawModelWiresEx => _module.DrawModelWiresEx;
/// See [RaylibCore.DrawBoundingBox].
JSFunction get DrawBoundingBox => _module.DrawBoundingBox;
/// See [RaylibCore.DrawBillboard].
JSFunction get DrawBillboard => _module.DrawBillboard;
/// See [RaylibCore.DrawBillboardRec].
JSFunction get DrawBillboardRec => _module.DrawBillboardRec;
/// See [RaylibCore.DrawBillboardPro].
JSFunction get DrawBillboardPro => _module.DrawBillboardPro;
/// See [RaylibCore.UploadMesh].
JSFunction get UploadMesh => _module.UploadMesh;
/// See [RaylibCore.UpdateMeshBuffer].
JSFunction get UpdateMeshBuffer => _module.UpdateMeshBuffer;
/// See [RaylibCore.UnloadMesh].
JSFunction get UnloadMesh => _module.UnloadMesh;
/// See [RaylibCore.DrawMesh].
JSFunction get DrawMesh => _module.DrawMesh;
/// See [RaylibCore.DrawMeshInstanced].
JSFunction get DrawMeshInstanced => _module.DrawMeshInstanced;
/// See [RaylibCore.GetMeshBoundingBox].
JSFunction get GetMeshBoundingBox => _module.GetMeshBoundingBox;
/// See [RaylibCore.GenMeshTangents].
JSFunction get GenMeshTangents => _module.GenMeshTangents;
/// See [RaylibCore.ExportMesh].
JSFunction get ExportMesh => _module.ExportMesh;
/// See [RaylibCore.ExportMeshAsCode].
JSFunction get ExportMeshAsCode => _module.ExportMeshAsCode;
/// See [RaylibCore.GenMeshPoly].
JSFunction get GenMeshPoly => _module.GenMeshPoly;
/// See [RaylibCore.GenMeshPlane].
JSFunction get GenMeshPlane => _module.GenMeshPlane;
/// See [RaylibCore.GenMeshCube].
JSFunction get GenMeshCube => _module.GenMeshCube;
/// See [RaylibCore.GenMeshSphere].
JSFunction get GenMeshSphere => _module.GenMeshSphere;
/// See [RaylibCore.GenMeshHemiSphere].
JSFunction get GenMeshHemiSphere => _module.GenMeshHemiSphere;
/// See [RaylibCore.GenMeshCylinder].
JSFunction get GenMeshCylinder => _module.GenMeshCylinder;
/// See [RaylibCore.GenMeshCone].
JSFunction get GenMeshCone => _module.GenMeshCone;
/// See [RaylibCore.GenMeshTorus].
JSFunction get GenMeshTorus => _module.GenMeshTorus;
/// See [RaylibCore.GenMeshKnot].
JSFunction get GenMeshKnot => _module.GenMeshKnot;
/// See [RaylibCore.GenMeshHeightmap].
JSFunction get GenMeshHeightmap => _module.GenMeshHeightmap;
/// See [RaylibCore.GenMeshCubicmap].
JSFunction get GenMeshCubicmap => _module.GenMeshCubicmap;
/// See [RaylibCore.LoadMaterials].
JSFunction get LoadMaterials => _module.LoadMaterials;
/// See [RaylibCore.LoadMaterialDefault].
JSFunction get LoadMaterialDefault => _module.LoadMaterialDefault;
/// See [RaylibCore.IsMaterialValid].
JSFunction get IsMaterialValid => _module.IsMaterialValid;
/// See [RaylibCore.UnloadMaterial].
JSFunction get UnloadMaterial => _module.UnloadMaterial;
/// See [RaylibCore.SetMaterialTexture].
JSFunction get SetMaterialTexture => _module.SetMaterialTexture;
/// See [RaylibCore.SetModelMeshMaterial].
JSFunction get SetModelMeshMaterial => _module.SetModelMeshMaterial;
/// See [RaylibCore.LoadModelAnimations].
JSFunction get LoadModelAnimations => _module.LoadModelAnimations;
/// See [RaylibCore.UpdateModelAnimation].
JSFunction get UpdateModelAnimation => _module.UpdateModelAnimation;
/// See [RaylibCore.UpdateModelAnimationEx].
JSFunction get UpdateModelAnimationEx => _module.UpdateModelAnimationEx;
/// See [RaylibCore.UnloadModelAnimations].
JSFunction get UnloadModelAnimations => _module.UnloadModelAnimations;
/// See [RaylibCore.IsModelAnimationValid].
JSFunction get IsModelAnimationValid => _module.IsModelAnimationValid;
/// See [RaylibCore.CheckCollisionSpheres].
JSFunction get CheckCollisionSpheres => _module.CheckCollisionSpheres;
/// See [RaylibCore.CheckCollisionBoxes].
JSFunction get CheckCollisionBoxes => _module.CheckCollisionBoxes;
/// See [RaylibCore.CheckCollisionBoxSphere].
JSFunction get CheckCollisionBoxSphere => _module.CheckCollisionBoxSphere;
/// See [RaylibCore.GetRayCollisionSphere].
JSFunction get GetRayCollisionSphere => _module.GetRayCollisionSphere;
/// See [RaylibCore.GetRayCollisionBox].
JSFunction get GetRayCollisionBox => _module.GetRayCollisionBox;
/// See [RaylibCore.GetRayCollisionMesh].
JSFunction get GetRayCollisionMesh => _module.GetRayCollisionMesh;
/// See [RaylibCore.GetRayCollisionTriangle].
JSFunction get GetRayCollisionTriangle => _module.GetRayCollisionTriangle;
/// See [RaylibCore.GetRayCollisionQuad].
JSFunction get GetRayCollisionQuad => _module.GetRayCollisionQuad;