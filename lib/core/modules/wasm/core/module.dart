part of '../../../raylib_dartified_web.dart';

class RaylibCore extends RaylibModuleWasm {  
  /// Initialize window and OpenGL context
  late final JSFunction InitWindow;
  /// Close window and unload OpenGL context
  late final JSFunction CloseWindow;
  /// Check if application should close ([KeyboardKey.KEY_ESCAPE] pressed or windows close icon clicked)
  late final JSFunction WindowShouldClose;
  /// Check if window has been initialized successfully
  late final JSFunction IsWindowReady;
  /// Check if window is currently fullscreen
  late final JSFunction IsWindowFullscreen;
  /// Check if window is currently hidden
  late final JSFunction IsWindowHidden;
  /// Check if window is currently minimized
  late final JSFunction IsWindowMinimized;
  /// Check if window is currently maximized
  late final JSFunction IsWindowMaximized;
  /// Check if window is currently focused
  late final JSFunction IsWindowFocused;
  /// Check if window has been resized last frame
  late final JSFunction IsWindowResized;
  /// Check if one specific window flag is enabled
  late final JSFunction IsWindowState;
  /// Set window configuration state using flags
  late final JSFunction SetWindowState;
  /// Clear window configuration state flags
  late final JSFunction ClearWindowState;
  /// Toggle window state: fullscreen/windowed, resizes monitor to match window resolution
  late final JSFunction ToggleFullscreen;
  /// Toggle window state: borderless windowed, resizes window to match monitor resolution
  late final JSFunction ToggleBorderlessWindowed;
  /// Set window state: maximized, if [ConfigFlags.FLAG_WINDOW_RESIZABLE]
  late final JSFunction MaximizeWindow;
  /// Set window state: minimized, if [ConfigFlags.FLAG_WINDOW_RESIZABLE]
  late final JSFunction MinimizeWindow;
  /// Set window state: not minimized/maximized
  late final JSFunction RestoreWindow;
  /// Set icon for window (single image, RGBA 32bit)
  late final JSFunction SetWindowIcon;
  /// Set icon for window (multiple images, RGBA 32bit)
  late final JSFunction SetWindowIcons;
  /// Set title for window
  late final JSFunction SetWindowTitle;
  /// Set window position on screen
  late final JSFunction SetWindowPosition;
  /// Set monitor for the current window
  late final JSFunction SetWindowMonitor;
  /// Set window minimum dimensions (for [ConfigFlags.FLAG_WINDOW_RESIZABLE])
  late final JSFunction SetWindowMinSize;
  /// Set window maximum dimensions (for [ConfigFlags.FLAG_WINDOW_RESIZABLE])
  late final JSFunction SetWindowMaxSize;
  /// Set window dimensions
  late final JSFunction SetWindowSize;
  /// Set window opacity [0.0..1.0]
  late final JSFunction SetWindowOpacity;
  /// Set window focused
  late final JSFunction SetWindowFocused;
  /// Get native window handle
  late final JSFunction GetWindowHandle;
  /// Get current screen width
  late final JSFunction GetScreenWidth;
  /// Get current screen height
  late final JSFunction GetScreenHeight;
  /// Get current render width (it considers HiDPI)
  late final JSFunction GetRenderWidth;
  /// Get current render height (it considers HiDPI)
  late final JSFunction GetRenderHeight;
  /// Get number of connected monitors
  /// 
  /// **[!] Not implemented on WASM**
  late final JSFunction GetMonitorCount;
  /// Get current monitor where window is placed
  /// 
  /// **[!] Not implemented on WASM**
  late final JSFunction GetCurrentMonitor;
  /// Get specified monitor position
  /// 
  /// **[!] Not implemented on WASM**
  late final JSFunction GetMonitorPosition;
  /// Get specified monitor width (current video mode used by monitor)
  late final JSFunction GetMonitorWidth;
  /// Get specified monitor height (current video mode used by monitor)
  late final JSFunction GetMonitorHeight;
  /// Get specified monitor physical width in millimetres
  /// 
  /// **[!] Not implemented on WASM**
  late final JSFunction GetMonitorPhysicalWidth;
  /// Get specified monitor physical height in millimetres
  /// 
  /// **[!] Not implemented on WASM**
  late final JSFunction GetMonitorPhysicalHeight;
  /// Get specified monitor refresh rate
  /// 
  /// **[!] Not implemented on WASM**
  late final JSFunction GetMonitorRefreshRate;
  /// Get window position XY on monitor
  late final JSFunction GetWindowPosition;
  /// Get window scale DPI factor
  late final JSFunction GetWindowScaleDPI;
  /// Get the human-readable, UTF-8 encoded name of the specified monitor
  /// 
  /// **[!] Not implemented on WASM**
  late final JSFunction GetMonitorName;
  /// Set clipboard text content
  late final JSFunction SetClipboardText;
  /// Get clipboard text content
  late final JSFunction GetClipboardText;
  /// Get clipboard image content
  late final JSFunction GetClipboardImage;
  /// Enable waiting for events on EndDrawing(), no automatic event polling
  late final JSFunction EnableEventWaiting;
  /// Disable waiting for events on EndDrawing(), automatic events polling
  late final JSFunction DisableEventWaiting;
  /// Shows cursor
  late final JSFunction ShowCursor;
  /// Hides cursor
  late final JSFunction HideCursor;
  /// Check if cursor is not visible
  late final JSFunction IsCursorHidden;
  /// Enables cursor (unlock cursor)
  late final JSFunction EnableCursor;
  /// Disables cursor (lock cursor)
  late final JSFunction DisableCursor;
  /// Check if cursor is on the screen
  late final JSFunction IsCursorOnScreen;
  /// Set background color (framebuffer clear color)
  late final JSFunction ClearBackground;
  /// Setup canvas (framebuffer) to start drawing
  late final JSFunction BeginDrawing;
  /// End canvas drawing and swap buffers (double buffering)
  late final JSFunction EndDrawing;
  /// Begin 2D mode with custom camera (2D)
  late final JSFunction BeginMode2D;
  /// Ends 2D mode with custom camera
  late final JSFunction EndMode2D;
  /// Begin 3D mode with custom camera (3D)
  late final JSFunction BeginMode3D;
  /// Ends 3D mode and returns to default 2D orthographic mode
  late final JSFunction EndMode3D;
  /// Begin drawing to render texture
  late final JSFunction BeginTextureMode;
  /// Ends drawing to render texture
  late final JSFunction EndTextureMode;
  /// Begin custom shader drawing
  late final JSFunction BeginShaderMode;
  /// End custom shader drawing (use default shader)
  late final JSFunction EndShaderMode;
  /// Begin blending mode (alpha, additive, multiplied, subtract, custom)
  late final JSFunction BeginBlendMode;
  /// End blending mode (reset to default: alpha blending)
  late final JSFunction EndBlendMode;
  /// Begin scissor mode (define screen area for following drawing)
  late final JSFunction BeginScissorMode;
  /// End scissor mode
  late final JSFunction EndScissorMode;
  /// Begin stereo rendering (requires VR simulator)
  late final JSFunction BeginVrStereoMode;
  /// End stereo rendering (requires VR simulator)
  late final JSFunction EndVrStereoMode;
  /// Load VR stereo config for VR simulator device parameters
  late final JSFunction LoadVrStereoConfig;
  /// Unload VR stereo config
  late final JSFunction UnloadVrStereoConfig;
  /// Load shader from files and bind default locations
  late final JSFunction LoadShader;
  /// Load shader from code strings and bind default locations
  late final JSFunction LoadShaderFromMemory;
  /// Check if a shader is valid (loaded on GPU)
  late final JSFunction IsShaderValid;
  /// Get shader uniform location
  late final JSFunction GetShaderLocation;
  /// Get shader attribute location
  late final JSFunction GetShaderLocationAttrib;
  /// Set shader uniform value
  late final JSFunction SetShaderValue;
  /// Set shader uniform value vector
  late final JSFunction SetShaderValueV;
  /// Set shader uniform value (matrix 4x4)
  late final JSFunction SetShaderValueMatrix;
  /// Set shader uniform value for texture (sampler2d)
  late final JSFunction SetShaderValueTexture;
  /// Unload shader from GPU memory (VRAM)
  late final JSFunction UnloadShader;
  /// Get a ray trace from screen position (i.e mouse)
  late final JSFunction GetScreenToWorldRay;
  /// Get a ray trace from screen position (i.e mouse) in a viewport
  late final JSFunction GetScreenToWorldRayEx;
  /// Get the screen space position for a 3d world space position
  late final JSFunction GetWorldToScreen;
  /// Get size position for a 3d world space position
  late final JSFunction GetWorldToScreenEx;
  /// Get the screen space position for a 2d camera world space position
  late final JSFunction GetWorldToScreen2D;
  /// Get the world space position for a 2d camera screen space position
  late final JSFunction GetScreenToWorld2D;
  /// Get camera transform matrix (view matrix)
  late final JSFunction GetCameraMatrix;
  /// Get camera 2d transform matrix
  late final JSFunction GetCameraMatrix2D;
  /// Set target FPS (maximum)
  late final JSFunction SetTargetFPS;
  /// Get time in seconds for last frame drawn (delta time)
  late final JSFunction GetFrameTime;
  /// Get elapsed time in seconds since InitWindow()
  late final JSFunction GetTime;
  /// Get current FPS
  late final JSFunction GetFPS;
  /// Swap back buffer with front buffer (screen drawing)
  late final JSFunction SwapScreenBuffer;
  /// Register all input events
  late final JSFunction PollInputEvents;
  /// Wait for some time (halt program execution)
  late final JSFunction WaitTime;
  /// Set the seed for the random number generator
  late final JSFunction SetRandomSeed;
  /// Get a random value between min and max (both included)
  late final JSFunction GetRandomValue;
  /// Load random values sequence, no values repeated, min and max included
  late final JSFunction LoadRandomSequence;
  /// Unload random values sequence
  late final JSFunction UnloadRandomSequence;
  /// Takes a screenshot of current screen (filename extension defines format)
  late final JSFunction TakeScreenshot;
  /// Setup init configuration flags (view [ConfigFlags])
  late final JSFunction SetConfigFlags;
  /// Open URL with default system browser (if available)
  late final JSFunction OpenURL;
  /// Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
  late final JSFunction TraceLog;
  /// Set the current threshold (minimum) log level
  late final JSFunction SetTraceLogLevel;
  /// Set custom trace log
  late final JSFunction SetTraceLogCallback;
  /// Set custom file binary data loader
  late final JSFunction SetLoadFileDataCallback;
  /// Set custom file binary data saver
  late final JSFunction SetSaveFileDataCallback;
  /// Set custom file text data loader
  late final JSFunction SetLoadFileTextCallback;
  /// Set custom file text data saver
  late final JSFunction SetSaveFileTextCallback;
  /// Load file data as byte array (read)
  late final JSFunction LoadFileData;
  /// Unload file data allocated by LoadFileData()
  late final JSFunction UnloadFileData;
  /// Save data to file from byte array (write), returns true on success
  late final JSFunction SaveFileData;
  /// Export data to code (.h), returns true on success
  late final JSFunction ExportDataAsCode;
  /// Load text data from file (read)
  late final JSFunction LoadFileText;
  /// Unload file text data allocated by LoadFileText()
  late final JSFunction UnloadFileText;
  /// Save text data to file (write), returns true on success
  late final JSFunction SaveFileText;
  /// Rename file (if exists)
  late final JSFunction FileRename;
  /// Remove file (if exists)
  late final JSFunction FileRemove;
  /// Copy file from one path to another, dstPath created if it doesn't exist
  late final JSFunction FileCopy;
  /// Move file from one directory to another, dstPath created if it doesn't exist
  late final JSFunction FileMove;
  /// Replace text in an existing file
  late final JSFunction FileTextReplace;
  /// Find text in existing file
  late final JSFunction FileTextFindIndex;
  /// Check if file exists
  late final JSFunction FileExists;
  /// Check if a directory path exists
  late final JSFunction DirectoryExists;
  /// Check file extension (including point: .png, .wav)
  late final JSFunction IsFileExtension;
  /// Get file length in bytes
  late final JSFunction GetFileLength;
  /// Get extension for a filename (includes dot: '.png')
  late final JSFunction GetFileExtension;
  /// Get filename for a path string
  late final JSFunction GetFileName;
  /// Get filename without extension
  late final JSFunction GetFileNameWithoutExt;
  /// Get the file count in a directory
  late final JSFunction GetDirectoryFileCount;
  /// Get the file count in a directory with extension filtering and recursive directory scan.
  /// 
  /// Use 'DIR' in the filter string to include directories in the result
  late final JSFunction GetDirectoryFileCountEx;
  /// Get full path for a given fileName with path
  late final JSFunction GetDirectoryPath;
  /// Get previous directory path for a given path
  late final JSFunction GetPrevDirectoryPath;
  /// Get current working directory
  late final JSFunction GetWorkingDirectory;
  /// Get the directory of the running application
  late final JSFunction GetApplicationDirectory;
  /// Create directories (including full path requested), returns 0 on success
  late final JSFunction MakeDirectory;
  /// Change working directory, return true on success
  late final JSFunction ChangeDirectory;
  /// Check if a given path is a file or a directory
  late final JSFunction IsPathFile;
  /// Check if fileName is valid for the platform/OS
  late final JSFunction IsFileNameValid;
  /// Load directory filepaths
  late final JSFunction LoadDirectoryFiles;
  /// Load directory filepaths with extension filtering and recursive directory scan.
  /// 
  /// Use 'DIR' in the filter string to include directories in the result
  late final JSFunction LoadDirectoryFilesEx;
  /// Unload filepaths
  late final JSFunction UnloadDirectoryFiles;
  /// Check if a file has been dropped into window
  late final JSFunction IsFileDropped;
  /// Load dropped filepaths
  late final JSFunction LoadDroppedFiles;
  /// Unload dropped filepaths
  late final JSFunction UnloadDroppedFiles;
  /// Get file modification time (last write time)
  late final JSFunction GetFileModTime;
  /// Compress data (DEFLATE algorithm)
  late final JSFunction CompressData;
  /// Decompress data (DEFLATE algorithm)
  late final JSFunction DecompressData;
  /// Encode data to Base64 string
  late final JSFunction EncodeDataBase64;
  /// Decode Base64 string data
  late final JSFunction DecodeDataBase64;
  /// Compute CRC32 hash code
  late final JSFunction ComputeCRC32;
  /// Compute MD5 hash code
  late final JSFunction ComputeMD5;
  /// Compute SHA1 hash code
  late final JSFunction ComputeSHA1;
  /// Compute SHA256 hash code
  late final JSFunction ComputeSHA256;
  /// Load automation events list from file, NULL for empty list
  late final JSFunction LoadAutomationEventList;
  /// Unload automation events list from file
  late final JSFunction UnloadAutomationEventList;
  /// Export automation events list as text file
  late final JSFunction ExportAutomationEventList;
  /// Set automation event list to record to
  late final JSFunction SetAutomationEventList;
  /// Set automation event internal base frame to start recording
  late final JSFunction SetAutomationEventBaseFrame;
  /// Start recording automation events (AutomationEventList must be set)
  late final JSFunction StartAutomationEventRecording;
  /// Stop recording automation events
  late final JSFunction StopAutomationEventRecording;
  /// Play a recorded automation event
  late final JSFunction PlayAutomationEvent;
  /// Check if a key has been pressed once
  late final JSFunction IsKeyPressed;
  /// Check if a key has been pressed again
  late final JSFunction IsKeyPressedRepeat;
  /// Check if a key is being pressed
  late final JSFunction IsKeyDown;
  /// Check if a key has been released once
  late final JSFunction IsKeyReleased;
  /// Check if a key is NOT being pressed
  late final JSFunction IsKeyUp;
  /// Get name of a QWERTY key on the current keyboard layout (eg returns string 'q' for KEY_A on an AZERTY keyboard)
  /// 
  /// **[!] Not implemented on WASM**
  late final JSFunction GetKeyName;
  /// Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
  late final JSFunction GetKeyPressed;
  /// Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
  late final JSFunction GetCharPressed;
  /// Set a custom key to exit program (default is ESC)
  late final JSFunction SetExitKey;
  /// Check if a gamepad is available
  late final JSFunction IsGamepadAvailable;
  /// Get gamepad internal name id
  late final JSFunction GetGamepadName;
  /// Check if a gamepad button has been pressed once
  late final JSFunction IsGamepadButtonPressed;
  /// Check if a gamepad button is being pressed
  late final JSFunction IsGamepadButtonDown;
  /// Check if a gamepad button has been released once
  late final JSFunction IsGamepadButtonReleased;
  /// Check if a gamepad button is NOT being pressed
  late final JSFunction IsGamepadButtonUp;
  /// Get the last gamepad button pressed
  late final JSFunction GetGamepadButtonPressed;
  /// Get gamepad axis count for a gamepad
  late final JSFunction GetGamepadAxisCount;
  /// Get axis movement value for a gamepad axis
  late final JSFunction GetGamepadAxisMovement;
  /// Set internal gamepad mappings (SDL_GameControllerDB)
  late final JSFunction SetGamepadMappings;
  /// Set gamepad vibration for both motors (duration in seconds)
  late final JSFunction SetGamepadVibration;
  /// Check if a mouse button has been pressed once
  late final JSFunction IsMouseButtonPressed;
  /// Check if a mouse button is being pressed
  late final JSFunction IsMouseButtonDown;
  /// Check if a mouse button has been released once
  late final JSFunction IsMouseButtonReleased;
  /// Check if a mouse button is NOT being pressed
  late final JSFunction IsMouseButtonUp;
  /// Get mouse position X
  late final JSFunction GetMouseX;
  /// Get mouse position Y
  late final JSFunction GetMouseY;
  /// Get mouse position XY
  late final JSFunction GetMousePosition;
  /// Get mouse delta between frames
  late final JSFunction GetMouseDelta;
  /// Set mouse position XY
  late final JSFunction SetMousePosition;
  /// Set mouse offset
  late final JSFunction SetMouseOffset;
  /// Set mouse scaling
  late final JSFunction SetMouseScale;
  /// Get mouse wheel movement for X or Y, whichever is larger
  late final JSFunction GetMouseWheelMove;
  /// Get mouse wheel movement for both X and Y
  late final JSFunction GetMouseWheelMoveV;
  /// Set mouse cursor
  late final JSFunction SetMouseCursor;
  /// Get touch position X for touch point 0 (relative to screen size)
  late final JSFunction GetTouchX;
  /// Get touch position Y for touch point 0 (relative to screen size)
  late final JSFunction GetTouchY;
  /// Get touch position XY for a touch point index (relative to screen size)
  late final JSFunction GetTouchPosition;
  /// Get touch point identifier for given index
  late final JSFunction GetTouchPointId;
  /// Get number of touch points
  late final JSFunction GetTouchPointCount;
  /// Enable a set of gestures using flags [Gesture]
  late final JSFunction SetGesturesEnabled;
  /// Check if a gesture have been detected
  late final JSFunction IsGestureDetected;
  /// Get latest detected gesture
  late final JSFunction GetGestureDetected;
  /// Get gesture hold time in seconds
  late final JSFunction GetGestureHoldDuration;
  /// Get gesture drag vector
  late final JSFunction GetGestureDragVector;
  /// Get gesture drag angle
  late final JSFunction GetGestureDragAngle;
  /// Get gesture pinch delta
  late final JSFunction GetGesturePinchVector;
  /// Get gesture pinch angle
  late final JSFunction GetGesturePinchAngle;
  /// Process gesture event and translate it into gestures
  late final JSFunction ProcessGestureEvent;
  /// Update gestures detected (must be called every frame)
  late final JSFunction UpdateGestures;
  /// Update camera position for selected mode
  late final JSFunction UpdateCamera;
  /// Update camera movement/rotation
  late final JSFunction UpdateCameraPro;
  /// Set texture and rectangle to be used on shapes drawing
  late final JSFunction SetShapesTexture;
  /// Get texture that is used for shapes drawing
  late final JSFunction GetShapesTexture;
  /// Get texture source rectangle that is used for shapes drawing
  late final JSFunction GetShapesTextureRectangle;
  /// Draw a pixel using geometry [Can be slow, use with care]
  late final JSFunction DrawPixel;
  /// Draw a pixel using geometry (Vector version) [Can be slow, use with care]
  late final JSFunction DrawPixelV;
  /// Draw a line
  late final JSFunction DrawLine;
  /// Draw a line (using gl lines)
  late final JSFunction DrawLineV;
  /// Draw a line (using triangles/quads)
  late final JSFunction DrawLineEx;
  /// Draw lines sequence (using gl lines)
  late final JSFunction DrawLineStrip;
  /// Draw line segment cubic-bezier in-out interpolation
  late final JSFunction DrawLineBezier;
  /// Draw a dashed line
  late final JSFunction DrawLineDashed;
  /// Draw a color-filled circle
  late final JSFunction DrawCircle;
  /// Draw a piece of a circle
  late final JSFunction DrawCircleSector;
  /// Draw circle sector outline
  late final JSFunction DrawCircleSectorLines;
  /// Draw a gradient-filled circle
  late final JSFunction DrawCircleGradient;
  /// Draw a color-filled circle (Vector version)
  late final JSFunction DrawCircleV;
  /// Draw circle outline
  late final JSFunction DrawCircleLines;
  /// Draw circle outline (Vector version)
  late final JSFunction DrawCircleLinesV;
  /// Draw ellipse
  late final JSFunction DrawEllipse;
  /// Draw ellipse (Vector version)
  late final JSFunction DrawEllipseV;
  /// Draw ellipse outline
  late final JSFunction DrawEllipseLines;
  /// Draw ellipse outline (Vector version)
  late final JSFunction DrawEllipseLinesV;
  /// Draw ring
  late final JSFunction DrawRing;
  /// Draw ring outline
  late final JSFunction DrawRingLines;
  /// Draw a color-filled rectangle
  late final JSFunction DrawRectangle;
  /// Draw a color-filled rectangle (Vector version)
  late final JSFunction DrawRectangleV;
  /// Draw a color-filled rectangle
  late final JSFunction DrawRectangleRec;
  /// Draw a color-filled rectangle with pro parameters
  late final JSFunction DrawRectanglePro;
  /// Draw a vertical-gradient-filled rectangle
  late final JSFunction DrawRectangleGradientV;
  /// Draw a horizontal-gradient-filled rectangle
  late final JSFunction DrawRectangleGradientH;
  /// Draw a gradient-filled rectangle with custom vertex colors
  late final JSFunction DrawRectangleGradientEx;
  /// Draw rectangle outline
  late final JSFunction DrawRectangleLines;
  /// Draw rectangle outline with extended parameters
  late final JSFunction DrawRectangleLinesEx;
  /// Draw rectangle with rounded edges
  late final JSFunction DrawRectangleRounded;
  /// Draw rectangle lines with rounded edges
  late final JSFunction DrawRectangleRoundedLines;
  /// Draw rectangle with rounded edges outline
  late final JSFunction DrawRectangleRoundedLinesEx;
  /// Draw a color-filled triangle (vertex in counter-clockwise order!)
  late final JSFunction DrawTriangle;
  /// Draw triangle outline (vertex in counter-clockwise order!)
  late final JSFunction DrawTriangleLines;
  /// Draw a triangle fan defined by points (first vertex is the center)
  late final JSFunction DrawTriangleFan;
  /// Draw a triangle strip defined by points
  late final JSFunction DrawTriangleStrip;
  /// Draw a regular polygon (Vector version)
  late final JSFunction DrawPoly;
  /// Draw a polygon outline of n sides
  late final JSFunction DrawPolyLines;
  /// Draw a polygon outline of n sides with extended parameters
  late final JSFunction DrawPolyLinesEx;
  /// Draw spline: Linear, minimum 2 points
  late final JSFunction DrawSplineLinear;
  /// Draw spline: B-Spline, minimum 4 points
  late final JSFunction DrawSplineBasis;
  /// Draw spline: Catmull-Rom, minimum 4 points
  late final JSFunction DrawSplineCatmullRom;
  /// Draw spline: Quadratic Bezier, minimum 3 points (1 control point): [p1, c2, p3, c4...]
  late final JSFunction DrawSplineBezierQuadratic;
  /// Draw spline: Cubic Bezier, minimum 4 points (2 control points): [p1, c2, c3, p4, c5, c6...]
  late final JSFunction DrawSplineBezierCubic;
  /// Draw spline segment: Linear, 2 points
  late final JSFunction DrawSplineSegmentLinear;
  /// Draw spline segment: B-Spline, 4 points
  late final JSFunction DrawSplineSegmentBasis;
  /// Draw spline segment: Catmull-Rom, 4 points
  late final JSFunction DrawSplineSegmentCatmullRom;
  /// Draw spline segment: Quadratic Bezier, 2 points, 1 control point
  late final JSFunction DrawSplineSegmentBezierQuadratic;
  /// Draw spline segment: Cubic Bezier, 2 points, 2 control points
  late final JSFunction DrawSplineSegmentBezierCubic;
  /// Get (evaluate) spline point: Linear
  late final JSFunction GetSplinePointLinear;
  /// Get (evaluate) spline point: B-Spline
  late final JSFunction GetSplinePointBasis;
  /// Get (evaluate) spline point: Catmull-Rom
  late final JSFunction GetSplinePointCatmullRom;
  /// Get (evaluate) spline point: Quadratic Bezier
  late final JSFunction GetSplinePointBezierQuad;
  /// Get (evaluate) spline point: Cubic Bezier
  late final JSFunction GetSplinePointBezierCubic;
  /// Check collision between two rectangles
  late final JSFunction CheckCollisionRecs;
  /// Check collision between two circles
  late final JSFunction CheckCollisionCircles;
  /// Check collision between circle and rectangle
  late final JSFunction CheckCollisionCircleRec;
  /// Check if circle collides with a line created betweeen two points [p1] and [p2]
  late final JSFunction CheckCollisionCircleLine;
  /// Check if point is inside rectangle
  late final JSFunction CheckCollisionPointRec;
  /// Check if point is inside circle
  late final JSFunction CheckCollisionPointCircle;
  /// Check if point is inside a triangle
  late final JSFunction CheckCollisionPointTriangle;
  /// Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
  late final JSFunction CheckCollisionPointLine;
  /// Check if point is within a polygon described by array of vertices
  late final JSFunction CheckCollisionPointPoly;
  /// Check the collision between two lines defined by two points each, returns collision point by reference
  late final JSFunction CheckCollisionLines;
  /// Get collision rectangle for two rectangles collision
  late final JSFunction GetCollisionRec;
  /// Load image from file into CPU memory (RAM)
  late final JSFunction LoadImage;
  /// Load image from RAW file data
  late final JSFunction LoadImageRaw;
  /// Load image sequence from file (frames appended to image.data)
  late final JSFunction LoadImageAnim;
  /// Load image sequence from memory buffer
  late final JSFunction LoadImageAnimFromMemory;
  /// Load image from memory buffer, fileType refers to extension: i.e. '.png'
  late final JSFunction LoadImageFromMemory;
  /// Load image from GPU texture data
  late final JSFunction LoadImageFromTexture;
  /// Load image from screen buffer and (screenshot)
  late final JSFunction LoadImageFromScreen;
  /// Check if an image is valid (data and parameters)
  late final JSFunction IsImageValid;
  /// Unload image from CPU memory (RAM)
  late final JSFunction UnloadImage;
  /// Export image data to file, returns true on success
  late final JSFunction ExportImage;
  /// Export image to memory buffer
  late final JSFunction ExportImageToMemory;
  /// Export image as code file defining an array of bytes, returns true on success
  late final JSFunction ExportImageAsCode;
  /// Generate image: plain color
  late final JSFunction GenImageColor;
  /// Generate image: linear gradient, direction in degrees [0..360], 0=Vertical gradient
  late final JSFunction GenImageGradientLinear;
  /// Generate image: radial gradient
  late final JSFunction GenImageGradientRadial;
  /// Generate image: square gradient
  late final JSFunction GenImageGradientSquare;
  /// Generate image: checked
  late final JSFunction GenImageChecked;
  /// Generate image: white noise
  late final JSFunction GenImageWhiteNoise;
  /// Generate image: perlin noise
  late final JSFunction GenImagePerlinNoise;
  /// Generate image: cellular algorithm, bigger tileSize means bigger cells
  late final JSFunction GenImageCellular;
  /// Generate image: grayscale image from text data
  late final JSFunction GenImageText;
  /// Create an image duplicate (useful for transformations)
  late final JSFunction ImageCopy;
  /// Create an image from another image piece
  late final JSFunction ImageFromImage;
  /// Create an image from a selected channel of another image (GRAYSCALE)
  late final JSFunction ImageFromChannel;
  /// Create an image from text (default font)
  late final JSFunction ImageText;
  /// Create an image from text (custom sprite font)
  late final JSFunction ImageTextEx;
  /// Convert image data to desired format
  late final JSFunction ImageFormat;
  /// Convert image to POT (power-of-two)
  late final JSFunction ImageToPOT;
  /// Crop an image to a defined rectangle
  late final JSFunction ImageCrop;
  /// Crop image depending on alpha value
  late final JSFunction ImageAlphaCrop;
  /// Clear alpha channel to desired color
  late final JSFunction ImageAlphaClear;
  /// Apply alpha mask to image
  late final JSFunction ImageAlphaMask;
  /// Premultiply alpha channel
  late final JSFunction ImageAlphaPremultiply;
  /// Apply Gaussian blur using a box blur approximation
  late final JSFunction ImageBlurGaussian;
  /// Apply custom square convolution kernel to image
  late final JSFunction ImageKernelConvolution;
  /// Resize image (Bicubic scaling algorithm)
  late final JSFunction ImageResize;
  /// Resize image (Nearest-Neighbor scaling algorithm)
  late final JSFunction ImageResizeNN;
  /// Resize canvas and fill with color
  late final JSFunction ImageResizeCanvas;
  /// Compute all mipmap levels for a provided image
  late final JSFunction ImageMipmaps;
  /// Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
  late final JSFunction ImageDither;
  /// Flip image vertically
  late final JSFunction ImageFlipVertical;
  /// Flip image horizontally
  late final JSFunction ImageFlipHorizontal;
  /// Rotate image by input angle in degrees (-359 to 359)
  late final JSFunction ImageRotate;
  /// Rotate image clockwise 90deg
  late final JSFunction ImageRotateCW;
  /// Rotate image counter-clockwise 90deg
  late final JSFunction ImageRotateCCW;
  /// Modify image color: tint
  late final JSFunction ImageColorTint;
  /// Modify image color: invert
  late final JSFunction ImageColorInvert;
  /// Modify image color: grayscale
  late final JSFunction ImageColorGrayscale;
  /// Modify image color: contrast (-100 to 100)
  late final JSFunction ImageColorContrast;
  /// Modify image color: brightness (-255 to 255)
  late final JSFunction ImageColorBrightness;
  /// Modify image color: replace color
  late final JSFunction ImageColorReplace;
  /// Load color data from image as a Color array (RGBA - 32bit)
  late final JSFunction LoadImageColors;
  /// Load colors palette from image as a Color array (RGBA - 32bit)
  late final JSFunction LoadImagePalette;
  /// Unload color data loaded with LoadImageColors()
  late final JSFunction UnloadImageColors;
  /// Unload colors palette loaded with LoadImagePalette()
  late final JSFunction UnloadImagePalette;
  /// Get image alpha border rectangle
  late final JSFunction GetImageAlphaBorder;
  /// Get image pixel color at (x, y) position
  late final JSFunction GetImageColor;
  /// Clear image background with given color
  late final JSFunction ImageClearBackground;
  /// Draw pixel within an image
  late final JSFunction ImageDrawPixel;
  /// Draw pixel within an image (Vector version)
  late final JSFunction ImageDrawPixelV;
  /// Draw line within an image
  late final JSFunction ImageDrawLine;
  /// Draw line within an image (Vector version)
  late final JSFunction ImageDrawLineV;
  /// Draw a line defining thickness within an image
  late final JSFunction ImageDrawLineEx;
  /// Draw a filled circle within an image
  late final JSFunction ImageDrawCircle;
  /// Draw a filled circle within an image (Vector version)
  late final JSFunction ImageDrawCircleV;
  /// Draw circle outline within an image
  late final JSFunction ImageDrawCircleLines;
  /// Draw circle outline within an image (Vector version)
  late final JSFunction ImageDrawCircleLinesV;
  /// Draw rectangle within an image
  late final JSFunction ImageDrawRectangle;
  /// Draw rectangle within an image (Vector version)
  late final JSFunction ImageDrawRectangleV;
  /// Draw rectangle within an image
  late final JSFunction ImageDrawRectangleRec;
  /// Draw rectangle lines within an image
  late final JSFunction ImageDrawRectangleLines;
  /// Draw triangle within an image
  late final JSFunction ImageDrawTriangle;
  /// Draw triangle with interpolated colors within an image
  late final JSFunction ImageDrawTriangleEx;
  /// Draw triangle outline within an image
  late final JSFunction ImageDrawTriangleLines;
  /// Draw a triangle fan defined by points within an image (first vertex is the center)
  late final JSFunction ImageDrawTriangleFan;
  /// Draw a triangle strip defined by points within an image
  late final JSFunction ImageDrawTriangleStrip;
  /// Draw a source image within a destination image (tint applied to source)
  late final JSFunction ImageDraw;
  /// Draw text (using default font) within an image (destination)
  late final JSFunction ImageDrawText;
  /// Draw text (custom sprite font) within an image (destination)
  late final JSFunction ImageDrawTextEx;
  /// Load texture from file into GPU memory (VRAM)
  late final JSFunction LoadTexture;
  /// Load texture from image data
  late final JSFunction LoadTextureFromImage;
  /// Load cubemap from image, multiple image cubemap layouts supported
  late final JSFunction LoadTextureCubemap;
  /// Load texture for rendering (framebuffer)
  late final JSFunction LoadRenderTexture;
  /// Check if a texture is valid (loaded in GPU)
  late final JSFunction IsTextureValid;
  /// Unload texture from GPU memory (VRAM)
  late final JSFunction UnloadTexture;
  /// Check if a render texture is valid (loaded in GPU)
  late final JSFunction IsRenderTextureValid;
  /// Unload render texture from GPU memory (VRAM)
  late final JSFunction UnloadRenderTexture;
  /// Update GPU texture with new data
  late final JSFunction UpdateTexture;
  /// Update GPU texture rectangle with new data
  late final JSFunction UpdateTextureRec;
  /// Generate GPU mipmaps for a texture
  late final JSFunction GenTextureMipmaps;
  /// Set texture scaling filter mode
  late final JSFunction SetTextureFilter;
  /// Set texture wrapping mode
  late final JSFunction SetTextureWrap;
  /// Draw a Texture2D
  late final JSFunction DrawTexture;
  /// Draw a Texture2D with position defined as Vector2
  late final JSFunction DrawTextureV;
  /// Draw a Texture2D with extended parameters
  late final JSFunction DrawTextureEx;
  /// Draw a part of a texture defined by a rectangle
  late final JSFunction DrawTextureRec;
  /// Draw a part of a texture defined by a rectangle with 'pro' parameters
  late final JSFunction DrawTexturePro;
  /// Draws a texture (or part of it) that stretches or shrinks nicely
  late final JSFunction DrawTextureNPatch;
  /// Check if two colors are equal
  late final JSFunction ColorIsEqual;
  /// Get color with alpha applied, alpha goes from 0.0 to 1.0
  late final JSFunction Fade;
  /// Get hexadecimal value for a Color (0xRRGGBBAA)
  late final JSFunction ColorToInt;
  /// Get Color normalized as float [0..1]
  late final JSFunction ColorNormalize;
  /// Get Color from normalized values [0..1]
  late final JSFunction ColorFromNormalized;
  /// Get HSV values for a Color, hue [0..360], saturation/value [0..1]
  late final JSFunction ColorToHSV;
  /// Get a Color from HSV values, hue [0..360], saturation/value [0..1]
  late final JSFunction ColorFromHSV;
  /// Get color multiplied with another color
  late final JSFunction ColorTint;
  /// Get color with brightness correction, brightness factor goes from -1.0 to 1.0
  late final JSFunction ColorBrightness;
  /// Get color with contrast correction, contrast values between -1.0 and 1.0
  late final JSFunction ColorContrast;
  /// Get color with alpha applied, alpha goes from 0.0 to 1.0
  late final JSFunction ColorAlpha;
  /// Get src alpha-blended into dst color with tint
  late final JSFunction ColorAlphaBlend;
  /// Get color lerp interpolation between two colors, factor [0.0..1.0]
  late final JSFunction ColorLerp;
  /// Get Color structure from hexadecimal value
  late final JSFunction GetColor;
  /// Get Color from a source pixel pointer of certain format
  late final JSFunction GetPixelColor;
  /// Set color formatted into destination pixel pointer
  late final JSFunction SetPixelColor;
  /// Get pixel data size in bytes for certain format
  late final JSFunction GetPixelDataSize;
  /// Get the default Font
  late final JSFunction GetFontDefault;
  /// Load font from file into GPU memory (VRAM)
  late final JSFunction LoadFont;
  /// Load font from file with extended parameters, use NULL for codepoints and 0 for codepointCount to load the default character set, font size is provided in pixels height
  late final JSFunction LoadFontEx;
  /// Load font from Image (XNA style)
  late final JSFunction LoadFontFromImage;
  /// Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
  late final JSFunction LoadFontFromMemory;
  /// Check if a font is valid (font data loaded, WARNING: GPU texture not checked)
  late final JSFunction IsFontValid;
  /// Load font data for further use
  late final JSFunction LoadFontData;
  /// Generate image font atlas using chars info
  late final JSFunction GenImageFontAtlas;
  /// Unload font chars info data (RAM)
  late final JSFunction UnloadFontData;
  /// Unload font from GPU memory (VRAM)
  late final JSFunction UnloadFont;
  /// Export font as code file, returns true on success
  late final JSFunction ExportFontAsCode;
  /// Draw current FPS
  late final JSFunction DrawFPS;
  /// Draw text (using default font)
  late final JSFunction DrawText;
  /// Draw text using font and additional parameters
  late final JSFunction DrawTextEx;
  /// Draw text using Font and pro parameters (rotation)
  late final JSFunction DrawTextPro;
  /// Draw one character (codepoint)
  late final JSFunction DrawTextCodepoint;
  /// Draw multiple character (codepoint)
  late final JSFunction DrawTextCodepoints;
  /// Set vertical line spacing when drawing with line-breaks
  late final JSFunction SetTextLineSpacing;
  /// Measure string width for default font
  late final JSFunction MeasureText;
  /// Measure string size for Font
  late final JSFunction MeasureTextEx;
  /// Measure string size for an existing array of codepoints for Font
  late final JSFunction MeasureTextCodepoints;
  /// Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
  late final JSFunction GetGlyphIndex;
  /// Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
  late final JSFunction GetGlyphInfo;
  /// Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
  late final JSFunction GetGlyphAtlasRec;
  /// Load UTF-8 text encoded from codepoints array
  late final JSFunction LoadUTF8;
  /// Unload UTF-8 text encoded from codepoints array
  late final JSFunction UnloadUTF8;
  /// Load all codepoints from a UTF-8 text string, codepoints count returned by parameter
  late final JSFunction LoadCodepoints;
  /// Unload codepoints data from memory
  late final JSFunction UnloadCodepoints;
  /// Get total number of codepoints in a UTF-8 encoded string
  late final JSFunction GetCodepointCount;
  /// Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
  late final JSFunction GetCodepoint;
  /// Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
  late final JSFunction GetCodepointNext;
  /// Get previous codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
  late final JSFunction GetCodepointPrevious;
  /// Encode one codepoint into UTF-8 byte array (array length returned as parameter)
  late final JSFunction CodepointToUTF8;
  /// Load text as separate lines ('\n')
  late final JSFunction LoadTextLines;
  /// Unload text lines
  late final JSFunction UnloadTextLines;
  /// Copy one string to another, returns bytes copied
  late final JSFunction TextCopy;
  /// Check if two text string are equal
  late final JSFunction TextIsEqual;
  /// Get text length
  late final JSFunction TextLength;
  /// Text formatting with variables (sprintf() style)
  late final JSFunction TextFormat;
  /// Get a piece of a text string
  late final JSFunction TextSubtext;
  /// Remove text spaces, concat words
  late final JSFunction TextRemoveSpaces;
  /// Get text between two strings
  late final JSFunction GetTextBetween;
  /// Replace text string with new string
  late final JSFunction TextReplace;
  /// Replace text string with new string, memory must be freed
  late final JSFunction TextReplaceAlloc;
  /// Replace text between two specific strings
  late final JSFunction TextReplaceBetween;
  /// Replace text between two specific strings, memory must be freed
  late final JSFunction TextReplaceBetweenAlloc;
  /// Insert text in a defined byte position
  late final JSFunction TextInsert;
  /// Insert text in a defined byte position, memory must be freed
  late final JSFunction TextInsertAlloc;
  /// Join text strings with delimiter ([delimiter] is expected to be length of 1)
  late final JSFunction TextJoin;
  /// Split text into multiple strings
  late final JSFunction TextSplit;
  /// Append text at specific position and move cursor
  late final JSFunction TextAppend;
  /// Find first text occurrence within a string, -1 if not found
  late final JSFunction TextFindIndex;
  /// Get upper case version of provided string
  late final JSFunction TextToUpper;
  /// Get lower case version of provided string
  late final JSFunction TextToLower;
  /// Get Pascal case notation version of provided string
  late final JSFunction TextToPascal;
  /// Get Snake case notation version of provided string
  late final JSFunction TextToSnake;
  /// Get Camel case notation version of provided string
  late final JSFunction TextToCamel;
  /// Get integer value from text
  late final JSFunction TextToInteger;
  /// Get float value from text
  late final JSFunction TextToFloat;
  /// Draw a line in 3D world space
  late final JSFunction DrawLine3D;
  /// Draw a point in 3D space, actually a small line
  late final JSFunction DrawPoint3D;
  /// Draw a circle in 3D world space
  late final JSFunction DrawCircle3D;
  /// Draw a color-filled triangle (vertex in counter-clockwise order!)
  late final JSFunction DrawTriangle3D;
  /// Draw a triangle strip defined by points
  late final JSFunction DrawTriangleStrip3D;
  /// Draw cube
  late final JSFunction DrawCube;
  /// Draw cube (Vector version)
  late final JSFunction DrawCubeV;
  /// Draw cube wires
  late final JSFunction DrawCubeWires;
  /// Draw cube wires (Vector version)
  late final JSFunction DrawCubeWiresV;
  /// Draw sphere
  late final JSFunction DrawSphere;
  /// Draw sphere with extended parameters
  late final JSFunction DrawSphereEx;
  /// Draw sphere wires
  late final JSFunction DrawSphereWires;
  /// Draw a cylinder/cone
  late final JSFunction DrawCylinder;
  /// Draw a cylinder with base at startPos and top at endPos
  late final JSFunction DrawCylinderEx;
  /// Draw a cylinder/cone wires
  late final JSFunction DrawCylinderWires;
  /// Draw a cylinder wires with base at startPos and top at endPos
  late final JSFunction DrawCylinderWiresEx;
  /// Draw a capsule with the center of its sphere caps at startPos and endPos
  late final JSFunction DrawCapsule;
  /// Draw capsule wireframe with the center of its sphere caps at startPos and endPos
  late final JSFunction DrawCapsuleWires;
  /// Draw a plane XZ
  late final JSFunction DrawPlane;
  /// Draw a ray line
  late final JSFunction DrawRay;
  /// Draw a grid (centered at (0, 0, 0))
  late final JSFunction DrawGrid;
  /// Load model from files (meshes and materials)
  late final JSFunction LoadModel;
  /// Load model from generated mesh (default material)
  late final JSFunction LoadModelFromMesh;
  /// Check if a model is valid (loaded in GPU, VAO/VBOs)
  late final JSFunction IsModelValid;
  /// Unload model (including meshes) from memory (RAM and/or VRAM)
  late final JSFunction UnloadModel;
  /// Compute model bounding box limits (considers all meshes)
  late final JSFunction GetModelBoundingBox;
  /// Draw a model (with texture if set)
  late final JSFunction DrawModel;
  /// Draw a model with extended parameters
  late final JSFunction DrawModelEx;
  /// Draw a model wires (with texture if set)
  late final JSFunction DrawModelWires;
  /// Draw a model wires (with texture if set) with extended parameters
  late final JSFunction DrawModelWiresEx;
  /// Draw bounding box (wires)
  late final JSFunction DrawBoundingBox;
  /// Draw a billboard texture
  late final JSFunction DrawBillboard;
  /// Draw a billboard texture defined by source
  late final JSFunction DrawBillboardRec;
  /// Draw a billboard texture defined by source and rotation
  late final JSFunction DrawBillboardPro;
  /// Upload mesh vertex data in GPU and provide VAO/VBO ids
  late final JSFunction UploadMesh;
  /// Update mesh vertex data in GPU for a specific buffer index
  late final JSFunction UpdateMeshBuffer;
  /// Unload mesh data from CPU and GPU
  late final JSFunction UnloadMesh;
  /// Draw a 3d mesh with material and transform
  late final JSFunction DrawMesh;
  /// Draw multiple mesh instances with material and different transforms
  late final JSFunction DrawMeshInstanced;
  /// Compute mesh bounding box limits
  late final JSFunction GetMeshBoundingBox;
  /// Compute mesh tangents
  late final JSFunction GenMeshTangents;
  /// Export mesh data to file, returns true on success
  late final JSFunction ExportMesh;
  /// Export mesh as code file (.h) defining multiple arrays of vertex attributes
  late final JSFunction ExportMeshAsCode;
  /// Generate polygonal mesh
  late final JSFunction GenMeshPoly;
  /// Generate plane mesh (with subdivisions)
  late final JSFunction GenMeshPlane;
  /// Generate cuboid mesh
  late final JSFunction GenMeshCube;
  /// Generate sphere mesh (standard sphere)
  late final JSFunction GenMeshSphere;
  /// Generate half-sphere mesh (no bottom cap)
  late final JSFunction GenMeshHemiSphere;
  /// Generate cylinder mesh
  late final JSFunction GenMeshCylinder;
  /// Generate cone/pyramid mesh
  late final JSFunction GenMeshCone;
  /// Generate torus mesh
  late final JSFunction GenMeshTorus;
  /// Generate trefoil knot mesh
  late final JSFunction GenMeshKnot;
  /// Generate heightmap mesh from image data
  late final JSFunction GenMeshHeightmap;
  /// Generate cubes-based map mesh from image data
  late final JSFunction GenMeshCubicmap;
  /// Load materials from model file
  late final JSFunction LoadMaterials;
  /// Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
  late final JSFunction LoadMaterialDefault;
  /// Check if a material is valid (shader assigned, map textures loaded in GPU)
  late final JSFunction IsMaterialValid;
  /// Unload material from GPU memory (VRAM)
  late final JSFunction UnloadMaterial;
  /// Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)
  late final JSFunction SetMaterialTexture;
  /// Set material for a mesh
  late final JSFunction SetModelMeshMaterial;
  /// Load model animations from file
  late final JSFunction LoadModelAnimations;
  /// Update model animation pose (CPU)
  late final JSFunction UpdateModelAnimation;
  /// Update model animation data (vertex buffers / bone matrices) for a specific pose,
  /// defined by two different animations at specific frames blended together
  late final JSFunction UpdateModelAnimationEx;
  /// Unload animation array data
  late final JSFunction UnloadModelAnimations;
  /// Check model animation skeleton match
  late final JSFunction IsModelAnimationValid;
  /// Check collision between two spheres
  late final JSFunction CheckCollisionSpheres;
  /// Check collision between two bounding boxes
  late final JSFunction CheckCollisionBoxes;
  /// Check collision between box and sphere
  late final JSFunction CheckCollisionBoxSphere;
  /// Get collision info between ray and sphere
  late final JSFunction GetRayCollisionSphere;
  /// Get collision info between ray and box
  late final JSFunction GetRayCollisionBox;
  /// Get collision info between ray and mesh
  late final JSFunction GetRayCollisionMesh;
  /// Get collision info between ray and triangle
  late final JSFunction GetRayCollisionTriangle;
  /// Get collision info between ray and quad
  late final JSFunction GetRayCollisionQuad;

