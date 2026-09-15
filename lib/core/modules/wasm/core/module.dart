part of '../../../raylib_dartified_web.dart';

class RaylibCore extends RaylibModuleWasm {  
  /// Initialize window and OpenGL context
  late final WF3<void> InitWindow;
  /// Close window and unload OpenGL context
  late final WF0<void> CloseWindow;
  /// Check if application should close ([KeyboardKey.KEY_ESCAPE] pressed or windows close icon clicked)
  late final WF0<bool> WindowShouldClose;
  /// Check if window has been initialized successfully
  late final WF0<bool> IsWindowReady;
  /// Check if window is currently fullscreen
  late final WF0<bool> IsWindowFullscreen;
  /// Check if window is currently hidden
  late final WF0<bool> IsWindowHidden;
  /// Check if window is currently minimized
  late final WF0<bool> IsWindowMinimized;
  /// Check if window is currently maximized
  late final WF0<bool> IsWindowMaximized;
  /// Check if window is currently focused
  late final WF0<bool> IsWindowFocused;
  /// Check if window has been resized last frame
  late final WF0<bool> IsWindowResized;
  /// Check if one specific window flag is enabled
  late final WF1<bool> IsWindowState;
  /// Set window configuration state using flags
  late final WF1<void> SetWindowState;
  /// Clear window configuration state flags
  late final WF1<void> ClearWindowState;
  /// Toggle window state: fullscreen/windowed, resizes monitor to match window resolution
  late final WF0<void> ToggleFullscreen;
  /// Toggle window state: borderless windowed, resizes window to match monitor resolution
  late final WF0<void> ToggleBorderlessWindowed;
  /// Set window state: maximized, if [ConfigFlags.FLAG_WINDOW_RESIZABLE]
  late final WF0<void> MaximizeWindow;
  /// Set window state: minimized, if [ConfigFlags.FLAG_WINDOW_RESIZABLE]
  late final WF0<void> MinimizeWindow;
  /// Set window state: not minimized/maximized
  late final WF0<void> RestoreWindow;
  /// Set icon for window (single image, RGBA 32bit)
  late final WF1<void> SetWindowIcon;
  /// Set icon for window (multiple images, RGBA 32bit)
  late final WF2<void> SetWindowIcons;
  /// Set title for window
  late final WF1<void> SetWindowTitle;
  /// Set window position on screen
  late final WF2<void> SetWindowPosition;
  /// Set monitor for the current window
  late final WF1<void> SetWindowMonitor;
  /// Set window minimum dimensions (for [ConfigFlags.FLAG_WINDOW_RESIZABLE])
  late final WF2<void> SetWindowMinSize;
  /// Set window maximum dimensions (for [ConfigFlags.FLAG_WINDOW_RESIZABLE])
  late final WF2<void> SetWindowMaxSize;
  /// Set window dimensions
  late final WF2<void> SetWindowSize;
  /// Set window opacity [0.0..1.0]
  late final WF1<void> SetWindowOpacity;
  /// Set window focused
  late final WF0<void> SetWindowFocused;
  /// Get native window handle
  late final WF0<WasmMemoryPointer<RVoid>> GetWindowHandle;
  /// Get current screen width
  late final WF0<int> GetScreenWidth;
  /// Get current screen height
  late final WF0<int> GetScreenHeight;
  /// Get current render width (it considers HiDPI)
  late final WF0<int> GetRenderWidth;
  /// Get current render height (it considers HiDPI)
  late final WF0<int> GetRenderHeight;
  /// Get number of connected monitors
  /// 
  /// **[!] Not implemented on WASM**
  late final WF0<int> GetMonitorCount;
  /// Get current monitor where window is placed
  /// 
  /// **[!] Not implemented on WASM**
  late final WF0<int> GetCurrentMonitor;
  /// Get specified monitor position
  /// 
  /// **[!] Not implemented on WASM**
  late final WF2<void> GetMonitorPosition;
  /// Get specified monitor width (current video mode used by monitor)
  late final WF1<int> GetMonitorWidth;
  /// Get specified monitor height (current video mode used by monitor)
  late final WF1<int> GetMonitorHeight;
  /// Get specified monitor physical width in millimetres
  /// 
  /// **[!] Not implemented on WASM**
  late final WF1<int> GetMonitorPhysicalWidth;
  /// Get specified monitor physical height in millimetres
  /// 
  /// **[!] Not implemented on WASM**
  late final WF1<int> GetMonitorPhysicalHeight;
  /// Get specified monitor refresh rate
  /// 
  /// **[!] Not implemented on WASM**
  late final WF1<int> GetMonitorRefreshRate;
  /// Get window position XY on monitor
  late final WF1<void> GetWindowPosition;
  /// Get window scale DPI factor
  late final WF1<void> GetWindowScaleDPI;
  /// Get the human-readable, UTF-8 encoded name of the specified monitor
  /// 
  /// **[!] Not implemented on WASM**
  late final WF1<WasmMemoryPointer<RChar>> GetMonitorName;
  /// Set clipboard text content
  late final WF1<void> SetClipboardText;
  /// Get clipboard text content
  late final WF0<WasmMemoryPointer<RChar>> GetClipboardText;
  /// Get clipboard image content
  late final WF1<void> GetClipboardImage;
  /// Enable waiting for events on EndDrawing(), no automatic event polling
  late final WF0<void> EnableEventWaiting;
  /// Disable waiting for events on EndDrawing(), automatic events polling
  late final WF0<void> DisableEventWaiting;
  /// Shows cursor
  late final WF0<void> ShowCursor;
  /// Hides cursor
  late final WF0<void> HideCursor;
  /// Check if cursor is not visible
  late final WF0<bool> IsCursorHidden;
  /// Enables cursor (unlock cursor)
  late final WF0<void> EnableCursor;
  /// Disables cursor (lock cursor)
  late final WF0<void> DisableCursor;
  /// Check if cursor is on the screen
  late final WF0<bool> IsCursorOnScreen;
  /// Set background color (framebuffer clear color)
  late final WF1<void> ClearBackground;
  /// Setup canvas (framebuffer) to start drawing
  late final WF0<void> BeginDrawing;
  /// End canvas drawing and swap buffers (double buffering)
  late final WF0<void> EndDrawing;
  /// Begin 2D mode with custom camera (2D)
  late final WF1<void> BeginMode2D;
  /// Ends 2D mode with custom camera
  late final WF0<void> EndMode2D;
  /// Begin 3D mode with custom camera (3D)
  late final WF1<void> BeginMode3D;
  /// Ends 3D mode and returns to default 2D orthographic mode
  late final WF0<void> EndMode3D;
  /// Begin drawing to render texture
  late final WF1<void> BeginTextureMode;
  /// Ends drawing to render texture
  late final WF0<void> EndTextureMode;
  /// Begin custom shader drawing
  late final WF1<void> BeginShaderMode;
  /// End custom shader drawing (use default shader)
  late final WF0<void> EndShaderMode;
  /// Begin blending mode (alpha, additive, multiplied, subtract, custom)
  late final WF1<void> BeginBlendMode;
  /// End blending mode (reset to default: alpha blending)
  late final WF0<void> EndBlendMode;
  /// Begin scissor mode (define screen area for following drawing)
  late final WF4<void> BeginScissorMode;
  /// End scissor mode
  late final WF0<void> EndScissorMode;
  /// Begin stereo rendering (requires VR simulator)
  late final WF1<void> BeginVrStereoMode;
  /// End stereo rendering (requires VR simulator)
  late final WF0<void> EndVrStereoMode;
  /// Load VR stereo config for VR simulator device parameters
  late final WF2<void> LoadVrStereoConfig;
  /// Unload VR stereo config
  late final WF1<void> UnloadVrStereoConfig;
  /// Load shader from files and bind default locations
  late final WF3<void> LoadShader;
  /// Load shader from code strings and bind default locations
  late final WF3<void> LoadShaderFromMemory;
  /// Check if a shader is valid (loaded on GPU)
  late final WF1<bool> IsShaderValid;
  /// Get shader uniform location
  late final WF2<int> GetShaderLocation;
  /// Get shader attribute location
  late final WF2<int> GetShaderLocationAttrib;
  /// Set shader uniform value
  late final WF4<void> SetShaderValue;
  /// Set shader uniform value vector
  late final WF5<void> SetShaderValueV;
  /// Set shader uniform value (matrix 4x4)
  late final WF3<void> SetShaderValueMatrix;
  /// Set shader uniform value for texture (sampler2d)
  late final WF3<void> SetShaderValueTexture;
  /// Unload shader from GPU memory (VRAM)
  late final WF1<void> UnloadShader;
  /// Get a ray trace from screen position (i.e mouse)
  late final WF3<void> GetScreenToWorldRay;
  /// Get a ray trace from screen position (i.e mouse) in a viewport
  late final WF5<void> GetScreenToWorldRayEx;
  /// Get the screen space position for a 3d world space position
  late final WF3<void> GetWorldToScreen;
  /// Get size position for a 3d world space position
  late final WF5<void> GetWorldToScreenEx;
  /// Get the screen space position for a 2d camera world space position
  late final WF3<void> GetWorldToScreen2D;
  /// Get the world space position for a 2d camera screen space position
  late final WF3<void> GetScreenToWorld2D;
  /// Get camera transform matrix (view matrix)
  late final WF2<void> GetCameraMatrix;
  /// Get camera 2d transform matrix
  late final WF2<void> GetCameraMatrix2D;
  /// Set target FPS (maximum)
  late final WF1<void> SetTargetFPS;
  /// Get time in seconds for last frame drawn (delta time)
  late final WF0<double> GetFrameTime;
  /// Get elapsed time in seconds since InitWindow()
  late final WF0<double> GetTime;
  /// Get current FPS
  late final WF0<int> GetFPS;
  /// Swap back buffer with front buffer (screen drawing)
  late final WF0<void> SwapScreenBuffer;
  /// Register all input events
  late final WF0<void> PollInputEvents;
  /// Wait for some time (halt program execution)
  late final WF1<void> WaitTime;
  /// Set the seed for the random number generator
  late final WF1<void> SetRandomSeed;
  /// Get a random value between min and max (both included)
  late final WF2<int> GetRandomValue;
  /// Load random values sequence, no values repeated, min and max included
  late final WF3<WasmMemoryPointer<RInt>> LoadRandomSequence;
  /// Unload random values sequence
  late final WF1<void> UnloadRandomSequence;
  /// Takes a screenshot of current screen (filename extension defines format)
  late final WF1<void> TakeScreenshot;
  /// Setup init configuration flags (view [ConfigFlags])
  late final WF1<void> SetConfigFlags;
  /// Open URL with default system browser (if available)
  late final WF1<void> OpenURL;
  /// Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
  late final WF2<void> TraceLog;
  /// Set the current threshold (minimum) log level
  late final WF1<void> SetTraceLogLevel;
  /// Set custom trace log
  late final WF1<void> SetTraceLogCallback;
  /// Set custom file binary data loader
  late final WF1<void> SetLoadFileDataCallback;
  /// Set custom file binary data saver
  late final WF1<void> SetSaveFileDataCallback;
  /// Set custom file text data loader
  late final WF1<void> SetLoadFileTextCallback;
  /// Set custom file text data saver
  late final WF1<void> SetSaveFileTextCallback;
  /// Load file data as byte array (read)
  late final WF2<WasmMemoryPointer<RUnsignedChar>> LoadFileData;
  /// Unload file data allocated by LoadFileData()
  late final WF1<void> UnloadFileData;
  /// Save data to file from byte array (write), returns true on success
  late final WF3<bool> SaveFileData;
  /// Export data to code (.h), returns true on success
  late final WF3<bool> ExportDataAsCode;
  /// Load text data from file (read)
  late final WF1<WasmMemoryPointer<RChar>> LoadFileText;
  /// Unload file text data allocated by LoadFileText()
  late final WF1<void> UnloadFileText;
  /// Save text data to file (write), returns true on success
  late final WF2<bool> SaveFileText;
  /// Rename file (if exists)
  late final WF2<int> FileRename;
  /// Remove file (if exists)
  late final WF1<int> FileRemove;
  /// Copy file from one path to another, dstPath created if it doesn't exist
  late final WF2<int> FileCopy;
  /// Move file from one directory to another, dstPath created if it doesn't exist
  late final WF2<int> FileMove;
  /// Replace text in an existing file
  late final WF3<int> FileTextReplace;
  /// Find text in existing file
  late final WF2<int> FileTextFindIndex;
  /// Check if file exists
  late final WF1<bool> FileExists;
  /// Check if a directory path exists
  late final WF1<bool> DirectoryExists;
  /// Check file extension (including point: .png, .wav)
  late final WF2<bool> IsFileExtension;
  /// Get file length in bytes
  late final WF1<int> GetFileLength;
  /// Get extension for a filename (includes dot: '.png')
  late final WF1<WasmMemoryPointer<RChar>> GetFileExtension;
  /// Get filename for a path string
  late final WF1<WasmMemoryPointer<RChar>> GetFileName;
  /// Get filename without extension
  late final WF1<WasmMemoryPointer<RChar>> GetFileNameWithoutExt;
  /// Get the file count in a directory
  late final WF1<int> GetDirectoryFileCount;
  /// Get the file count in a directory with extension filtering and recursive directory scan.
  /// 
  /// Use 'DIR' in the filter string to include directories in the result
  late final WF3<int> GetDirectoryFileCountEx;
  /// Get full path for a given fileName with path
  late final WF1<WasmMemoryPointer<RChar>> GetDirectoryPath;
  /// Get previous directory path for a given path
  late final WF1<WasmMemoryPointer<RChar>> GetPrevDirectoryPath;
  /// Get current working directory
  late final WF0<WasmMemoryPointer<RChar>> GetWorkingDirectory;
  /// Get the directory of the running application
  late final WF0<WasmMemoryPointer<RChar>> GetApplicationDirectory;
  /// Create directories (including full path requested), returns 0 on success
  late final WF1<int> MakeDirectory;
  /// Change working directory, return true on success
  late final WF1<bool> ChangeDirectory;
  /// Check if a given path is a file or a directory
  late final WF1<bool> IsPathFile;
  /// Check if fileName is valid for the platform/OS
  late final WF1<bool> IsFileNameValid;
  /// Load directory filepaths
  late final WF2<void> LoadDirectoryFiles;
  /// Load directory filepaths with extension filtering and recursive directory scan.
  /// 
  /// Use 'DIR' in the filter string to include directories in the result
  late final WF4<void> LoadDirectoryFilesEx;
  /// Unload filepaths
  late final WF1<void> UnloadDirectoryFiles;
  /// Check if a file has been dropped into window
  late final WF0<bool> IsFileDropped;
  /// Load dropped filepaths
  late final WF1<void> LoadDroppedFiles;
  /// Unload dropped filepaths
  late final WF1<void> UnloadDroppedFiles;
  /// Get file modification time (last write time)
  late final WF1<int> GetFileModTime;
  /// Compress data (DEFLATE algorithm)
  late final WF3<WasmMemoryPointer<RUnsignedChar>> CompressData;
  /// Decompress data (DEFLATE algorithm)
  late final WF3<WasmMemoryPointer<RUnsignedChar>> DecompressData;
  /// Encode data to Base64 string
  late final WF3<WasmMemoryPointer<RChar>> EncodeDataBase64;
  /// Decode Base64 string data
  late final WF2<WasmMemoryPointer<RUnsignedChar>> DecodeDataBase64;
  /// Compute CRC32 hash code
  late final WF2<int> ComputeCRC32;
  /// Compute MD5 hash code
  late final WF2<WasmMemoryPointer<RUnsignedInt>> ComputeMD5;
  /// Compute SHA1 hash code
  late final WF2<WasmMemoryPointer<RUnsignedInt>> ComputeSHA1;
  /// Compute SHA256 hash code
  late final WF2<WasmMemoryPointer<RUnsignedInt>> ComputeSHA256;
  /// Load automation events list from file, NULL for empty list
  late final WF2<void> LoadAutomationEventList;
  /// Unload automation events list from file
  late final WF1<void> UnloadAutomationEventList;
  /// Export automation events list as text file
  late final WF2<bool> ExportAutomationEventList;
  /// Set automation event list to record to
  late final WF1<void> SetAutomationEventList;
  /// Set automation event internal base frame to start recording
  late final WF1<void> SetAutomationEventBaseFrame;
  /// Start recording automation events (AutomationEventList must be set)
  late final WF0<void> StartAutomationEventRecording;
  /// Stop recording automation events
  late final WF0<void> StopAutomationEventRecording;
  /// Play a recorded automation event
  late final WF1<void> PlayAutomationEvent;
  /// Check if a key has been pressed once
  late final WF1<bool> IsKeyPressed;
  /// Check if a key has been pressed again
  late final WF1<bool> IsKeyPressedRepeat;
  /// Check if a key is being pressed
  late final WF1<bool> IsKeyDown;
  /// Check if a key has been released once
  late final WF1<bool> IsKeyReleased;
  /// Check if a key is NOT being pressed
  late final WF1<bool> IsKeyUp;
  /// Get name of a QWERTY key on the current keyboard layout (eg returns string 'q' for KEY_A on an AZERTY keyboard)
  /// 
  /// **[!] Not implemented on WASM**
  late final WF1<WasmMemoryPointer<RChar>> GetKeyName;
  /// Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
  late final WF0<int> GetKeyPressed;
  /// Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
  late final WF0<int> GetCharPressed;
  /// Set a custom key to exit program (default is ESC)
  late final WF1<void> SetExitKey;
  /// Check if a gamepad is available
  late final WF1<bool> IsGamepadAvailable;
  /// Get gamepad internal name id
  late final WF1<WasmMemoryPointer<RChar>> GetGamepadName;
  /// Check if a gamepad button has been pressed once
  late final WF2<bool> IsGamepadButtonPressed;
  /// Check if a gamepad button is being pressed
  late final WF2<bool> IsGamepadButtonDown;
  /// Check if a gamepad button has been released once
  late final WF2<bool> IsGamepadButtonReleased;
  /// Check if a gamepad button is NOT being pressed
  late final WF2<bool> IsGamepadButtonUp;
  /// Get the last gamepad button pressed
  late final WF0<int> GetGamepadButtonPressed;
  /// Get gamepad axis count for a gamepad
  late final WF1<int> GetGamepadAxisCount;
  /// Get axis movement value for a gamepad axis
  late final WF2<double> GetGamepadAxisMovement;
  /// Set internal gamepad mappings (SDL_GameControllerDB)
  late final WF1<int> SetGamepadMappings;
  /// Set gamepad vibration for both motors (duration in seconds)
  late final WF4<void> SetGamepadVibration;
  /// Check if a mouse button has been pressed once
  late final WF1<bool> IsMouseButtonPressed;
  /// Check if a mouse button is being pressed
  late final WF1<bool> IsMouseButtonDown;
  /// Check if a mouse button has been released once
  late final WF1<bool> IsMouseButtonReleased;
  /// Check if a mouse button is NOT being pressed
  late final WF1<bool> IsMouseButtonUp;
  /// Get mouse position X
  late final WF0<int> GetMouseX;
  /// Get mouse position Y
  late final WF0<int> GetMouseY;
  /// Get mouse position XY
  late final WF1<void> GetMousePosition;
  /// Get mouse delta between frames
  late final WF1<void> GetMouseDelta;
  /// Set mouse position XY
  late final WF2<void> SetMousePosition;
  /// Set mouse offset
  late final WF2<void> SetMouseOffset;
  /// Set mouse scaling
  late final WF2<void> SetMouseScale;
  /// Get mouse wheel movement for X or Y, whichever is larger
  late final WF0<double> GetMouseWheelMove;
  /// Get mouse wheel movement for both X and Y
  late final WF1<void> GetMouseWheelMoveV;
  /// Set mouse cursor
  late final WF1<void> SetMouseCursor;
  /// Get touch position X for touch point 0 (relative to screen size)
  late final WF0<int> GetTouchX;
  /// Get touch position Y for touch point 0 (relative to screen size)
  late final WF0<int> GetTouchY;
  /// Get touch position XY for a touch point index (relative to screen size)
  late final WF2<void> GetTouchPosition;
  /// Get touch point identifier for given index
  late final WF1<int> GetTouchPointId;
  /// Get number of touch points
  late final WF0<int> GetTouchPointCount;
  /// Enable a set of gestures using flags [Gesture]
  late final WF1<void> SetGesturesEnabled;
  /// Check if a gesture have been detected
  late final WF1<bool> IsGestureDetected;
  /// Get latest detected gesture
  late final WF0<int> GetGestureDetected;
  /// Get gesture hold time in seconds
  late final WF0<double> GetGestureHoldDuration;
  /// Get gesture drag vector
  late final WF1<void> GetGestureDragVector;
  /// Get gesture drag angle
  late final WF0<double> GetGestureDragAngle;
  /// Get gesture pinch delta
  late final WF1<void> GetGesturePinchVector;
  /// Get gesture pinch angle
  late final WF0<double> GetGesturePinchAngle;
  /// Process gesture event and translate it into gestures
  late final WF1<void> ProcessGestureEvent;
  /// Update gestures detected (must be called every frame)
  late final WF0<void> UpdateGestures;
  /// Update camera position for selected mode
  late final WF2<void> UpdateCamera;
  /// Update camera movement/rotation
  late final WF4<void> UpdateCameraPro;
  /// Set texture and rectangle to be used on shapes drawing
  late final WF2<void> SetShapesTexture;
  /// Get texture that is used for shapes drawing
  late final WF1<void> GetShapesTexture;
  /// Get texture source rectangle that is used for shapes drawing
  late final WF1<void> GetShapesTextureRectangle;
  /// Draw a pixel using geometry [Can be slow, use with care]
  late final WF3<void> DrawPixel;
  /// Draw a pixel using geometry (Vector version) [Can be slow, use with care]
  late final WF2<void> DrawPixelV;
  /// Draw a line
  late final WF5<void> DrawLine;
  /// Draw a line (using gl lines)
  late final WF3<void> DrawLineV;
  /// Draw a line (using triangles/quads)
  late final WF4<void> DrawLineEx;
  /// Draw lines sequence (using gl lines)
  late final WF3<void> DrawLineStrip;
  /// Draw line segment cubic-bezier in-out interpolation
  late final WF4<void> DrawLineBezier;
  /// Draw a dashed line
  late final WF5<void> DrawLineDashed;
  /// Draw a color-filled circle
  late final WF4<void> DrawCircle;
  /// Draw a piece of a circle
  late final WF6<void> DrawCircleSector;
  /// Draw circle sector outline
  late final WF6<void> DrawCircleSectorLines;
  /// Draw a gradient-filled circle
  late final WF4<void> DrawCircleGradient;
  /// Draw a color-filled circle (Vector version)
  late final WF3<void> DrawCircleV;
  /// Draw circle outline
  late final WF4<void> DrawCircleLines;
  /// Draw circle outline (Vector version)
  late final WF3<void> DrawCircleLinesV;
  /// Draw ellipse
  late final WF5<void> DrawEllipse;
  /// Draw ellipse (Vector version)
  late final WF4<void> DrawEllipseV;
  /// Draw ellipse outline
  late final WF5<void> DrawEllipseLines;
  /// Draw ellipse outline (Vector version)
  late final WF4<void> DrawEllipseLinesV;
  /// Draw ring
  late final WF7<void> DrawRing;
  /// Draw ring outline
  late final WF7<void> DrawRingLines;
  /// Draw a color-filled rectangle
  late final WF5<void> DrawRectangle;
  /// Draw a color-filled rectangle (Vector version)
  late final WF3<void> DrawRectangleV;
  /// Draw a color-filled rectangle
  late final WF2<void> DrawRectangleRec;
  /// Draw a color-filled rectangle with pro parameters
  late final WF4<void> DrawRectanglePro;
  /// Draw a vertical-gradient-filled rectangle
  late final WF6<void> DrawRectangleGradientV;
  /// Draw a horizontal-gradient-filled rectangle
  late final WF6<void> DrawRectangleGradientH;
  /// Draw a gradient-filled rectangle with custom vertex colors
  late final WF5<void> DrawRectangleGradientEx;
  /// Draw rectangle outline
  late final WF5<void> DrawRectangleLines;
  /// Draw rectangle outline with extended parameters
  late final WF3<void> DrawRectangleLinesEx;
  /// Draw rectangle with rounded edges
  late final WF4<void> DrawRectangleRounded;
  /// Draw rectangle lines with rounded edges
  late final WF4<void> DrawRectangleRoundedLines;
  /// Draw rectangle with rounded edges outline
  late final WF5<void> DrawRectangleRoundedLinesEx;
  /// Draw a color-filled triangle (vertex in counter-clockwise order!)
  late final WF4<void> DrawTriangle;
  /// Draw triangle outline (vertex in counter-clockwise order!)
  late final WF4<void> DrawTriangleLines;
  /// Draw a triangle fan defined by points (first vertex is the center)
  late final WF3<void> DrawTriangleFan;
  /// Draw a triangle strip defined by points
  late final WF3<void> DrawTriangleStrip;
  /// Draw a regular polygon (Vector version)
  late final WF5<void> DrawPoly;
  /// Draw a polygon outline of n sides
  late final WF5<void> DrawPolyLines;
  /// Draw a polygon outline of n sides with extended parameters
  late final WF6<void> DrawPolyLinesEx;
  /// Draw spline: Linear, minimum 2 points
  late final WF4<void> DrawSplineLinear;
  /// Draw spline: B-Spline, minimum 4 points
  late final WF4<void> DrawSplineBasis;
  /// Draw spline: Catmull-Rom, minimum 4 points
  late final WF4<void> DrawSplineCatmullRom;
  /// Draw spline: Quadratic Bezier, minimum 3 points (1 control point): [p1, c2, p3, c4...]
  late final WF4<void> DrawSplineBezierQuadratic;
  /// Draw spline: Cubic Bezier, minimum 4 points (2 control points): [p1, c2, c3, p4, c5, c6...]
  late final WF4<void> DrawSplineBezierCubic;
  /// Draw spline segment: Linear, 2 points
  late final WF4<void> DrawSplineSegmentLinear;
  /// Draw spline segment: B-Spline, 4 points
  late final WF6<void> DrawSplineSegmentBasis;
  /// Draw spline segment: Catmull-Rom, 4 points
  late final WF6<void> DrawSplineSegmentCatmullRom;
  /// Draw spline segment: Quadratic Bezier, 2 points, 1 control point
  late final WF5<void> DrawSplineSegmentBezierQuadratic;
  /// Draw spline segment: Cubic Bezier, 2 points, 2 control points
  late final WF6<void> DrawSplineSegmentBezierCubic;
  /// Get (evaluate) spline point: Linear
  late final WF4<void> GetSplinePointLinear;
  /// Get (evaluate) spline point: B-Spline
  late final WF6<void> GetSplinePointBasis;
  /// Get (evaluate) spline point: Catmull-Rom
  late final WF6<void> GetSplinePointCatmullRom;
  /// Get (evaluate) spline point: Quadratic Bezier
  late final WF5<void> GetSplinePointBezierQuad;
  /// Get (evaluate) spline point: Cubic Bezier
  late final WF6<void> GetSplinePointBezierCubic;
  /// Check collision between two rectangles
  late final WF2<bool> CheckCollisionRecs;
  /// Check collision between two circles
  late final WF4<bool> CheckCollisionCircles;
  /// Check collision between circle and rectangle
  late final WF3<bool> CheckCollisionCircleRec;
  /// Check if circle collides with a line created betweeen two points [p1] and [p2]
  late final WF4<bool> CheckCollisionCircleLine;
  /// Check if point is inside rectangle
  late final WF2<bool> CheckCollisionPointRec;
  /// Check if point is inside circle
  late final WF3<bool> CheckCollisionPointCircle;
  /// Check if point is inside a triangle
  late final WF4<bool> CheckCollisionPointTriangle;
  /// Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
  late final WF4<bool> CheckCollisionPointLine;
  /// Check if point is within a polygon described by array of vertices
  late final WF3<bool> CheckCollisionPointPoly;
  /// Check the collision between two lines defined by two points each, returns collision point by reference
  late final WF5<bool> CheckCollisionLines;
  /// Get collision rectangle for two rectangles collision
  late final WF3<void> GetCollisionRec;
  /// Load image from file into CPU memory (RAM)
  late final WF2<void> LoadImage;
  /// Load image from RAW file data
  late final WF6<void> LoadImageRaw;
  /// Load image sequence from file (frames appended to image.data)
  late final WF3<void> LoadImageAnim;
  /// Load image sequence from memory buffer
  late final WF5<void> LoadImageAnimFromMemory;
  /// Load image from memory buffer, fileType refers to extension: i.e. '.png'
  late final WF4<void> LoadImageFromMemory;
  /// Load image from GPU texture data
  late final WF2<void> LoadImageFromTexture;
  /// Load image from screen buffer and (screenshot)
  late final WF1<void> LoadImageFromScreen;
  /// Check if an image is valid (data and parameters)
  late final WF1<bool> IsImageValid;
  /// Unload image from CPU memory (RAM)
  late final WF1<void> UnloadImage;
  /// Export image data to file, returns true on success
  late final WF2<bool> ExportImage;
  /// Export image to memory buffer
  late final WF3<WasmMemoryPointer<RUnsignedChar>> ExportImageToMemory;
  /// Export image as code file defining an array of bytes, returns true on success
  late final WF2<bool> ExportImageAsCode;
  /// Generate image: plain color
  late final WF4<void> GenImageColor;
  /// Generate image: linear gradient, direction in degrees [0..360], 0=Vertical gradient
  late final WF6<void> GenImageGradientLinear;
  /// Generate image: radial gradient
  late final WF6<void> GenImageGradientRadial;
  /// Generate image: square gradient
  late final WF6<void> GenImageGradientSquare;
  /// Generate image: checked
  late final WF7<void> GenImageChecked;
  /// Generate image: white noise
  late final WF4<void> GenImageWhiteNoise;
  /// Generate image: perlin noise
  late final WF6<void> GenImagePerlinNoise;
  /// Generate image: cellular algorithm, bigger tileSize means bigger cells
  late final WF4<void> GenImageCellular;
  /// Generate image: grayscale image from text data
  late final WF4<void> GenImageText;
  /// Create an image duplicate (useful for transformations)
  late final WF2<void> ImageCopy;
  /// Create an image from another image piece
  late final WF3<void> ImageFromImage;
  /// Create an image from a selected channel of another image (GRAYSCALE)
  late final WF3<void> ImageFromChannel;
  /// Create an image from text (default font)
  late final WF4<void> ImageText;
  /// Create an image from text (custom sprite font)
  late final WF6<void> ImageTextEx;
  /// Convert image data to desired format
  late final WF2<void> ImageFormat;
  /// Convert image to POT (power-of-two)
  late final WF2<void> ImageToPOT;
  /// Crop an image to a defined rectangle
  late final WF2<void> ImageCrop;
  /// Crop image depending on alpha value
  late final WF2<void> ImageAlphaCrop;
  /// Clear alpha channel to desired color
  late final WF3<void> ImageAlphaClear;
  /// Apply alpha mask to image
  late final WF2<void> ImageAlphaMask;
  /// Premultiply alpha channel
  late final WF1<void> ImageAlphaPremultiply;
  /// Apply Gaussian blur using a box blur approximation
  late final WF2<void> ImageBlurGaussian;
  /// Apply custom square convolution kernel to image
  late final WF3<void> ImageKernelConvolution;
  /// Resize image (Bicubic scaling algorithm)
  late final WF3<void> ImageResize;
  /// Resize image (Nearest-Neighbor scaling algorithm)
  late final WF3<void> ImageResizeNN;
  /// Resize canvas and fill with color
  late final WF6<void> ImageResizeCanvas;
  /// Compute all mipmap levels for a provided image
  late final WF1<void> ImageMipmaps;
  /// Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
  late final WF5<void> ImageDither;
  /// Flip image vertically
  late final WF1<void> ImageFlipVertical;
  /// Flip image horizontally
  late final WF1<void> ImageFlipHorizontal;
  /// Rotate image by input angle in degrees (-359 to 359)
  late final WF2<void> ImageRotate;
  /// Rotate image clockwise 90deg
  late final WF1<void> ImageRotateCW;
  /// Rotate image counter-clockwise 90deg
  late final WF1<void> ImageRotateCCW;
  /// Modify image color: tint
  late final WF2<void> ImageColorTint;
  /// Modify image color: invert
  late final WF1<void> ImageColorInvert;
  /// Modify image color: grayscale
  late final WF1<void> ImageColorGrayscale;
  /// Modify image color: contrast (-100 to 100)
  late final WF2<void> ImageColorContrast;
  /// Modify image color: brightness (-255 to 255)
  late final WF2<void> ImageColorBrightness;
  /// Modify image color: replace color
  late final WF3<void> ImageColorReplace;
  /// Load color data from image as a Color array (RGBA - 32bit)
  late final WF1<StructPointer<ColorD>> LoadImageColors;
  /// Load colors palette from image as a Color array (RGBA - 32bit)
  late final WF3<StructPointer<ColorD>> LoadImagePalette;
  /// Unload color data loaded with LoadImageColors()
  late final WF1<void> UnloadImageColors;
  /// Unload colors palette loaded with LoadImagePalette()
  late final WF1<void> UnloadImagePalette;
  /// Get image alpha border rectangle
  late final WF3<void> GetImageAlphaBorder;
  /// Get image pixel color at (x, y) position
  late final WF4<void> GetImageColor;
  /// Clear image background with given color
  late final WF2<void> ImageClearBackground;
  /// Draw pixel within an image
  late final WF4<void> ImageDrawPixel;
  /// Draw pixel within an image (Vector version)
  late final WF3<void> ImageDrawPixelV;
  /// Draw line within an image
  late final WF6<void> ImageDrawLine;
  /// Draw line within an image (Vector version)
  late final WF4<void> ImageDrawLineV;
  /// Draw a line defining thickness within an image
  late final WF5<void> ImageDrawLineEx;
  /// Draw a filled circle within an image
  late final WF5<void> ImageDrawCircle;
  /// Draw a filled circle within an image (Vector version)
  late final WF4<void> ImageDrawCircleV;
  /// Draw circle outline within an image
  late final WF5<void> ImageDrawCircleLines;
  /// Draw circle outline within an image (Vector version)
  late final WF4<void> ImageDrawCircleLinesV;
  /// Draw rectangle within an image
  late final WF6<void> ImageDrawRectangle;
  /// Draw rectangle within an image (Vector version)
  late final WF4<void> ImageDrawRectangleV;
  /// Draw rectangle within an image
  late final WF3<void> ImageDrawRectangleRec;
  /// Draw rectangle lines within an image
  late final WF4<void> ImageDrawRectangleLines;
  /// Draw triangle within an image
  late final WF5<void> ImageDrawTriangle;
  /// Draw triangle with interpolated colors within an image
  late final WF7<void> ImageDrawTriangleEx;
  /// Draw triangle outline within an image
  late final WF5<void> ImageDrawTriangleLines;
  /// Draw a triangle fan defined by points within an image (first vertex is the center)
  late final WF4<void> ImageDrawTriangleFan;
  /// Draw a triangle strip defined by points within an image
  late final WF4<void> ImageDrawTriangleStrip;
  /// Draw a source image within a destination image (tint applied to source)
  late final WF5<void> ImageDraw;
  /// Draw text (using default font) within an image (destination)
  late final WF6<void> ImageDrawText;
  /// Draw text (custom sprite font) within an image (destination)
  late final WF7<void> ImageDrawTextEx;
  /// Load texture from file into GPU memory (VRAM)
  late final WF2<void> LoadTexture;
  /// Load texture from image data
  late final WF2<void> LoadTextureFromImage;
  /// Load cubemap from image, multiple image cubemap layouts supported
  late final WF3<void> LoadTextureCubemap;
  /// Load texture for rendering (framebuffer)
  late final WF3<void> LoadRenderTexture;
  /// Check if a texture is valid (loaded in GPU)
  late final WF1<bool> IsTextureValid;
  /// Unload texture from GPU memory (VRAM)
  late final WF1<void> UnloadTexture;
  /// Check if a render texture is valid (loaded in GPU)
  late final WF1<bool> IsRenderTextureValid;
  /// Unload render texture from GPU memory (VRAM)
  late final WF1<void> UnloadRenderTexture;
  /// Update GPU texture with new data
  late final WF2<void> UpdateTexture;
  /// Update GPU texture rectangle with new data
  late final WF3<void> UpdateTextureRec;
  /// Generate GPU mipmaps for a texture
  late final WF1<void> GenTextureMipmaps;
  /// Set texture scaling filter mode
  late final WF2<void> SetTextureFilter;
  /// Set texture wrapping mode
  late final WF2<void> SetTextureWrap;
  /// Draw a Texture2D
  late final WF4<void> DrawTexture;
  /// Draw a Texture2D with position defined as Vector2
  late final WF3<void> DrawTextureV;
  /// Draw a Texture2D with extended parameters
  late final WF5<void> DrawTextureEx;
  /// Draw a part of a texture defined by a rectangle
  late final WF4<void> DrawTextureRec;
  /// Draw a part of a texture defined by a rectangle with 'pro' parameters
  late final WF6<void> DrawTexturePro;
  /// Draws a texture (or part of it) that stretches or shrinks nicely
  late final WF6<void> DrawTextureNPatch;
  /// Check if two colors are equal
  late final WF2<bool> ColorIsEqual;
  /// Get color with alpha applied, alpha goes from 0.0 to 1.0
  late final WF3<void> Fade;
  /// Get hexadecimal value for a Color (0xRRGGBBAA)
  late final WF1<int> ColorToInt;
  /// Get Color normalized as float [0..1]
  late final WF2<void> ColorNormalize;
  /// Get Color from normalized values [0..1]
  late final WF2<void> ColorFromNormalized;
  /// Get HSV values for a Color, hue [0..360], saturation/value [0..1]
  late final WF2<void> ColorToHSV;
  /// Get a Color from HSV values, hue [0..360], saturation/value [0..1]
  late final WF4<void> ColorFromHSV;
  /// Get color multiplied with another color
  late final WF3<void> ColorTint;
  /// Get color with brightness correction, brightness factor goes from -1.0 to 1.0
  late final WF3<void> ColorBrightness;
  /// Get color with contrast correction, contrast values between -1.0 and 1.0
  late final WF3<void> ColorContrast;
  /// Get color with alpha applied, alpha goes from 0.0 to 1.0
  late final WF3<void> ColorAlpha;
  /// Get src alpha-blended into dst color with tint
  late final WF4<void> ColorAlphaBlend;
  /// Get color lerp interpolation between two colors, factor [0.0..1.0]
  late final WF4<void> ColorLerp;
  /// Get Color structure from hexadecimal value
  late final WF2<void> GetColor;
  /// Get Color from a source pixel pointer of certain format
  late final WF3<void> GetPixelColor;
  /// Set color formatted into destination pixel pointer
  late final WF3<void> SetPixelColor;
  /// Get pixel data size in bytes for certain format
  late final WF3<int> GetPixelDataSize;
  /// Get the default Font
  late final WF1<void> GetFontDefault;
  /// Load font from file into GPU memory (VRAM)
  late final WF2<void> LoadFont;
  /// Load font from file with extended parameters, use NULL for codepoints and 0 for codepointCount to load the default character set, font size is provided in pixels height
  late final WF5<void> LoadFontEx;
  /// Load font from Image (XNA style)
  late final WF4<void> LoadFontFromImage;
  /// Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
  late final WF7<void> LoadFontFromMemory;
  /// Check if a font is valid (font data loaded, WARNING: GPU texture not checked)
  late final WF1<bool> IsFontValid;
  /// Load font data for further use
  late final WF7<StructPointer<GlyphInfoD>> LoadFontData;
  /// Generate image font atlas using chars info
  late final WF7<void> GenImageFontAtlas;
  /// Unload font chars info data (RAM)
  late final WF2<void> UnloadFontData;
  /// Unload font from GPU memory (VRAM)
  late final WF1<void> UnloadFont;
  /// Export font as code file, returns true on success
  late final WF2<bool> ExportFontAsCode;
  /// Draw current FPS
  late final WF2<void> DrawFPS;
  /// Draw text (using default font)
  late final WF5<void> DrawText;
  /// Draw text using font and additional parameters
  late final WF6<void> DrawTextEx;
  /// Draw text using Font and pro parameters (rotation)
  late final WF8<void> DrawTextPro;
  /// Draw one character (codepoint)
  late final WF5<void> DrawTextCodepoint;
  /// Draw multiple character (codepoint)
  late final WF7<void> DrawTextCodepoints;
  /// Set vertical line spacing when drawing with line-breaks
  late final WF1<void> SetTextLineSpacing;
  /// Measure string width for default font
  late final WF2<int> MeasureText;
  /// Measure string size for Font
  late final WF5<void> MeasureTextEx;
  /// Measure string size for an existing array of codepoints for Font
  late final WF6<void> MeasureTextCodepoints;
  /// Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
  late final WF2<int> GetGlyphIndex;
  /// Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
  late final WF3<void> GetGlyphInfo;
  /// Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
  late final WF3<void> GetGlyphAtlasRec;
  /// Load UTF-8 text encoded from codepoints array
  late final WF2<WasmMemoryPointer<RChar>> LoadUTF8;
  /// Unload UTF-8 text encoded from codepoints array
  late final WF1<void> UnloadUTF8;
  /// Load all codepoints from a UTF-8 text string, codepoints count returned by parameter
  late final WF2<WasmMemoryPointer<RInt>> LoadCodepoints;
  /// Unload codepoints data from memory
  late final WF1<void> UnloadCodepoints;
  /// Get total number of codepoints in a UTF-8 encoded string
  late final WF1<int> GetCodepointCount;
  /// Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
  late final WF2<int> GetCodepoint;
  /// Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
  late final WF2<int> GetCodepointNext;
  /// Get previous codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
  late final WF2<int> GetCodepointPrevious;
  /// Encode one codepoint into UTF-8 byte array (array length returned as parameter)
  late final WF2<WasmMemoryPointer<RChar>> CodepointToUTF8;
  /// Load text as separate lines ('\n')
  late final WF2<WasmMemoryPointer<RPointer<RChar>>> LoadTextLines;
  /// Unload text lines
  late final WF2<void> UnloadTextLines;
  /// Copy one string to another, returns bytes copied
  late final WF2<int> TextCopy;
  /// Check if two text string are equal
  late final WF2<bool> TextIsEqual;
  /// Get text length
  late final WF1<int> TextLength;
  /// Text formatting with variables (sprintf() style)
  late final WF1<WasmMemoryPointer<RChar>> TextFormat;
  /// Get a piece of a text string
  late final WF3<WasmMemoryPointer<RChar>> TextSubtext;
  /// Remove text spaces, concat words
  late final WF1<WasmMemoryPointer<RChar>> TextRemoveSpaces;
  /// Get text between two strings
  late final WF3<WasmMemoryPointer<RChar>> GetTextBetween;
  /// Replace text string with new string
  late final WF3<WasmMemoryPointer<RChar>> TextReplace;
  /// Replace text string with new string, memory must be freed
  late final WF3<WasmMemoryPointer<RChar>> TextReplaceAlloc;
  /// Replace text between two specific strings
  late final WF4<WasmMemoryPointer<RChar>> TextReplaceBetween;
  /// Replace text between two specific strings, memory must be freed
  late final WF4<WasmMemoryPointer<RChar>> TextReplaceBetweenAlloc;
  /// Insert text in a defined byte position
  late final WF3<WasmMemoryPointer<RChar>> TextInsert;
  /// Insert text in a defined byte position, memory must be freed
  late final WF3<WasmMemoryPointer<RChar>> TextInsertAlloc;
  /// Join text strings with delimiter ([delimiter] is expected to be length of 1)
  late final WF3<WasmMemoryPointer<RChar>> TextJoin;
  /// Split text into multiple strings
  late final WF3<WasmMemoryPointer<RPointer<RChar>>> TextSplit;
  /// Append text at specific position and move cursor
  late final WF3<void> TextAppend;
  /// Find first text occurrence within a string, -1 if not found
  late final WF2<int> TextFindIndex;
  /// Get upper case version of provided string
  late final WF1<WasmMemoryPointer<RChar>> TextToUpper;
  /// Get lower case version of provided string
  late final WF1<WasmMemoryPointer<RChar>> TextToLower;
  /// Get Pascal case notation version of provided string
  late final WF1<WasmMemoryPointer<RChar>> TextToPascal;
  /// Get Snake case notation version of provided string
  late final WF1<WasmMemoryPointer<RChar>> TextToSnake;
  /// Get Camel case notation version of provided string
  late final WF1<WasmMemoryPointer<RChar>> TextToCamel;
  /// Get integer value from text
  late final WF1<int> TextToInteger;
  /// Get float value from text
  late final WF1<double> TextToFloat;
  /// Draw a line in 3D world space
  late final WF3<void> DrawLine3D;
  /// Draw a point in 3D space, actually a small line
  late final WF2<void> DrawPoint3D;
  /// Draw a circle in 3D world space
  late final WF5<void> DrawCircle3D;
  /// Draw a color-filled triangle (vertex in counter-clockwise order!)
  late final WF4<void> DrawTriangle3D;
  /// Draw a triangle strip defined by points
  late final WF3<void> DrawTriangleStrip3D;
  /// Draw cube
  late final WF5<void> DrawCube;
  /// Draw cube (Vector version)
  late final WF3<void> DrawCubeV;
  /// Draw cube wires
  late final WF5<void> DrawCubeWires;
  /// Draw cube wires (Vector version)
  late final WF3<void> DrawCubeWiresV;
  /// Draw sphere
  late final WF3<void> DrawSphere;
  /// Draw sphere with extended parameters
  late final WF5<void> DrawSphereEx;
  /// Draw sphere wires
  late final WF5<void> DrawSphereWires;
  /// Draw a cylinder/cone
  late final WF6<void> DrawCylinder;
  /// Draw a cylinder with base at startPos and top at endPos
  late final WF6<void> DrawCylinderEx;
  /// Draw a cylinder/cone wires
  late final WF6<void> DrawCylinderWires;
  /// Draw a cylinder wires with base at startPos and top at endPos
  late final WF6<void> DrawCylinderWiresEx;
  /// Draw a capsule with the center of its sphere caps at startPos and endPos
  late final WF6<void> DrawCapsule;
  /// Draw capsule wireframe with the center of its sphere caps at startPos and endPos
  late final WF6<void> DrawCapsuleWires;
  /// Draw a plane XZ
  late final WF3<void> DrawPlane;
  /// Draw a ray line
  late final WF2<void> DrawRay;
  /// Draw a grid (centered at (0, 0, 0))
  late final WF2<void> DrawGrid;
  /// Load model from files (meshes and materials)
  late final WF2<void> LoadModel;
  /// Load model from generated mesh (default material)
  late final WF2<void> LoadModelFromMesh;
  /// Check if a model is valid (loaded in GPU, VAO/VBOs)
  late final WF1<bool> IsModelValid;
  /// Unload model (including meshes) from memory (RAM and/or VRAM)
  late final WF1<void> UnloadModel;
  /// Compute model bounding box limits (considers all meshes)
  late final WF2<void> GetModelBoundingBox;
  /// Draw a model (with texture if set)
  late final WF4<void> DrawModel;
  /// Draw a model with extended parameters
  late final WF6<void> DrawModelEx;
  /// Draw a model wires (with texture if set)
  late final WF4<void> DrawModelWires;
  /// Draw a model wires (with texture if set) with extended parameters
  late final WF6<void> DrawModelWiresEx;
  /// Draw bounding box (wires)
  late final WF2<void> DrawBoundingBox;
  /// Draw a billboard texture
  late final WF5<void> DrawBillboard;
  /// Draw a billboard texture defined by source
  late final WF6<void> DrawBillboardRec;
  /// Draw a billboard texture defined by source and rotation
  late final WF9<void> DrawBillboardPro;
  /// Upload mesh vertex data in GPU and provide VAO/VBO ids
  late final WF2<void> UploadMesh;
  /// Update mesh vertex data in GPU for a specific buffer index
  late final WF5<void> UpdateMeshBuffer;
  /// Unload mesh data from CPU and GPU
  late final WF1<void> UnloadMesh;
  /// Draw a 3d mesh with material and transform
  late final WF3<void> DrawMesh;
  /// Draw multiple mesh instances with material and different transforms
  late final WF4<void> DrawMeshInstanced;
  /// Compute mesh bounding box limits
  late final WF2<void> GetMeshBoundingBox;
  /// Compute mesh tangents
  late final WF1<void> GenMeshTangents;
  /// Export mesh data to file, returns true on success
  late final WF2<bool> ExportMesh;
  /// Export mesh as code file (.h) defining multiple arrays of vertex attributes
  late final WF2<bool> ExportMeshAsCode;
  /// Generate polygonal mesh
  late final WF3<void> GenMeshPoly;
  /// Generate plane mesh (with subdivisions)
  late final WF5<void> GenMeshPlane;
  /// Generate cuboid mesh
  late final WF4<void> GenMeshCube;
  /// Generate sphere mesh (standard sphere)
  late final WF4<void> GenMeshSphere;
  /// Generate half-sphere mesh (no bottom cap)
  late final WF4<void> GenMeshHemiSphere;
  /// Generate cylinder mesh
  late final WF4<void> GenMeshCylinder;
  /// Generate cone/pyramid mesh
  late final WF4<void> GenMeshCone;
  /// Generate torus mesh
  late final WF5<void> GenMeshTorus;
  /// Generate trefoil knot mesh
  late final WF5<void> GenMeshKnot;
  /// Generate heightmap mesh from image data
  late final WF3<void> GenMeshHeightmap;
  /// Generate cubes-based map mesh from image data
  late final WF3<void> GenMeshCubicmap;
  /// Load materials from model file
  late final WF2<StructPointer<MaterialD>> LoadMaterials;
  /// Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
  late final WF1<void> LoadMaterialDefault;
  /// Check if a material is valid (shader assigned, map textures loaded in GPU)
  late final WF1<bool> IsMaterialValid;
  /// Unload material from GPU memory (VRAM)
  late final WF1<void> UnloadMaterial;
  /// Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)
  late final WF3<void> SetMaterialTexture;
  /// Set material for a mesh
  late final WF3<void> SetModelMeshMaterial;
  /// Load model animations from file
  late final WF2<StructPointer<ModelAnimationD>> LoadModelAnimations;
  /// Update model animation pose (CPU)
  late final WF3<void> UpdateModelAnimation;
  /// Update model animation data (vertex buffers / bone matrices) for a specific pose,
  /// defined by two different animations at specific frames blended together
  late final WF6<void> UpdateModelAnimationEx;
  /// Unload animation array data
  late final WF2<void> UnloadModelAnimations;
  /// Check model animation skeleton match
  late final WF2<bool> IsModelAnimationValid;
  /// Check collision between two spheres
  late final WF4<bool> CheckCollisionSpheres;
  /// Check collision between two bounding boxes
  late final WF2<bool> CheckCollisionBoxes;
  /// Check collision between box and sphere
  late final WF3<bool> CheckCollisionBoxSphere;
  /// Get collision info between ray and sphere
  late final WF4<void> GetRayCollisionSphere;
  /// Get collision info between ray and box
  late final WF3<void> GetRayCollisionBox;
  /// Get collision info between ray and mesh
  late final WF4<void> GetRayCollisionMesh;
  /// Get collision info between ray and triangle
  late final WF5<void> GetRayCollisionTriangle;
  /// Get collision info between ray and quad
  late final WF6<void> GetRayCollisionQuad;