  RaylibCore(super.rl) {
    InitWindow                       = _module.dwrap('InitWindow',                       n3, rv);
    CloseWindow                      = _module.dwrap('CloseWindow',                      n0, rv);
    WindowShouldClose                = _module.dwrap('WindowShouldClose',                n0, rn);
    IsWindowReady                    = _module.dwrap('IsWindowReady',                    n0, rn);
    IsWindowFullscreen               = _module.dwrap('IsWindowFullscreen',               n0, rn);
    IsWindowHidden                   = _module.dwrap('IsWindowHidden',                   n0, rn);
    IsWindowMinimized                = _module.dwrap('IsWindowMinimized',                n0, rn);
    IsWindowMaximized                = _module.dwrap('IsWindowMaximized',                n0, rn);
    IsWindowFocused                  = _module.dwrap('IsWindowFocused',                  n0, rn);
    IsWindowResized                  = _module.dwrap('IsWindowResized',                  n0, rn);
    IsWindowState                    = _module.dwrap('IsWindowState',                    n1, rn);
    SetWindowState                   = _module.dwrap('SetWindowState',                   n1, rv);
    ClearWindowState                 = _module.dwrap('ClearWindowState',                 n1, rv);
    ToggleFullscreen                 = _module.dwrap('ToggleFullscreen',                 n0, rv);
    ToggleBorderlessWindowed         = _module.dwrap('ToggleBorderlessWindowed',         n0, rv);
    MaximizeWindow                   = _module.dwrap('MaximizeWindow',                   n0, rv);
    MinimizeWindow                   = _module.dwrap('MinimizeWindow',                   n0, rv);
    RestoreWindow                    = _module.dwrap('RestoreWindow',                    n0, rv);
    SetWindowIcon                    = _module.dwrap('SetWindowIcon',                    n1, rv);
    SetWindowIcons                   = _module.dwrap('SetWindowIcons',                   n2, rv);
    SetWindowTitle                   = _module.dwrap('SetWindowTitle',                   n1, rv);
    SetWindowPosition                = _module.dwrap('SetWindowPosition',                n2, rv);
    SetWindowMonitor                 = _module.dwrap('SetWindowMonitor',                 n1, rv);
    SetWindowMinSize                 = _module.dwrap('SetWindowMinSize',                 n2, rv);
    SetWindowMaxSize                 = _module.dwrap('SetWindowMaxSize',                 n2, rv);
    SetWindowSize                    = _module.dwrap('SetWindowSize',                    n2, rv);
    SetWindowOpacity                 = _module.dwrap('SetWindowOpacity',                 n1, rv);
    SetWindowFocused                 = _module.dwrap('SetWindowFocused',                 n0, rv);
    GetWindowHandle                  = _module.dwrap('GetWindowHandle',                  n0, rn);
    GetScreenWidth                   = _module.dwrap('GetScreenWidth',                   n0, rn);
    GetScreenHeight                  = _module.dwrap('GetScreenHeight',                  n0, rn);
    GetRenderWidth                   = _module.dwrap('GetRenderWidth',                   n0, rn);
    GetRenderHeight                  = _module.dwrap('GetRenderHeight',                  n0, rn);
    GetMonitorCount                  = _module.dwrap('GetMonitorCount',                  n0, rn);
    GetCurrentMonitor                = _module.dwrap('GetCurrentMonitor',                n0, rn);
    GetMonitorPosition               = _module.dwrap('GetMonitorPosition',               n2, rv);
    GetMonitorWidth                  = _module.dwrap('GetMonitorWidth',                  n1, rn);
    GetMonitorHeight                 = _module.dwrap('GetMonitorHeight',                 n1, rn);
    GetMonitorPhysicalWidth          = _module.dwrap('GetMonitorPhysicalWidth',          n1, rn);
    GetMonitorPhysicalHeight         = _module.dwrap('GetMonitorPhysicalHeight',         n1, rn);
    GetMonitorRefreshRate            = _module.dwrap('GetMonitorRefreshRate',            n1, rn);
    GetWindowPosition                = _module.dwrap('GetWindowPosition',                n1, rv);
    GetWindowScaleDPI                = _module.dwrap('GetWindowScaleDPI',                n1, rv);
    GetMonitorName                   = _module.dwrap('GetMonitorName',                   n1, rn);
    SetClipboardText                 = _module.dwrap('SetClipboardText',                 n1, rv);
    GetClipboardText                 = _module.dwrap('GetClipboardText',                 n0, rn);
    GetClipboardImage                = _module.dwrap('GetClipboardImage',                n1, rv);
    EnableEventWaiting               = _module.dwrap('EnableEventWaiting',               n0, rv);
    DisableEventWaiting              = _module.dwrap('DisableEventWaiting',              n0, rv);
    ShowCursor                       = _module.dwrap('ShowCursor',                       n0, rv);
    HideCursor                       = _module.dwrap('HideCursor',                       n0, rv);
    IsCursorHidden                   = _module.dwrap('IsCursorHidden',                   n0, rn);
    EnableCursor                     = _module.dwrap('EnableCursor',                     n0, rv);
    DisableCursor                    = _module.dwrap('DisableCursor',                    n0, rv);
    IsCursorOnScreen                 = _module.dwrap('IsCursorOnScreen',                 n0, rn);
    ClearBackground                  = _module.dwrap('ClearBackground',                  n1, rv);
    BeginDrawing                     = _module.dwrap('BeginDrawing',                     n0, rv);
    EndDrawing                       = _module.dwrap('EndDrawing',                       n0, rv);
    BeginMode2D                      = _module.dwrap('BeginMode2D',                      n1, rv);
    EndMode2D                        = _module.dwrap('EndMode2D',                        n0, rv);
    BeginMode3D                      = _module.dwrap('BeginMode3D',                      n1, rv);
    EndMode3D                        = _module.dwrap('EndMode3D',                        n0, rv);
    BeginTextureMode                 = _module.dwrap('BeginTextureMode',                 n1, rv);
    EndTextureMode                   = _module.dwrap('EndTextureMode',                   n0, rv);
    BeginShaderMode                  = _module.dwrap('BeginShaderMode',                  n1, rv);
    EndShaderMode                    = _module.dwrap('EndShaderMode',                    n0, rv);
    BeginBlendMode                   = _module.dwrap('BeginBlendMode',                   n1, rv);
    EndBlendMode                     = _module.dwrap('EndBlendMode',                     n0, rv);
    BeginScissorMode                 = _module.dwrap('BeginScissorMode',                 n4, rv);
    EndScissorMode                   = _module.dwrap('EndScissorMode',                   n0, rv);
    BeginVrStereoMode                = _module.dwrap('BeginVrStereoMode',                n1, rv);
    EndVrStereoMode                  = _module.dwrap('EndVrStereoMode',                  n0, rv);
    LoadVrStereoConfig               = _module.dwrap('LoadVrStereoConfig',               n2, rv);
    UnloadVrStereoConfig             = _module.dwrap('UnloadVrStereoConfig',             n1, rv);
    LoadShader                       = _module.dwrap('LoadShader',                       n3, rv);
    LoadShaderFromMemory             = _module.dwrap('LoadShaderFromMemory',             n3, rv);
    IsShaderValid                    = _module.dwrap('IsShaderValid',                    n1, rn);
    GetShaderLocation                = _module.dwrap('GetShaderLocation',                n2, rn);
    GetShaderLocationAttrib          = _module.dwrap('GetShaderLocationAttrib',          n2, rn);
    SetShaderValue                   = _module.dwrap('SetShaderValue',                   n4, rv);
    SetShaderValueV                  = _module.dwrap('SetShaderValueV',                  n5, rv);
    SetShaderValueMatrix             = _module.dwrap('SetShaderValueMatrix',             n3, rv);
    SetShaderValueTexture            = _module.dwrap('SetShaderValueTexture',            n3, rv);
    UnloadShader                     = _module.dwrap('UnloadShader',                     n1, rv);
    GetScreenToWorldRay              = _module.dwrap('GetScreenToWorldRay',              n3, rv);
    GetScreenToWorldRayEx            = _module.dwrap('GetScreenToWorldRayEx',            n5, rv);
    GetWorldToScreen                 = _module.dwrap('GetWorldToScreen',                 n3, rv);
    GetWorldToScreenEx               = _module.dwrap('GetWorldToScreenEx',               n5, rv);
    GetWorldToScreen2D               = _module.dwrap('GetWorldToScreen2D',               n3, rv);
    GetScreenToWorld2D               = _module.dwrap('GetScreenToWorld2D',               n3, rv);
    GetCameraMatrix                  = _module.dwrap('GetCameraMatrix',                  n2, rv);
    GetCameraMatrix2D                = _module.dwrap('GetCameraMatrix2D',                n2, rv);
    SetTargetFPS                     = _module.dwrap('SetTargetFPS',                     n1, rv);
    GetFrameTime                     = _module.dwrap('GetFrameTime',                     n0, rn);
    GetTime                          = _module.dwrap('GetTime',                          n0, rn);
    GetFPS                           = _module.dwrap('GetFPS',                           n0, rn);
    SwapScreenBuffer                 = _module.dwrap('SwapScreenBuffer',                 n0, rv);
    PollInputEvents                  = _module.dwrap('PollInputEvents',                  n0, rv);
    WaitTime                         = _module.dwrap('WaitTime',                         n1, rv);
    SetRandomSeed                    = _module.dwrap('SetRandomSeed',                    n1, rv);
    GetRandomValue                   = _module.dwrap('GetRandomValue',                   n2, rn);
    LoadRandomSequence               = _module.dwrap('LoadRandomSequence',               n3, rn);
    UnloadRandomSequence             = _module.dwrap('UnloadRandomSequence',             n1, rv);
    TakeScreenshot                   = _module.dwrap('TakeScreenshot',                   n1, rv);
    SetConfigFlags                   = _module.dwrap('SetConfigFlags',                   n1, rv);
    OpenURL                          = _module.dwrap('OpenURL',                          n1, rv);
    TraceLog                         = _module.dwrap('TraceLog',                         n2, rv);
    SetTraceLogLevel                 = _module.dwrap('SetTraceLogLevel',                 n1, rv);
    SetTraceLogCallback              = _module.dwrap('SetTraceLogCallback',              n1, rv);
    SetLoadFileDataCallback          = _module.dwrap('SetLoadFileDataCallback',          n1, rv);
    SetSaveFileDataCallback          = _module.dwrap('SetSaveFileDataCallback',          n1, rv);
    SetLoadFileTextCallback          = _module.dwrap('SetLoadFileTextCallback',          n1, rv);
    SetSaveFileTextCallback          = _module.dwrap('SetSaveFileTextCallback',          n1, rv);
    LoadFileData                     = _module.dwrap('LoadFileData',                     n2, rn);
    UnloadFileData                   = _module.dwrap('UnloadFileData',                   n1, rv);
    SaveFileData                     = _module.dwrap('SaveFileData',                     n3, rn);
    ExportDataAsCode                 = _module.dwrap('ExportDataAsCode',                 n3, rn);
    LoadFileText                     = _module.dwrap('LoadFileText',                     n1, rn);
    UnloadFileText                   = _module.dwrap('UnloadFileText',                   n1, rv);
    SaveFileText                     = _module.dwrap('SaveFileText',                     n2, rn);
    FileRename                       = _module.dwrap('FileRename',                       n2, rn);
    FileRemove                       = _module.dwrap('FileRemove',                       n1, rn);
    FileCopy                         = _module.dwrap('FileCopy',                         n2, rn);
    FileMove                         = _module.dwrap('FileMove',                         n2, rn);
    FileTextReplace                  = _module.dwrap('FileTextReplace',                  n3, rn);
    FileTextFindIndex                = _module.dwrap('FileTextFindIndex',                n2, rn);
    FileExists                       = _module.dwrap('FileExists',                       n1, rn);
    DirectoryExists                  = _module.dwrap('DirectoryExists',                  n1, rn);
    IsFileExtension                  = _module.dwrap('IsFileExtension',                  n2, rn);
    GetFileLength                    = _module.dwrap('GetFileLength',                    n1, rn);
    GetFileExtension                 = _module.dwrap('GetFileExtension',                 n1, rn);
    GetFileName                      = _module.dwrap('GetFileName',                      n1, rn);
    GetFileNameWithoutExt            = _module.dwrap('GetFileNameWithoutExt',            n1, rn);
    GetDirectoryFileCount            = _module.dwrap('GetDirectoryFileCount',            n1, rn);
    GetDirectoryFileCountEx          = _module.dwrap('GetDirectoryFileCountEx',          n3, rn);
    GetDirectoryPath                 = _module.dwrap('GetDirectoryPath',                 n1, rn);
    GetPrevDirectoryPath             = _module.dwrap('GetPrevDirectoryPath',             n1, rn);
    GetWorkingDirectory              = _module.dwrap('GetWorkingDirectory',              n0, rn);
    GetApplicationDirectory          = _module.dwrap('GetApplicationDirectory',          n0, rn);
    MakeDirectory                    = _module.dwrap('MakeDirectory',                    n1, rn);
    ChangeDirectory                  = _module.dwrap('ChangeDirectory',                  n1, rn);
    IsPathFile                       = _module.dwrap('IsPathFile',                       n1, rn);
    IsFileNameValid                  = _module.dwrap('IsFileNameValid',                  n1, rn);
    LoadDirectoryFiles               = _module.dwrap('LoadDirectoryFiles',               n2, rv);
    LoadDirectoryFilesEx             = _module.dwrap('LoadDirectoryFilesEx',             n4, rv);
    UnloadDirectoryFiles             = _module.dwrap('UnloadDirectoryFiles',             n1, rv);
    IsFileDropped                    = _module.dwrap('IsFileDropped',                    n0, rn);
    LoadDroppedFiles                 = _module.dwrap('LoadDroppedFiles',                 n1, rv);
    UnloadDroppedFiles               = _module.dwrap('UnloadDroppedFiles',               n1, rv);
    GetFileModTime                   = _module.dwrap('GetFileModTime',                   n1, rn);
    CompressData                     = _module.dwrap('CompressData',                     n3, rn);
    DecompressData                   = _module.dwrap('DecompressData',                   n3, rn);
    EncodeDataBase64                 = _module.dwrap('EncodeDataBase64',                 n3, rn);
    DecodeDataBase64                 = _module.dwrap('DecodeDataBase64',                 n2, rn);
    ComputeCRC32                     = _module.dwrap('ComputeCRC32',                     n2, rn);
    ComputeMD5                       = _module.dwrap('ComputeMD5',                       n2, rn);
    ComputeSHA1                      = _module.dwrap('ComputeSHA1',                      n2, rn);
    ComputeSHA256                    = _module.dwrap('ComputeSHA256',                    n2, rn);
    LoadAutomationEventList          = _module.dwrap('LoadAutomationEventList',          n2, rv);
    UnloadAutomationEventList        = _module.dwrap('UnloadAutomationEventList',        n1, rv);
    ExportAutomationEventList        = _module.dwrap('ExportAutomationEventList',        n2, rn);
    SetAutomationEventList           = _module.dwrap('SetAutomationEventList',           n1, rv);
    SetAutomationEventBaseFrame      = _module.dwrap('SetAutomationEventBaseFrame',      n1, rv);
    StartAutomationEventRecording    = _module.dwrap('StartAutomationEventRecording',    n0, rv);
    StopAutomationEventRecording     = _module.dwrap('StopAutomationEventRecording',     n0, rv);
    PlayAutomationEvent              = _module.dwrap('PlayAutomationEvent',              n1, rv);
    IsKeyPressed                     = _module.dwrap('IsKeyPressed',                     n1, rn);
    IsKeyPressedRepeat               = _module.dwrap('IsKeyPressedRepeat',               n1, rn);
    IsKeyDown                        = _module.dwrap('IsKeyDown',                        n1, rn);
    IsKeyReleased                    = _module.dwrap('IsKeyReleased',                    n1, rn);
    IsKeyUp                          = _module.dwrap('IsKeyUp',                          n1, rn);
    GetKeyName                       = _module.dwrap('GetKeyName',                       n1, rn);
    GetKeyPressed                    = _module.dwrap('GetKeyPressed',                    n0, rn);
    GetCharPressed                   = _module.dwrap('GetCharPressed',                   n0, rn);
    SetExitKey                       = _module.dwrap('SetExitKey',                       n1, rv);
    IsGamepadAvailable               = _module.dwrap('IsGamepadAvailable',               n1, rn);
    GetGamepadName                   = _module.dwrap('GetGamepadName',                   n1, rn);
    IsGamepadButtonPressed           = _module.dwrap('IsGamepadButtonPressed',           n2, rn);
    IsGamepadButtonDown              = _module.dwrap('IsGamepadButtonDown',              n2, rn);
    IsGamepadButtonReleased          = _module.dwrap('IsGamepadButtonReleased',          n2, rn);
    IsGamepadButtonUp                = _module.dwrap('IsGamepadButtonUp',                n2, rn);
    GetGamepadButtonPressed          = _module.dwrap('GetGamepadButtonPressed',          n0, rn);
    GetGamepadAxisCount              = _module.dwrap('GetGamepadAxisCount',              n1, rn);
    GetGamepadAxisMovement           = _module.dwrap('GetGamepadAxisMovement',           n2, rn);
    SetGamepadMappings               = _module.dwrap('SetGamepadMappings',               n1, rn);
    SetGamepadVibration              = _module.dwrap('SetGamepadVibration',              n4, rv);
    IsMouseButtonPressed             = _module.dwrap('IsMouseButtonPressed',             n1, rn);
    IsMouseButtonDown                = _module.dwrap('IsMouseButtonDown',                n1, rn);
    IsMouseButtonReleased            = _module.dwrap('IsMouseButtonReleased',            n1, rn);
    IsMouseButtonUp                  = _module.dwrap('IsMouseButtonUp',                  n1, rn);
    GetMouseX                        = _module.dwrap('GetMouseX',                        n0, rn);
    GetMouseY                        = _module.dwrap('GetMouseY',                        n0, rn);
    GetMousePosition                 = _module.dwrap('GetMousePosition',                 n1, rv);
    GetMouseDelta                    = _module.dwrap('GetMouseDelta',                    n1, rv);
    SetMousePosition                 = _module.dwrap('SetMousePosition',                 n2, rv);
    SetMouseOffset                   = _module.dwrap('SetMouseOffset',                   n2, rv);
    SetMouseScale                    = _module.dwrap('SetMouseScale',                    n2, rv);
    GetMouseWheelMove                = _module.dwrap('GetMouseWheelMove',                n0, rn);
    GetMouseWheelMoveV               = _module.dwrap('GetMouseWheelMoveV',               n1, rv);
    SetMouseCursor                   = _module.dwrap('SetMouseCursor',                   n1, rv);
    GetTouchX                        = _module.dwrap('GetTouchX',                        n0, rn);
    GetTouchY                        = _module.dwrap('GetTouchY',                        n0, rn);
    GetTouchPosition                 = _module.dwrap('GetTouchPosition',                 n2, rv);
    GetTouchPointId                  = _module.dwrap('GetTouchPointId',                  n1, rn);
    GetTouchPointCount               = _module.dwrap('GetTouchPointCount',               n0, rn);
    SetGesturesEnabled               = _module.dwrap('SetGesturesEnabled',               n1, rv);
    IsGestureDetected                = _module.dwrap('IsGestureDetected',                n1, rn);
    GetGestureDetected               = _module.dwrap('GetGestureDetected',               n0, rn);
    GetGestureHoldDuration           = _module.dwrap('GetGestureHoldDuration',           n0, rn);
    GetGestureDragVector             = _module.dwrap('GetGestureDragVector',             n1, rv);
    GetGestureDragAngle              = _module.dwrap('GetGestureDragAngle',              n0, rn);
    GetGesturePinchVector            = _module.dwrap('GetGesturePinchVector',            n1, rv);
    GetGesturePinchAngle             = _module.dwrap('GetGesturePinchAngle',             n0, rn);
    ProcessGestureEvent              = _module.dwrap('ProcessGestureEvent',              n1, rv);
    UpdateGestures                   = _module.dwrap('UpdateGestures',                   n0, rv);
    UpdateCamera                     = _module.dwrap('UpdateCamera',                     n2, rv);
    UpdateCameraPro                  = _module.dwrap('UpdateCameraPro',                  n4, rv);
    SetShapesTexture                 = _module.dwrap('SetShapesTexture',                 n2, rv);
    GetShapesTexture                 = _module.dwrap('GetShapesTexture',                 n1, rv);
    GetShapesTextureRectangle        = _module.dwrap('GetShapesTextureRectangle',        n1, rv);
    DrawPixel                        = _module.dwrap('DrawPixel',                        n3, rv);
    DrawPixelV                       = _module.dwrap('DrawPixelV',                       n2, rv);
    DrawLine                         = _module.dwrap('DrawLine',                         n5, rv);
    DrawLineV                        = _module.dwrap('DrawLineV',                        n3, rv);
    DrawLineEx                       = _module.dwrap('DrawLineEx',                       n4, rv);
    DrawLineStrip                    = _module.dwrap('DrawLineStrip',                    n3, rv);
    DrawLineBezier                   = _module.dwrap('DrawLineBezier',                   n4, rv);
    DrawLineDashed                   = _module.dwrap('DrawLineDashed',                   n5, rv);
    DrawCircle                       = _module.dwrap('DrawCircle',                       n4, rv);
    DrawCircleSector                 = _module.dwrap('DrawCircleSector',                 n6, rv);
    DrawCircleSectorLines            = _module.dwrap('DrawCircleSectorLines',            n6, rv);
    DrawCircleGradient               = _module.dwrap('DrawCircleGradient',               n4, rv);
    DrawCircleV                      = _module.dwrap('DrawCircleV',                      n3, rv);
    DrawCircleLines                  = _module.dwrap('DrawCircleLines',                  n4, rv);
    DrawCircleLinesV                 = _module.dwrap('DrawCircleLinesV',                 n3, rv);
    DrawEllipse                      = _module.dwrap('DrawEllipse',                      n5, rv);
    DrawEllipseV                     = _module.dwrap('DrawEllipseV',                     n4, rv);
    DrawEllipseLines                 = _module.dwrap('DrawEllipseLines',                 n5, rv);
    DrawEllipseLinesV                = _module.dwrap('DrawEllipseLinesV',                n4, rv);
    DrawRing                         = _module.dwrap('DrawRing',                         n7, rv);
    DrawRingLines                    = _module.dwrap('DrawRingLines',                    n7, rv);
    DrawRectangle                    = _module.dwrap('DrawRectangle',                    n5, rv);
    DrawRectangleV                   = _module.dwrap('DrawRectangleV',                   n3, rv);
    DrawRectangleRec                 = _module.dwrap('DrawRectangleRec',                 n2, rv);
    DrawRectanglePro                 = _module.dwrap('DrawRectanglePro',                 n4, rv);
    DrawRectangleGradientV           = _module.dwrap('DrawRectangleGradientV',           n6, rv);
    DrawRectangleGradientH           = _module.dwrap('DrawRectangleGradientH',           n6, rv);
    DrawRectangleGradientEx          = _module.dwrap('DrawRectangleGradientEx',          n5, rv);
    DrawRectangleLines               = _module.dwrap('DrawRectangleLines',               n5, rv);
    DrawRectangleLinesEx             = _module.dwrap('DrawRectangleLinesEx',             n3, rv);
    DrawRectangleRounded             = _module.dwrap('DrawRectangleRounded',             n4, rv);
    DrawRectangleRoundedLines        = _module.dwrap('DrawRectangleRoundedLines',        n4, rv);
    DrawRectangleRoundedLinesEx      = _module.dwrap('DrawRectangleRoundedLinesEx',      n5, rv);
    DrawTriangle                     = _module.dwrap('DrawTriangle',                     n4, rv);
    DrawTriangleLines                = _module.dwrap('DrawTriangleLines',                n4, rv);
    DrawTriangleFan                  = _module.dwrap('DrawTriangleFan',                  n3, rv);
    DrawTriangleStrip                = _module.dwrap('DrawTriangleStrip',                n3, rv);
    DrawPoly                         = _module.dwrap('DrawPoly',                         n5, rv);
    DrawPolyLines                    = _module.dwrap('DrawPolyLines',                    n5, rv);
    DrawPolyLinesEx                  = _module.dwrap('DrawPolyLinesEx',                  n6, rv);
    DrawSplineLinear                 = _module.dwrap('DrawSplineLinear',                 n4, rv);
    DrawSplineBasis                  = _module.dwrap('DrawSplineBasis',                  n4, rv);
    DrawSplineCatmullRom             = _module.dwrap('DrawSplineCatmullRom',             n4, rv);
    DrawSplineBezierQuadratic        = _module.dwrap('DrawSplineBezierQuadratic',        n4, rv);
    DrawSplineBezierCubic            = _module.dwrap('DrawSplineBezierCubic',            n4, rv);
    DrawSplineSegmentLinear          = _module.dwrap('DrawSplineSegmentLinear',          n4, rv);
    DrawSplineSegmentBasis           = _module.dwrap('DrawSplineSegmentBasis',           n6, rv);
    DrawSplineSegmentCatmullRom      = _module.dwrap('DrawSplineSegmentCatmullRom',      n6, rv);
    DrawSplineSegmentBezierQuadratic = _module.dwrap('DrawSplineSegmentBezierQuadratic', n5, rv);
    DrawSplineSegmentBezierCubic     = _module.dwrap('DrawSplineSegmentBezierCubic',     n6, rv);
    GetSplinePointLinear             = _module.dwrap('GetSplinePointLinear',             n4, rv);
    GetSplinePointBasis              = _module.dwrap('GetSplinePointBasis',              n6, rv);
    GetSplinePointCatmullRom         = _module.dwrap('GetSplinePointCatmullRom',         n6, rv);
    GetSplinePointBezierQuad         = _module.dwrap('GetSplinePointBezierQuad',         n5, rv);
    GetSplinePointBezierCubic        = _module.dwrap('GetSplinePointBezierCubic',        n6, rv);
    CheckCollisionRecs               = _module.dwrap('CheckCollisionRecs',               n2, rn);
    CheckCollisionCircles            = _module.dwrap('CheckCollisionCircles',            n4, rn);
    CheckCollisionCircleRec          = _module.dwrap('CheckCollisionCircleRec',          n3, rn);
    CheckCollisionCircleLine         = _module.dwrap('CheckCollisionCircleLine',         n4, rn);
    CheckCollisionPointRec           = _module.dwrap('CheckCollisionPointRec',           n2, rn);
    CheckCollisionPointCircle        = _module.dwrap('CheckCollisionPointCircle',        n3, rn);
    CheckCollisionPointTriangle      = _module.dwrap('CheckCollisionPointTriangle',      n4, rn);
    CheckCollisionPointLine          = _module.dwrap('CheckCollisionPointLine',          n4, rn);
    CheckCollisionPointPoly          = _module.dwrap('CheckCollisionPointPoly',          n3, rn);
    CheckCollisionLines              = _module.dwrap('CheckCollisionLines',              n5, rn);
    GetCollisionRec                  = _module.dwrap('GetCollisionRec',                  n3, rv);
    LoadImage                        = _module.dwrap('LoadImage',                        n2, rv);
    LoadImageRaw                     = _module.dwrap('LoadImageRaw',                     n6, rv);
    LoadImageAnim                    = _module.dwrap('LoadImageAnim',                    n3, rv);
    LoadImageAnimFromMemory          = _module.dwrap('LoadImageAnimFromMemory',          n5, rv);
    LoadImageFromMemory              = _module.dwrap('LoadImageFromMemory',              n4, rv);
    LoadImageFromTexture             = _module.dwrap('LoadImageFromTexture',             n2, rv);
    LoadImageFromScreen              = _module.dwrap('LoadImageFromScreen',              n1, rv);
    IsImageValid                     = _module.dwrap('IsImageValid',                     n1, rn);
    UnloadImage                      = _module.dwrap('UnloadImage',                      n1, rv);
    ExportImage                      = _module.dwrap('ExportImage',                      n2, rn);
    ExportImageToMemory              = _module.dwrap('ExportImageToMemory',              n3, rn);
    ExportImageAsCode                = _module.dwrap('ExportImageAsCode',                n2, rn);
    GenImageColor                    = _module.dwrap('GenImageColor',                    n4, rv);
    GenImageGradientLinear           = _module.dwrap('GenImageGradientLinear',           n6, rv);
    GenImageGradientRadial           = _module.dwrap('GenImageGradientRadial',           n6, rv);
    GenImageGradientSquare           = _module.dwrap('GenImageGradientSquare',           n6, rv);
    GenImageChecked                  = _module.dwrap('GenImageChecked',                  n7, rv);
    GenImageWhiteNoise               = _module.dwrap('GenImageWhiteNoise',               n4, rv);
    GenImagePerlinNoise              = _module.dwrap('GenImagePerlinNoise',              n6, rv);
    GenImageCellular                 = _module.dwrap('GenImageCellular',                 n4, rv);
    GenImageText                     = _module.dwrap('GenImageText',                     n4, rv);
    ImageCopy                        = _module.dwrap('ImageCopy',                        n2, rv);
    ImageFromImage                   = _module.dwrap('ImageFromImage',                   n3, rv);
    ImageFromChannel                 = _module.dwrap('ImageFromChannel',                 n3, rv);
    ImageText                        = _module.dwrap('ImageText',                        n4, rv);
    ImageTextEx                      = _module.dwrap('ImageTextEx',                      n6, rv);
    ImageFormat                      = _module.dwrap('ImageFormat',                      n2, rv);
    ImageToPOT                       = _module.dwrap('ImageToPOT',                       n2, rv);
    ImageCrop                        = _module.dwrap('ImageCrop',                        n2, rv);
    ImageAlphaCrop                   = _module.dwrap('ImageAlphaCrop',                   n2, rv);
    ImageAlphaClear                  = _module.dwrap('ImageAlphaClear',                  n3, rv);
    ImageAlphaMask                   = _module.dwrap('ImageAlphaMask',                   n2, rv);
    ImageAlphaPremultiply            = _module.dwrap('ImageAlphaPremultiply',            n1, rv);
    ImageBlurGaussian                = _module.dwrap('ImageBlurGaussian',                n2, rv);
    ImageKernelConvolution           = _module.dwrap('ImageKernelConvolution',           n3, rv);
    ImageResize                      = _module.dwrap('ImageResize',                      n3, rv);
    ImageResizeNN                    = _module.dwrap('ImageResizeNN',                    n3, rv);
    ImageResizeCanvas                = _module.dwrap('ImageResizeCanvas',                n6, rv);
    ImageMipmaps                     = _module.dwrap('ImageMipmaps',                     n1, rv);
    ImageDither                      = _module.dwrap('ImageDither',                      n5, rv);
    ImageFlipVertical                = _module.dwrap('ImageFlipVertical',                n1, rv);
    ImageFlipHorizontal              = _module.dwrap('ImageFlipHorizontal',              n1, rv);
    ImageRotate                      = _module.dwrap('ImageRotate',                      n2, rv);
    ImageRotateCW                    = _module.dwrap('ImageRotateCW',                    n1, rv);
    ImageRotateCCW                   = _module.dwrap('ImageRotateCCW',                   n1, rv);
    ImageColorTint                   = _module.dwrap('ImageColorTint',                   n2, rv);
    ImageColorInvert                 = _module.dwrap('ImageColorInvert',                 n1, rv);
    ImageColorGrayscale              = _module.dwrap('ImageColorGrayscale',              n1, rv);
    ImageColorContrast               = _module.dwrap('ImageColorContrast',               n2, rv);
    ImageColorBrightness             = _module.dwrap('ImageColorBrightness',             n2, rv);
    ImageColorReplace                = _module.dwrap('ImageColorReplace',                n3, rv);
    LoadImageColors                  = _module.dwrap('LoadImageColors',                  n1, rn);
    LoadImagePalette                 = _module.dwrap('LoadImagePalette',                 n3, rn);
    UnloadImageColors                = _module.dwrap('UnloadImageColors',                n1, rv);
    UnloadImagePalette               = _module.dwrap('UnloadImagePalette',               n1, rv);
    GetImageAlphaBorder              = _module.dwrap('GetImageAlphaBorder',              n3, rv);
    GetImageColor                    = _module.dwrap('GetImageColor',                    n4, rv);
    ImageClearBackground             = _module.dwrap('ImageClearBackground',             n2, rv);
    ImageDrawPixel                   = _module.dwrap('ImageDrawPixel',                   n4, rv);
    ImageDrawPixelV                  = _module.dwrap('ImageDrawPixelV',                  n3, rv);
    ImageDrawLine                    = _module.dwrap('ImageDrawLine',                    n6, rv);
    ImageDrawLineV                   = _module.dwrap('ImageDrawLineV',                   n4, rv);
    ImageDrawLineEx                  = _module.dwrap('ImageDrawLineEx',                  n5, rv);
    ImageDrawCircle                  = _module.dwrap('ImageDrawCircle',                  n5, rv);
    ImageDrawCircleV                 = _module.dwrap('ImageDrawCircleV',                 n4, rv);
    ImageDrawCircleLines             = _module.dwrap('ImageDrawCircleLines',             n5, rv);
    ImageDrawCircleLinesV            = _module.dwrap('ImageDrawCircleLinesV',            n4, rv);
    ImageDrawRectangle               = _module.dwrap('ImageDrawRectangle',               n6, rv);
    ImageDrawRectangleV              = _module.dwrap('ImageDrawRectangleV',              n4, rv);
    ImageDrawRectangleRec            = _module.dwrap('ImageDrawRectangleRec',            n3, rv);
    ImageDrawRectangleLines          = _module.dwrap('ImageDrawRectangleLines',          n4, rv);
    ImageDrawTriangle                = _module.dwrap('ImageDrawTriangle',                n5, rv);
    ImageDrawTriangleEx              = _module.dwrap('ImageDrawTriangleEx',              n7, rv);
    ImageDrawTriangleLines           = _module.dwrap('ImageDrawTriangleLines',           n5, rv);
    ImageDrawTriangleFan             = _module.dwrap('ImageDrawTriangleFan',             n4, rv);
    ImageDrawTriangleStrip           = _module.dwrap('ImageDrawTriangleStrip',           n4, rv);
    ImageDraw                        = _module.dwrap('ImageDraw',                        n5, rv);
    ImageDrawText                    = _module.dwrap('ImageDrawText',                    n6, rv);
    ImageDrawTextEx                  = _module.dwrap('ImageDrawTextEx',                  n7, rv);
    LoadTexture                      = _module.dwrap('LoadTexture',                      n2, rv);
    LoadTextureFromImage             = _module.dwrap('LoadTextureFromImage',             n2, rv);
    LoadTextureCubemap               = _module.dwrap('LoadTextureCubemap',               n3, rv);
    LoadRenderTexture                = _module.dwrap('LoadRenderTexture',                n3, rv);
    IsTextureValid                   = _module.dwrap('IsTextureValid',                   n1, rn);
    UnloadTexture                    = _module.dwrap('UnloadTexture',                    n1, rv);
    IsRenderTextureValid             = _module.dwrap('IsRenderTextureValid',             n1, rn);
    UnloadRenderTexture              = _module.dwrap('UnloadRenderTexture',              n1, rv);
    UpdateTexture                    = _module.dwrap('UpdateTexture',                    n2, rv);
    UpdateTextureRec                 = _module.dwrap('UpdateTextureRec',                 n3, rv);
    GenTextureMipmaps                = _module.dwrap('GenTextureMipmaps',                n1, rv);
    SetTextureFilter                 = _module.dwrap('SetTextureFilter',                 n2, rv);
    SetTextureWrap                   = _module.dwrap('SetTextureWrap',                   n2, rv);
    DrawTexture                      = _module.dwrap('DrawTexture',                      n4, rv);
    DrawTextureV                     = _module.dwrap('DrawTextureV',                     n3, rv);
    DrawTextureEx                    = _module.dwrap('DrawTextureEx',                    n5, rv);
    DrawTextureRec                   = _module.dwrap('DrawTextureRec',                   n4, rv);
    DrawTexturePro                   = _module.dwrap('DrawTexturePro',                   n6, rv);
    DrawTextureNPatch                = _module.dwrap('DrawTextureNPatch',                n6, rv);
    ColorIsEqual                     = _module.dwrap('ColorIsEqual',                     n2, rn);
    Fade                             = _module.dwrap('Fade',                             n3, rv);
    ColorToInt                       = _module.dwrap('ColorToInt',                       n1, rn);
    ColorNormalize                   = _module.dwrap('ColorNormalize',                   n2, rv);
    ColorFromNormalized              = _module.dwrap('ColorFromNormalized',              n2, rv);
    ColorToHSV                       = _module.dwrap('ColorToHSV',                       n2, rv);
    ColorFromHSV                     = _module.dwrap('ColorFromHSV',                     n4, rv);
    ColorTint                        = _module.dwrap('ColorTint',                        n3, rv);
    ColorBrightness                  = _module.dwrap('ColorBrightness',                  n3, rv);
    ColorContrast                    = _module.dwrap('ColorContrast',                    n3, rv);
    ColorAlpha                       = _module.dwrap('ColorAlpha',                       n3, rv);
    ColorAlphaBlend                  = _module.dwrap('ColorAlphaBlend',                  n4, rv);
    ColorLerp                        = _module.dwrap('ColorLerp',                        n4, rv);
    GetColor                         = _module.dwrap('GetColor',                         n2, rv);
    GetPixelColor                    = _module.dwrap('GetPixelColor',                    n3, rv);
    SetPixelColor                    = _module.dwrap('SetPixelColor',                    n3, rv);
    GetPixelDataSize                 = _module.dwrap('GetPixelDataSize',                 n3, rn);
    GetFontDefault                   = _module.dwrap('GetFontDefault',                   n1, rv);
    LoadFont                         = _module.dwrap('LoadFont',                         n2, rv);
    LoadFontEx                       = _module.dwrap('LoadFontEx',                       n5, rv);
    LoadFontFromImage                = _module.dwrap('LoadFontFromImage',                n4, rv);
    LoadFontFromMemory               = _module.dwrap('LoadFontFromMemory',               n7, rv);
    IsFontValid                      = _module.dwrap('IsFontValid',                      n1, rn);
    LoadFontData                     = _module.dwrap('LoadFontData',                     n7, rn);
    GenImageFontAtlas                = _module.dwrap('GenImageFontAtlas',                n7, rv);
    UnloadFontData                   = _module.dwrap('UnloadFontData',                   n2, rv);
    UnloadFont                       = _module.dwrap('UnloadFont',                       n1, rv);
    ExportFontAsCode                 = _module.dwrap('ExportFontAsCode',                 n2, rn);
    DrawFPS                          = _module.dwrap('DrawFPS',                          n2, rv);
    DrawText                         = _module.dwrap('DrawText',                         n5, rv);
    DrawTextEx                       = _module.dwrap('DrawTextEx',                       n6, rv);
    DrawTextPro                      = _module.dwrap('DrawTextPro',                      n8, rv);
    DrawTextCodepoint                = _module.dwrap('DrawTextCodepoint',                n5, rv);
    DrawTextCodepoints               = _module.dwrap('DrawTextCodepoints',               n7, rv);
    SetTextLineSpacing               = _module.dwrap('SetTextLineSpacing',               n1, rv);
    MeasureText                      = _module.dwrap('MeasureText',                      n2, rn);
    MeasureTextEx                    = _module.dwrap('MeasureTextEx',                    n5, rv);
    MeasureTextCodepoints            = _module.dwrap('MeasureTextCodepoints',            n6, rv);
    GetGlyphIndex                    = _module.dwrap('GetGlyphIndex',                    n2, rn);
    GetGlyphInfo                     = _module.dwrap('GetGlyphInfo',                     n3, rv);
    GetGlyphAtlasRec                 = _module.dwrap('GetGlyphAtlasRec',                 n3, rv);
    LoadUTF8                         = _module.dwrap('LoadUTF8',                         n2, rn);
    UnloadUTF8                       = _module.dwrap('UnloadUTF8',                       n1, rv);
    LoadCodepoints                   = _module.dwrap('LoadCodepoints',                   n2, rn);
    UnloadCodepoints                 = _module.dwrap('UnloadCodepoints',                 n1, rv);
    GetCodepointCount                = _module.dwrap('GetCodepointCount',                n1, rn);
    GetCodepoint                     = _module.dwrap('GetCodepoint',                     n2, rn);
    GetCodepointNext                 = _module.dwrap('GetCodepointNext',                 n2, rn);
    GetCodepointPrevious             = _module.dwrap('GetCodepointPrevious',             n2, rn);
    CodepointToUTF8                  = _module.dwrap('CodepointToUTF8',                  n2, rn);
    LoadTextLines                    = _module.dwrap('LoadTextLines',                    n2, rn);
    UnloadTextLines                  = _module.dwrap('UnloadTextLines',                  n2, rv);
    TextCopy                         = _module.dwrap('TextCopy',                         n2, rn);
    TextIsEqual                      = _module.dwrap('TextIsEqual',                      n2, rn);
    TextLength                       = _module.dwrap('TextLength',                       n1, rn);
    TextFormat                       = _module.dwrap('TextFormat',                       n1, rn);
    TextSubtext                      = _module.dwrap('TextSubtext',                      n3, rn);
    TextRemoveSpaces                 = _module.dwrap('TextRemoveSpaces',                 n1, rn);
    GetTextBetween                   = _module.dwrap('GetTextBetween',                   n3, rn);
    TextReplace                      = _module.dwrap('TextReplace',                      n3, rn);
    TextReplaceAlloc                 = _module.dwrap('TextReplaceAlloc',                 n3, rn);
    TextReplaceBetween               = _module.dwrap('TextReplaceBetween',               n4, rn);
    TextReplaceBetweenAlloc          = _module.dwrap('TextReplaceBetweenAlloc',          n4, rn);
    TextInsert                       = _module.dwrap('TextInsert',                       n3, rn);
    TextInsertAlloc                  = _module.dwrap('TextInsertAlloc',                  n3, rn);
    TextJoin                         = _module.dwrap('TextJoin',                         n3, rn);
    TextSplit                        = _module.dwrap('TextSplit',                        n3, rn);
    TextAppend                       = _module.dwrap('TextAppend',                       n3, rv);
    TextFindIndex                    = _module.dwrap('TextFindIndex',                    n2, rn);
    TextToUpper                      = _module.dwrap('TextToUpper',                      n1, rn);
    TextToLower                      = _module.dwrap('TextToLower',                      n1, rn);
    TextToPascal                     = _module.dwrap('TextToPascal',                     n1, rn);
    TextToSnake                      = _module.dwrap('TextToSnake',                      n1, rn);
    TextToCamel                      = _module.dwrap('TextToCamel',                      n1, rn);
    TextToInteger                    = _module.dwrap('TextToInteger',                    n1, rn);
    TextToFloat                      = _module.dwrap('TextToFloat',                      n1, rn);
    DrawLine3D                       = _module.dwrap('DrawLine3D',                       n3, rv);
    DrawPoint3D                      = _module.dwrap('DrawPoint3D',                      n2, rv);
    DrawCircle3D                     = _module.dwrap('DrawCircle3D',                     n5, rv);
    DrawTriangle3D                   = _module.dwrap('DrawTriangle3D',                   n4, rv);
    DrawTriangleStrip3D              = _module.dwrap('DrawTriangleStrip3D',              n3, rv);
    DrawCube                         = _module.dwrap('DrawCube',                         n5, rv);
    DrawCubeV                        = _module.dwrap('DrawCubeV',                        n3, rv);
    DrawCubeWires                    = _module.dwrap('DrawCubeWires',                    n5, rv);
    DrawCubeWiresV                   = _module.dwrap('DrawCubeWiresV',                   n3, rv);
    DrawSphere                       = _module.dwrap('DrawSphere',                       n3, rv);
    DrawSphereEx                     = _module.dwrap('DrawSphereEx',                     n5, rv);
    DrawSphereWires                  = _module.dwrap('DrawSphereWires',                  n5, rv);
    DrawCylinder                     = _module.dwrap('DrawCylinder',                     n6, rv);
    DrawCylinderEx                   = _module.dwrap('DrawCylinderEx',                   n6, rv);
    DrawCylinderWires                = _module.dwrap('DrawCylinderWires',                n6, rv);
    DrawCylinderWiresEx              = _module.dwrap('DrawCylinderWiresEx',              n6, rv);
    DrawCapsule                      = _module.dwrap('DrawCapsule',                      n6, rv);
    DrawCapsuleWires                 = _module.dwrap('DrawCapsuleWires',                 n6, rv);
    DrawPlane                        = _module.dwrap('DrawPlane',                        n3, rv);
    DrawRay                          = _module.dwrap('DrawRay',                          n2, rv);
    DrawGrid                         = _module.dwrap('DrawGrid',                         n2, rv);
    LoadModel                        = _module.dwrap('LoadModel',                        n2, rv);
    LoadModelFromMesh                = _module.dwrap('LoadModelFromMesh',                n2, rv);
    IsModelValid                     = _module.dwrap('IsModelValid',                     n1, rn);
    UnloadModel                      = _module.dwrap('UnloadModel',                      n1, rv);
    GetModelBoundingBox              = _module.dwrap('GetModelBoundingBox',              n2, rv);
    DrawModel                        = _module.dwrap('DrawModel',                        n4, rv);
    DrawModelEx                      = _module.dwrap('DrawModelEx',                      n6, rv);
    DrawModelWires                   = _module.dwrap('DrawModelWires',                   n4, rv);
    DrawModelWiresEx                 = _module.dwrap('DrawModelWiresEx',                 n6, rv);
    DrawBoundingBox                  = _module.dwrap('DrawBoundingBox',                  n2, rv);
    DrawBillboard                    = _module.dwrap('DrawBillboard',                    n5, rv);
    DrawBillboardRec                 = _module.dwrap('DrawBillboardRec',                 n6, rv);
    UploadMesh                       = _module.dwrap('UploadMesh',                       n2, rv);
    UpdateMeshBuffer                 = _module.dwrap('UpdateMeshBuffer',                 n5, rv);
    UnloadMesh                       = _module.dwrap('UnloadMesh',                       n1, rv);
    DrawMesh                         = _module.dwrap('DrawMesh',                         n3, rv);
    DrawMeshInstanced                = _module.dwrap('DrawMeshInstanced',                n4, rv);
    GetMeshBoundingBox               = _module.dwrap('GetMeshBoundingBox',               n2, rv);
    GenMeshTangents                  = _module.dwrap('GenMeshTangents',                  n1, rv);
    ExportMesh                       = _module.dwrap('ExportMesh',                       n2, rn);
    ExportMeshAsCode                 = _module.dwrap('ExportMeshAsCode',                 n2, rn);
    GenMeshPoly                      = _module.dwrap('GenMeshPoly',                      n3, rv);
    GenMeshPlane                     = _module.dwrap('GenMeshPlane',                     n5, rv);
    GenMeshCube                      = _module.dwrap('GenMeshCube',                      n4, rv);
    GenMeshSphere                    = _module.dwrap('GenMeshSphere',                    n4, rv);
    GenMeshHemiSphere                = _module.dwrap('GenMeshHemiSphere',                n4, rv);
    GenMeshCylinder                  = _module.dwrap('GenMeshCylinder',                  n4, rv);
    GenMeshCone                      = _module.dwrap('GenMeshCone',                      n4, rv);
    GenMeshTorus                     = _module.dwrap('GenMeshTorus',                     n5, rv);
    GenMeshKnot                      = _module.dwrap('GenMeshKnot',                      n5, rv);
    GenMeshHeightmap                 = _module.dwrap('GenMeshHeightmap',                 n3, rv);
    GenMeshCubicmap                  = _module.dwrap('GenMeshCubicmap',                  n3, rv);
    LoadMaterials                    = _module.dwrap('LoadMaterials',                    n2, rn);
    LoadMaterialDefault              = _module.dwrap('LoadMaterialDefault',              n1, rv);
    IsMaterialValid                  = _module.dwrap('IsMaterialValid',                  n1, rn);
    UnloadMaterial                   = _module.dwrap('UnloadMaterial',                   n1, rv);
    SetMaterialTexture               = _module.dwrap('SetMaterialTexture',               n3, rv);
    SetModelMeshMaterial             = _module.dwrap('SetModelMeshMaterial',             n3, rv);
    LoadModelAnimations              = _module.dwrap('LoadModelAnimations',              n2, rn);
    UpdateModelAnimation             = _module.dwrap('UpdateModelAnimation',             n3, rv);
    UpdateModelAnimationEx           = _module.dwrap('UpdateModelAnimationEx',           n6, rv);
    UnloadModelAnimations            = _module.dwrap('UnloadModelAnimations',            n2, rv);
    IsModelAnimationValid            = _module.dwrap('IsModelAnimationValid',            n2, rn);
    CheckCollisionSpheres            = _module.dwrap('CheckCollisionSpheres',            n4, rn);
    CheckCollisionBoxes              = _module.dwrap('CheckCollisionBoxes',              n2, rn);
    CheckCollisionBoxSphere          = _module.dwrap('CheckCollisionBoxSphere',          n3, rn);
    GetRayCollisionSphere            = _module.dwrap('GetRayCollisionSphere',            n4, rv);
    GetRayCollisionBox               = _module.dwrap('GetRayCollisionBox',               n3, rv);
    GetRayCollisionMesh              = _module.dwrap('GetRayCollisionMesh',              n4, rv);
    GetRayCollisionTriangle          = _module.dwrap('GetRayCollisionTriangle',          n5, rv);
    GetRayCollisionQuad              = _module.dwrap('GetRayCollisionQuad',              n6, rv);
  }
}