  RaylibCore(super.rl) {
    InitWindow                       = dwrap3('InitWindow');
    CloseWindow                      = dwrap0('CloseWindow');
    WindowShouldClose                = dwrap0('WindowShouldClose');
    IsWindowReady                    = dwrap0('IsWindowReady');
    IsWindowFullscreen               = dwrap0('IsWindowFullscreen');
    IsWindowHidden                   = dwrap0('IsWindowHidden');
    IsWindowMinimized                = dwrap0('IsWindowMinimized');
    IsWindowMaximized                = dwrap0('IsWindowMaximized');
    IsWindowFocused                  = dwrap0('IsWindowFocused');
    IsWindowResized                  = dwrap0('IsWindowResized');
    IsWindowState                    = dwrap1('IsWindowState');
    SetWindowState                   = dwrap1('SetWindowState');
    ClearWindowState                 = dwrap1('ClearWindowState');
    ToggleFullscreen                 = dwrap0('ToggleFullscreen');
    ToggleBorderlessWindowed         = dwrap0('ToggleBorderlessWindowed');
    MaximizeWindow                   = dwrap0('MaximizeWindow');
    MinimizeWindow                   = dwrap0('MinimizeWindow');
    RestoreWindow                    = dwrap0('RestoreWindow');
    SetWindowIcon                    = dwrap1('SetWindowIcon');
    SetWindowIcons                   = dwrap2('SetWindowIcons');
    SetWindowTitle                   = dwrap1('SetWindowTitle');
    SetWindowPosition                = dwrap2('SetWindowPosition');
    SetWindowMonitor                 = dwrap1('SetWindowMonitor');
    SetWindowMinSize                 = dwrap2('SetWindowMinSize');
    SetWindowMaxSize                 = dwrap2('SetWindowMaxSize');
    SetWindowSize                    = dwrap2('SetWindowSize');
    SetWindowOpacity                 = dwrap1('SetWindowOpacity');
    SetWindowFocused                 = dwrap0('SetWindowFocused');
    GetWindowHandle                  = pwrap0('GetWindowHandle');
    GetScreenWidth                   = dwrap0('GetScreenWidth');
    GetScreenHeight                  = dwrap0('GetScreenHeight');
    GetRenderWidth                   = dwrap0('GetRenderWidth');
    GetRenderHeight                  = dwrap0('GetRenderHeight');
    GetMonitorCount                  = dwrap0('GetMonitorCount');
    GetCurrentMonitor                = dwrap0('GetCurrentMonitor');
    GetMonitorPosition               = swrap1('GetMonitorPosition');
    GetMonitorWidth                  = dwrap1('GetMonitorWidth');
    GetMonitorHeight                 = dwrap1('GetMonitorHeight');
    GetMonitorPhysicalWidth          = dwrap1('GetMonitorPhysicalWidth');
    GetMonitorPhysicalHeight         = dwrap1('GetMonitorPhysicalHeight');
    GetMonitorRefreshRate            = dwrap1('GetMonitorRefreshRate');
    GetWindowPosition                = swrap0('GetWindowPosition');
    GetWindowScaleDPI                = swrap0('GetWindowScaleDPI');
    GetMonitorName                   = pwrap1('GetMonitorName');
    SetClipboardText                 = dwrap1('SetClipboardText');
    GetClipboardText                 = pwrap0('GetClipboardText');
    GetClipboardImage                = swrap0('GetClipboardImage');
    EnableEventWaiting               = dwrap0('EnableEventWaiting');
    DisableEventWaiting              = dwrap0('DisableEventWaiting');
    ShowCursor                       = dwrap0('ShowCursor');
    HideCursor                       = dwrap0('HideCursor');
    IsCursorHidden                   = dwrap0('IsCursorHidden');
    EnableCursor                     = dwrap0('EnableCursor');
    DisableCursor                    = dwrap0('DisableCursor');
    IsCursorOnScreen                 = dwrap0('IsCursorOnScreen');
    ClearBackground                  = dwrap1('ClearBackground');
    BeginDrawing                     = dwrap0('BeginDrawing');
    EndDrawing                       = dwrap0('EndDrawing');
    BeginMode2D                      = dwrap1('BeginMode2D');
    EndMode2D                        = dwrap0('EndMode2D');
    BeginMode3D                      = dwrap1('BeginMode3D');
    EndMode3D                        = dwrap0('EndMode3D');
    BeginTextureMode                 = dwrap1('BeginTextureMode');
    EndTextureMode                   = dwrap0('EndTextureMode');
    BeginShaderMode                  = dwrap1('BeginShaderMode');
    EndShaderMode                    = dwrap0('EndShaderMode');
    BeginBlendMode                   = dwrap1('BeginBlendMode');
    EndBlendMode                     = dwrap0('EndBlendMode');
    BeginScissorMode                 = dwrap4('BeginScissorMode');
    EndScissorMode                   = dwrap0('EndScissorMode');
    BeginVrStereoMode                = dwrap1('BeginVrStereoMode');
    EndVrStereoMode                  = dwrap0('EndVrStereoMode');
    LoadVrStereoConfig               = swrap1('LoadVrStereoConfig');
    UnloadVrStereoConfig             = dwrap1('UnloadVrStereoConfig');
    LoadShader                       = swrap2('LoadShader');
    LoadShaderFromMemory             = swrap2('LoadShaderFromMemory');
    IsShaderValid                    = dwrap1('IsShaderValid');
    GetShaderLocation                = dwrap2('GetShaderLocation');
    GetShaderLocationAttrib          = dwrap2('GetShaderLocationAttrib');
    SetShaderValue                   = dwrap4('SetShaderValue');
    SetShaderValueV                  = dwrap5('SetShaderValueV');
    SetShaderValueMatrix             = dwrap3('SetShaderValueMatrix');
    SetShaderValueTexture            = dwrap3('SetShaderValueTexture');
    UnloadShader                     = dwrap1('UnloadShader');
    GetScreenToWorldRay              = swrap2('GetScreenToWorldRay');
    GetScreenToWorldRayEx            = swrap4('GetScreenToWorldRayEx');
    GetWorldToScreen                 = swrap2('GetWorldToScreen');
    GetWorldToScreenEx               = swrap4('GetWorldToScreenEx');
    GetWorldToScreen2D               = swrap2('GetWorldToScreen2D');
    GetScreenToWorld2D               = swrap2('GetScreenToWorld2D');
    GetCameraMatrix                  = swrap1('GetCameraMatrix');
    GetCameraMatrix2D                = swrap1('GetCameraMatrix2D');
    SetTargetFPS                     = dwrap1('SetTargetFPS');
    GetFrameTime                     = dwrap0('GetFrameTime');
    GetTime                          = dwrap0('GetTime');
    GetFPS                           = dwrap0('GetFPS');
    SwapScreenBuffer                 = dwrap0('SwapScreenBuffer');
    PollInputEvents                  = dwrap0('PollInputEvents');
    WaitTime                         = dwrap1('WaitTime');
    SetRandomSeed                    = dwrap1('SetRandomSeed');
    GetRandomValue                   = dwrap2('GetRandomValue');
    LoadRandomSequence               = pwrap3('LoadRandomSequence');
    UnloadRandomSequence             = dwrap1('UnloadRandomSequence');
    TakeScreenshot                   = dwrap1('TakeScreenshot');
    SetConfigFlags                   = dwrap1('SetConfigFlags');
    OpenURL                          = dwrap1('OpenURL');
    TraceLog                         = dwrap2('TraceLog');
    SetTraceLogLevel                 = dwrap1('SetTraceLogLevel');
    SetTraceLogCallback              = dwrap1('SetTraceLogCallback');
    SetLoadFileDataCallback          = dwrap1('SetLoadFileDataCallback');
    SetSaveFileDataCallback          = dwrap1('SetSaveFileDataCallback');
    SetLoadFileTextCallback          = dwrap1('SetLoadFileTextCallback');
    SetSaveFileTextCallback          = dwrap1('SetSaveFileTextCallback');
    LoadFileData                     = pwrap2('LoadFileData');
    UnloadFileData                   = dwrap1('UnloadFileData');
    SaveFileData                     = dwrap3('SaveFileData');
    ExportDataAsCode                 = dwrap3('ExportDataAsCode');
    LoadFileText                     = pwrap1('LoadFileText');
    UnloadFileText                   = dwrap1('UnloadFileText');
    SaveFileText                     = dwrap2('SaveFileText');
    FileRename                       = dwrap2('FileRename');
    FileRemove                       = dwrap1('FileRemove');
    FileCopy                         = dwrap2('FileCopy');
    FileMove                         = dwrap2('FileMove');
    FileTextReplace                  = dwrap3('FileTextReplace');
    FileTextFindIndex                = dwrap2('FileTextFindIndex');
    FileExists                       = dwrap1('FileExists');
    DirectoryExists                  = dwrap1('DirectoryExists');
    IsFileExtension                  = dwrap2('IsFileExtension');
    GetFileLength                    = dwrap1('GetFileLength');
    GetFileExtension                 = pwrap1('GetFileExtension');
    GetFileName                      = pwrap1('GetFileName');
    GetFileNameWithoutExt            = pwrap1('GetFileNameWithoutExt');
    GetDirectoryFileCount            = dwrap1('GetDirectoryFileCount');
    GetDirectoryFileCountEx          = dwrap3('GetDirectoryFileCountEx');
    GetDirectoryPath                 = pwrap1('GetDirectoryPath');
    GetPrevDirectoryPath             = pwrap1('GetPrevDirectoryPath');
    GetWorkingDirectory              = pwrap0('GetWorkingDirectory');
    GetApplicationDirectory          = pwrap0('GetApplicationDirectory');
    MakeDirectory                    = dwrap1('MakeDirectory');
    ChangeDirectory                  = dwrap1('ChangeDirectory');
    IsPathFile                       = dwrap1('IsPathFile');
    IsFileNameValid                  = dwrap1('IsFileNameValid');
    LoadDirectoryFiles               = swrap1('LoadDirectoryFiles');
    LoadDirectoryFilesEx             = swrap3('LoadDirectoryFilesEx');
    UnloadDirectoryFiles             = dwrap1('UnloadDirectoryFiles');
    IsFileDropped                    = dwrap0('IsFileDropped');
    LoadDroppedFiles                 = swrap0('LoadDroppedFiles');
    UnloadDroppedFiles               = dwrap1('UnloadDroppedFiles');
    GetFileModTime                   = dwrap1('GetFileModTime');
    CompressData                     = pwrap3('CompressData');
    DecompressData                   = pwrap3('DecompressData');
    EncodeDataBase64                 = pwrap3('EncodeDataBase64');
    DecodeDataBase64                 = pwrap2('DecodeDataBase64');
    ComputeCRC32                     = dwrap2('ComputeCRC32');
    ComputeMD5                       = pwrap2('ComputeMD5');
    ComputeSHA1                      = pwrap2('ComputeSHA1');
    ComputeSHA256                    = pwrap2('ComputeSHA256');
    LoadAutomationEventList          = swrap1('LoadAutomationEventList');
    UnloadAutomationEventList        = dwrap1('UnloadAutomationEventList');
    ExportAutomationEventList        = dwrap2('ExportAutomationEventList');
    SetAutomationEventList           = dwrap1('SetAutomationEventList');
    SetAutomationEventBaseFrame      = dwrap1('SetAutomationEventBaseFrame');
    StartAutomationEventRecording    = dwrap0('StartAutomationEventRecording');
    StopAutomationEventRecording     = dwrap0('StopAutomationEventRecording');
    PlayAutomationEvent              = dwrap1('PlayAutomationEvent');
    IsKeyPressed                     = dwrap1('IsKeyPressed');
    IsKeyPressedRepeat               = dwrap1('IsKeyPressedRepeat');
    IsKeyDown                        = dwrap1('IsKeyDown');
    IsKeyReleased                    = dwrap1('IsKeyReleased');
    IsKeyUp                          = dwrap1('IsKeyUp');
    GetKeyName                       = pwrap1('GetKeyName');
    GetKeyPressed                    = dwrap0('GetKeyPressed');
    GetCharPressed                   = dwrap0('GetCharPressed');
    SetExitKey                       = dwrap1('SetExitKey');
    IsGamepadAvailable               = dwrap1('IsGamepadAvailable');
    GetGamepadName                   = pwrap1('GetGamepadName');
    IsGamepadButtonPressed           = dwrap2('IsGamepadButtonPressed');
    IsGamepadButtonDown              = dwrap2('IsGamepadButtonDown');
    IsGamepadButtonReleased          = dwrap2('IsGamepadButtonReleased');
    IsGamepadButtonUp                = dwrap2('IsGamepadButtonUp');
    GetGamepadButtonPressed          = dwrap0('GetGamepadButtonPressed');
    GetGamepadAxisCount              = dwrap1('GetGamepadAxisCount');
    GetGamepadAxisMovement           = dwrap2('GetGamepadAxisMovement');
    SetGamepadMappings               = dwrap1('SetGamepadMappings');
    SetGamepadVibration              = dwrap4('SetGamepadVibration');
    IsMouseButtonPressed             = dwrap1('IsMouseButtonPressed');
    IsMouseButtonDown                = dwrap1('IsMouseButtonDown');
    IsMouseButtonReleased            = dwrap1('IsMouseButtonReleased');
    IsMouseButtonUp                  = dwrap1('IsMouseButtonUp');
    GetMouseX                        = dwrap0('GetMouseX');
    GetMouseY                        = dwrap0('GetMouseY');
    GetMousePosition                 = swrap0('GetMousePosition');
    GetMouseDelta                    = swrap0('GetMouseDelta');
    SetMousePosition                 = dwrap2('SetMousePosition');
    SetMouseOffset                   = dwrap2('SetMouseOffset');
    SetMouseScale                    = dwrap2('SetMouseScale');
    GetMouseWheelMove                = dwrap0('GetMouseWheelMove');
    GetMouseWheelMoveV               = swrap0('GetMouseWheelMoveV');
    SetMouseCursor                   = dwrap1('SetMouseCursor');
    GetTouchX                        = dwrap0('GetTouchX');
    GetTouchY                        = dwrap0('GetTouchY');
    GetTouchPosition                 = swrap1('GetTouchPosition');
    GetTouchPointId                  = dwrap1('GetTouchPointId');
    GetTouchPointCount               = dwrap0('GetTouchPointCount');
    SetGesturesEnabled               = dwrap1('SetGesturesEnabled');
    IsGestureDetected                = dwrap1('IsGestureDetected');
    GetGestureDetected               = dwrap0('GetGestureDetected');
    GetGestureHoldDuration           = dwrap0('GetGestureHoldDuration');
    GetGestureDragVector             = swrap0('GetGestureDragVector');
    GetGestureDragAngle              = dwrap0('GetGestureDragAngle');
    GetGesturePinchVector            = swrap0('GetGesturePinchVector');
    GetGesturePinchAngle             = dwrap0('GetGesturePinchAngle');
    ProcessGestureEvent              = dwrap1('ProcessGestureEvent');
    UpdateGestures                   = dwrap0('UpdateGestures');
    UpdateCamera                     = dwrap2('UpdateCamera');
    UpdateCameraPro                  = dwrap4('UpdateCameraPro');
    SetShapesTexture                 = dwrap2('SetShapesTexture');
    GetShapesTexture                 = swrap0('GetShapesTexture');
    GetShapesTextureRectangle        = swrap0('GetShapesTextureRectangle');
    DrawPixel                        = dwrap3('DrawPixel');
    DrawPixelV                       = dwrap2('DrawPixelV');
    DrawLine                         = dwrap5('DrawLine');
    DrawLineV                        = dwrap3('DrawLineV');
    DrawLineEx                       = dwrap4('DrawLineEx');
    DrawLineStrip                    = dwrap3('DrawLineStrip');
    DrawLineBezier                   = dwrap4('DrawLineBezier');
    DrawLineDashed                   = dwrap5('DrawLineDashed');
    DrawCircle                       = dwrap4('DrawCircle');
    DrawCircleSector                 = dwrap6('DrawCircleSector');
    DrawCircleSectorLines            = dwrap6('DrawCircleSectorLines');
    DrawCircleGradient               = dwrap4('DrawCircleGradient');
    DrawCircleV                      = dwrap3('DrawCircleV');
    DrawCircleLines                  = dwrap4('DrawCircleLines');
    DrawCircleLinesV                 = dwrap3('DrawCircleLinesV');
    DrawEllipse                      = dwrap5('DrawEllipse');
    DrawEllipseV                     = dwrap4('DrawEllipseV');
    DrawEllipseLines                 = dwrap5('DrawEllipseLines');
    DrawEllipseLinesV                = dwrap4('DrawEllipseLinesV');
    DrawRing                         = dwrap7('DrawRing');
    DrawRingLines                    = dwrap7('DrawRingLines');
    DrawRectangle                    = dwrap5('DrawRectangle');
    DrawRectangleV                   = dwrap3('DrawRectangleV');
    DrawRectangleRec                 = dwrap2('DrawRectangleRec');
    DrawRectanglePro                 = dwrap4('DrawRectanglePro');
    DrawRectangleGradientV           = dwrap6('DrawRectangleGradientV');
    DrawRectangleGradientH           = dwrap6('DrawRectangleGradientH');
    DrawRectangleGradientEx          = dwrap5('DrawRectangleGradientEx');
    DrawRectangleLines               = dwrap5('DrawRectangleLines');
    DrawRectangleLinesEx             = dwrap3('DrawRectangleLinesEx');
    DrawRectangleRounded             = dwrap4('DrawRectangleRounded');
    DrawRectangleRoundedLines        = dwrap4('DrawRectangleRoundedLines');
    DrawRectangleRoundedLinesEx      = dwrap5('DrawRectangleRoundedLinesEx');
    DrawTriangle                     = dwrap4('DrawTriangle');
    DrawTriangleLines                = dwrap4('DrawTriangleLines');
    DrawTriangleFan                  = dwrap3('DrawTriangleFan');
    DrawTriangleStrip                = dwrap3('DrawTriangleStrip');
    DrawPoly                         = dwrap5('DrawPoly');
    DrawPolyLines                    = dwrap5('DrawPolyLines');
    DrawPolyLinesEx                  = dwrap6('DrawPolyLinesEx');
    DrawSplineLinear                 = dwrap4('DrawSplineLinear');
    DrawSplineBasis                  = dwrap4('DrawSplineBasis');
    DrawSplineCatmullRom             = dwrap4('DrawSplineCatmullRom');
    DrawSplineBezierQuadratic        = dwrap4('DrawSplineBezierQuadratic');
    DrawSplineBezierCubic            = dwrap4('DrawSplineBezierCubic');
    DrawSplineSegmentLinear          = dwrap4('DrawSplineSegmentLinear');
    DrawSplineSegmentBasis           = dwrap6('DrawSplineSegmentBasis');
    DrawSplineSegmentCatmullRom      = dwrap6('DrawSplineSegmentCatmullRom');
    DrawSplineSegmentBezierQuadratic = dwrap5('DrawSplineSegmentBezierQuadratic');
    DrawSplineSegmentBezierCubic     = dwrap6('DrawSplineSegmentBezierCubic');
    GetSplinePointLinear             = swrap3('GetSplinePointLinear');
    GetSplinePointBasis              = swrap5('GetSplinePointBasis');
    GetSplinePointCatmullRom         = swrap5('GetSplinePointCatmullRom');
    GetSplinePointBezierQuad         = swrap4('GetSplinePointBezierQuad');
    GetSplinePointBezierCubic        = swrap5('GetSplinePointBezierCubic');
    CheckCollisionRecs               = dwrap2('CheckCollisionRecs');
    CheckCollisionCircles            = dwrap4('CheckCollisionCircles');
    CheckCollisionCircleRec          = dwrap3('CheckCollisionCircleRec');
    CheckCollisionCircleLine         = dwrap4('CheckCollisionCircleLine');
    CheckCollisionPointRec           = dwrap2('CheckCollisionPointRec');
    CheckCollisionPointCircle        = dwrap3('CheckCollisionPointCircle');
    CheckCollisionPointTriangle      = dwrap4('CheckCollisionPointTriangle');
    CheckCollisionPointLine          = dwrap4('CheckCollisionPointLine');
    CheckCollisionPointPoly          = dwrap3('CheckCollisionPointPoly');
    CheckCollisionLines              = dwrap5('CheckCollisionLines');
    GetCollisionRec                  = swrap2('GetCollisionRec');
    LoadImage                        = swrap1('LoadImage');
    LoadImageRaw                     = swrap5('LoadImageRaw');
    LoadImageAnim                    = swrap2('LoadImageAnim');
    LoadImageAnimFromMemory          = swrap4('LoadImageAnimFromMemory');
    LoadImageFromMemory              = swrap3('LoadImageFromMemory');
    LoadImageFromTexture             = swrap1('LoadImageFromTexture');
    LoadImageFromScreen              = swrap0('LoadImageFromScreen');
    IsImageValid                     = dwrap1('IsImageValid');
    UnloadImage                      = dwrap1('UnloadImage');
    ExportImage                      = dwrap2('ExportImage');
    ExportImageToMemory              = pwrap3('ExportImageToMemory');
    ExportImageAsCode                = dwrap2('ExportImageAsCode');
    GenImageColor                    = swrap3('GenImageColor');
    GenImageGradientLinear           = swrap5('GenImageGradientLinear');
    GenImageGradientRadial           = swrap5('GenImageGradientRadial');
    GenImageGradientSquare           = swrap5('GenImageGradientSquare');
    GenImageChecked                  = swrap6('GenImageChecked');
    GenImageWhiteNoise               = swrap3('GenImageWhiteNoise');
    GenImagePerlinNoise              = swrap5('GenImagePerlinNoise');
    GenImageCellular                 = swrap3('GenImageCellular');
    GenImageText                     = swrap3('GenImageText');
    ImageCopy                        = swrap1('ImageCopy');
    ImageFromImage                   = swrap2('ImageFromImage');
    ImageFromChannel                 = swrap2('ImageFromChannel');
    ImageText                        = swrap3('ImageText');
    ImageTextEx                      = swrap5('ImageTextEx');
    ImageFormat                      = dwrap2('ImageFormat');
    ImageToPOT                       = dwrap2('ImageToPOT');
    ImageCrop                        = dwrap2('ImageCrop');
    ImageAlphaCrop                   = dwrap2('ImageAlphaCrop');
    ImageAlphaClear                  = dwrap3('ImageAlphaClear');
    ImageAlphaMask                   = dwrap2('ImageAlphaMask');
    ImageAlphaPremultiply            = dwrap1('ImageAlphaPremultiply');
    ImageBlurGaussian                = dwrap2('ImageBlurGaussian');
    ImageKernelConvolution           = dwrap3('ImageKernelConvolution');
    ImageResize                      = dwrap3('ImageResize');
    ImageResizeNN                    = dwrap3('ImageResizeNN');
    ImageResizeCanvas                = dwrap6('ImageResizeCanvas');
    ImageMipmaps                     = dwrap1('ImageMipmaps');
    ImageDither                      = dwrap5('ImageDither');
    ImageFlipVertical                = dwrap1('ImageFlipVertical');
    ImageFlipHorizontal              = dwrap1('ImageFlipHorizontal');
    ImageRotate                      = dwrap2('ImageRotate');
    ImageRotateCW                    = dwrap1('ImageRotateCW');
    ImageRotateCCW                   = dwrap1('ImageRotateCCW');
    ImageColorTint                   = dwrap2('ImageColorTint');
    ImageColorInvert                 = dwrap1('ImageColorInvert');
    ImageColorGrayscale              = dwrap1('ImageColorGrayscale');
    ImageColorContrast               = dwrap2('ImageColorContrast');
    ImageColorBrightness             = dwrap2('ImageColorBrightness');
    ImageColorReplace                = dwrap3('ImageColorReplace');
    LoadImageColors                  = qwrap1('LoadImageColors');
    LoadImagePalette                 = qwrap3('LoadImagePalette');
    UnloadImageColors                = dwrap1('UnloadImageColors');
    UnloadImagePalette               = dwrap1('UnloadImagePalette');
    GetImageAlphaBorder              = swrap2('GetImageAlphaBorder');
    GetImageColor                    = swrap3('GetImageColor');
    ImageClearBackground             = dwrap2('ImageClearBackground');
    ImageDrawPixel                   = dwrap4('ImageDrawPixel');
    ImageDrawPixelV                  = dwrap3('ImageDrawPixelV');
    ImageDrawLine                    = dwrap6('ImageDrawLine');
    ImageDrawLineV                   = dwrap4('ImageDrawLineV');
    ImageDrawLineEx                  = dwrap5('ImageDrawLineEx');
    ImageDrawCircle                  = dwrap5('ImageDrawCircle');
    ImageDrawCircleV                 = dwrap4('ImageDrawCircleV');
    ImageDrawCircleLines             = dwrap5('ImageDrawCircleLines');
    ImageDrawCircleLinesV            = dwrap4('ImageDrawCircleLinesV');
    ImageDrawRectangle               = dwrap6('ImageDrawRectangle');
    ImageDrawRectangleV              = dwrap4('ImageDrawRectangleV');
    ImageDrawRectangleRec            = dwrap3('ImageDrawRectangleRec');
    ImageDrawRectangleLines          = dwrap4('ImageDrawRectangleLines');
    ImageDrawTriangle                = dwrap5('ImageDrawTriangle');
    ImageDrawTriangleEx              = dwrap7('ImageDrawTriangleEx');
    ImageDrawTriangleLines           = dwrap5('ImageDrawTriangleLines');
    ImageDrawTriangleFan             = dwrap4('ImageDrawTriangleFan');
    ImageDrawTriangleStrip           = dwrap4('ImageDrawTriangleStrip');
    ImageDraw                        = dwrap5('ImageDraw');
    ImageDrawText                    = dwrap6('ImageDrawText');
    ImageDrawTextEx                  = dwrap7('ImageDrawTextEx');
    LoadTexture                      = swrap1('LoadTexture');
    LoadTextureFromImage             = swrap1('LoadTextureFromImage');
    LoadTextureCubemap               = swrap2('LoadTextureCubemap');
    LoadRenderTexture                = swrap2('LoadRenderTexture');
    IsTextureValid                   = dwrap1('IsTextureValid');
    UnloadTexture                    = dwrap1('UnloadTexture');
    IsRenderTextureValid             = dwrap1('IsRenderTextureValid');
    UnloadRenderTexture              = dwrap1('UnloadRenderTexture');
    UpdateTexture                    = dwrap2('UpdateTexture');
    UpdateTextureRec                 = dwrap3('UpdateTextureRec');
    GenTextureMipmaps                = dwrap1('GenTextureMipmaps');
    SetTextureFilter                 = dwrap2('SetTextureFilter');
    SetTextureWrap                   = dwrap2('SetTextureWrap');
    DrawTexture                      = dwrap4('DrawTexture');
    DrawTextureV                     = dwrap3('DrawTextureV');
    DrawTextureEx                    = dwrap5('DrawTextureEx');
    DrawTextureRec                   = dwrap4('DrawTextureRec');
    DrawTexturePro                   = dwrap6('DrawTexturePro');
    DrawTextureNPatch                = dwrap6('DrawTextureNPatch');
    ColorIsEqual                     = dwrap2('ColorIsEqual');
    Fade                             = swrap2('Fade');
    ColorToInt                       = dwrap1('ColorToInt');
    ColorNormalize                   = swrap1('ColorNormalize');
    ColorFromNormalized              = swrap1('ColorFromNormalized');
    ColorToHSV                       = swrap1('ColorToHSV');
    ColorFromHSV                     = swrap3('ColorFromHSV');
    ColorTint                        = swrap2('ColorTint');
    ColorBrightness                  = swrap2('ColorBrightness');
    ColorContrast                    = swrap2('ColorContrast');
    ColorAlpha                       = swrap2('ColorAlpha');
    ColorAlphaBlend                  = swrap3('ColorAlphaBlend');
    ColorLerp                        = swrap3('ColorLerp');
    GetColor                         = swrap1('GetColor');
    GetPixelColor                    = swrap2('GetPixelColor');
    SetPixelColor                    = dwrap3('SetPixelColor');
    GetPixelDataSize                 = dwrap3('GetPixelDataSize');
    GetFontDefault                   = swrap0('GetFontDefault');
    LoadFont                         = swrap1('LoadFont');
    LoadFontEx                       = swrap4('LoadFontEx');
    LoadFontFromImage                = swrap3('LoadFontFromImage');
    LoadFontFromMemory               = swrap6('LoadFontFromMemory');
    IsFontValid                      = dwrap1('IsFontValid');
    LoadFontData                     = qwrap7('LoadFontData');
    GenImageFontAtlas                = swrap6('GenImageFontAtlas');
    UnloadFontData                   = dwrap2('UnloadFontData');
    UnloadFont                       = dwrap1('UnloadFont');
    ExportFontAsCode                 = dwrap2('ExportFontAsCode');
    DrawFPS                          = dwrap2('DrawFPS');
    DrawText                         = dwrap5('DrawText');
    DrawTextEx                       = dwrap6('DrawTextEx');
    DrawTextPro                      = dwrap8('DrawTextPro');
    DrawTextCodepoint                = dwrap5('DrawTextCodepoint');
    DrawTextCodepoints               = dwrap7('DrawTextCodepoints');
    SetTextLineSpacing               = dwrap1('SetTextLineSpacing');
    MeasureText                      = dwrap2('MeasureText');
    MeasureTextEx                    = swrap4('MeasureTextEx');
    MeasureTextCodepoints            = swrap5('MeasureTextCodepoints');
    GetGlyphIndex                    = dwrap2('GetGlyphIndex');
    GetGlyphInfo                     = swrap2('GetGlyphInfo');
    GetGlyphAtlasRec                 = swrap2('GetGlyphAtlasRec');
    LoadUTF8                         = pwrap2('LoadUTF8');
    UnloadUTF8                       = dwrap1('UnloadUTF8');
    LoadCodepoints                   = pwrap2('LoadCodepoints');
    UnloadCodepoints                 = dwrap1('UnloadCodepoints');
    GetCodepointCount                = dwrap1('GetCodepointCount');
    GetCodepoint                     = dwrap2('GetCodepoint');
    GetCodepointNext                 = dwrap2('GetCodepointNext');
    GetCodepointPrevious             = dwrap2('GetCodepointPrevious');
    CodepointToUTF8                  = pwrap2('CodepointToUTF8');
    LoadTextLines                    = pwrap2('LoadTextLines');
    UnloadTextLines                  = dwrap2('UnloadTextLines');
    TextCopy                         = dwrap2('TextCopy');
    TextIsEqual                      = dwrap2('TextIsEqual');
    TextLength                       = dwrap1('TextLength');
    TextFormat                       = pwrap1('TextFormat');
    TextSubtext                      = pwrap3('TextSubtext');
    TextRemoveSpaces                 = pwrap1('TextRemoveSpaces');
    GetTextBetween                   = pwrap3('GetTextBetween');
    TextReplace                      = pwrap3('TextReplace');
    TextReplaceAlloc                 = pwrap3('TextReplaceAlloc');
    TextReplaceBetween               = pwrap4('TextReplaceBetween');
    TextReplaceBetweenAlloc          = pwrap4('TextReplaceBetweenAlloc');
    TextInsert                       = pwrap3('TextInsert');
    TextInsertAlloc                  = pwrap3('TextInsertAlloc');
    TextJoin                         = pwrap3('TextJoin');
    TextSplit                        = pwrap3('TextSplit');
    TextAppend                       = dwrap3('TextAppend');
    TextFindIndex                    = dwrap2('TextFindIndex');
    TextToUpper                      = pwrap1('TextToUpper');
    TextToLower                      = pwrap1('TextToLower');
    TextToPascal                     = pwrap1('TextToPascal');
    TextToSnake                      = pwrap1('TextToSnake');
    TextToCamel                      = pwrap1('TextToCamel');
    TextToInteger                    = dwrap1('TextToInteger');
    TextToFloat                      = dwrap1('TextToFloat');
    DrawLine3D                       = dwrap3('DrawLine3D');
    DrawPoint3D                      = dwrap2('DrawPoint3D');
    DrawCircle3D                     = dwrap5('DrawCircle3D');
    DrawTriangle3D                   = dwrap4('DrawTriangle3D');
    DrawTriangleStrip3D              = dwrap3('DrawTriangleStrip3D');
    DrawCube                         = dwrap5('DrawCube');
    DrawCubeV                        = dwrap3('DrawCubeV');
    DrawCubeWires                    = dwrap5('DrawCubeWires');
    DrawCubeWiresV                   = dwrap3('DrawCubeWiresV');
    DrawSphere                       = dwrap3('DrawSphere');
    DrawSphereEx                     = dwrap5('DrawSphereEx');
    DrawSphereWires                  = dwrap5('DrawSphereWires');
    DrawCylinder                     = dwrap6('DrawCylinder');
    DrawCylinderEx                   = dwrap6('DrawCylinderEx');
    DrawCylinderWires                = dwrap6('DrawCylinderWires');
    DrawCylinderWiresEx              = dwrap6('DrawCylinderWiresEx');
    DrawCapsule                      = dwrap6('DrawCapsule');
    DrawCapsuleWires                 = dwrap6('DrawCapsuleWires');
    DrawPlane                        = dwrap3('DrawPlane');
    DrawRay                          = dwrap2('DrawRay');
    DrawGrid                         = dwrap2('DrawGrid');
    LoadModel                        = swrap1('LoadModel');
    LoadModelFromMesh                = swrap1('LoadModelFromMesh');
    IsModelValid                     = dwrap1('IsModelValid');
    UnloadModel                      = dwrap1('UnloadModel');
    GetModelBoundingBox              = swrap1('GetModelBoundingBox');
    DrawModel                        = dwrap4('DrawModel');
    DrawModelEx                      = dwrap6('DrawModelEx');
    DrawModelWires                   = dwrap4('DrawModelWires');
    DrawModelWiresEx                 = dwrap6('DrawModelWiresEx');
    DrawBoundingBox                  = dwrap2('DrawBoundingBox');
    DrawBillboard                    = dwrap5('DrawBillboard');
    DrawBillboardRec                 = dwrap6('DrawBillboardRec');
    DrawBillboardPro                 = dwrap9('DrawBillboardPro');
    UploadMesh                       = dwrap2('UploadMesh');
    UpdateMeshBuffer                 = dwrap5('UpdateMeshBuffer');
    UnloadMesh                       = dwrap1('UnloadMesh');
    DrawMesh                         = dwrap3('DrawMesh');
    DrawMeshInstanced                = dwrap4('DrawMeshInstanced');
    GetMeshBoundingBox               = swrap1('GetMeshBoundingBox');
    GenMeshTangents                  = dwrap1('GenMeshTangents');
    ExportMesh                       = dwrap2('ExportMesh');
    ExportMeshAsCode                 = dwrap2('ExportMeshAsCode');
    GenMeshPoly                      = swrap2('GenMeshPoly');
    GenMeshPlane                     = swrap4('GenMeshPlane');
    GenMeshCube                      = swrap3('GenMeshCube');
    GenMeshSphere                    = swrap3('GenMeshSphere');
    GenMeshHemiSphere                = swrap3('GenMeshHemiSphere');
    GenMeshCylinder                  = swrap3('GenMeshCylinder');
    GenMeshCone                      = swrap3('GenMeshCone');
    GenMeshTorus                     = swrap4('GenMeshTorus');
    GenMeshKnot                      = swrap4('GenMeshKnot');
    GenMeshHeightmap                 = swrap2('GenMeshHeightmap');
    GenMeshCubicmap                  = swrap2('GenMeshCubicmap');
    LoadMaterials                    = qwrap2('LoadMaterials');
    LoadMaterialDefault              = swrap0('LoadMaterialDefault');
    IsMaterialValid                  = dwrap1('IsMaterialValid');
    UnloadMaterial                   = dwrap1('UnloadMaterial');
    SetMaterialTexture               = dwrap3('SetMaterialTexture');
    SetModelMeshMaterial             = dwrap3('SetModelMeshMaterial');
    LoadModelAnimations              = qwrap2('LoadModelAnimations');
    UpdateModelAnimation             = dwrap3('UpdateModelAnimation');
    UpdateModelAnimationEx           = dwrap6('UpdateModelAnimationEx');
    UnloadModelAnimations            = dwrap2('UnloadModelAnimations');
    IsModelAnimationValid            = dwrap2('IsModelAnimationValid');
    CheckCollisionSpheres            = dwrap4('CheckCollisionSpheres');
    CheckCollisionBoxes              = dwrap2('CheckCollisionBoxes');
    CheckCollisionBoxSphere          = dwrap3('CheckCollisionBoxSphere');
    GetRayCollisionSphere            = swrap3('GetRayCollisionSphere');
    GetRayCollisionBox               = swrap2('GetRayCollisionBox');
    GetRayCollisionMesh              = swrap3('GetRayCollisionMesh');
    GetRayCollisionTriangle          = swrap4('GetRayCollisionTriangle');
    GetRayCollisionQuad              = swrap5('GetRayCollisionQuad');
  }
}