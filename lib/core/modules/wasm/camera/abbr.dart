import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibCamera get _module => Raylib.instance.module();

/// See [RaylibCamera.GetCameraForward].
WF2<void> get GetCameraForward => _module.GetCameraForward;
/// See [RaylibCamera.GetCameraUp].
WF2<void> get GetCameraUp => _module.GetCameraUp;
/// See [RaylibCamera.GetCameraRight].
WF2<void> get GetCameraRight => _module.GetCameraRight;
/// See [RaylibCamera.CameraMoveForward].
WF3<void> get CameraMoveForward => _module.CameraMoveForward;
/// See [RaylibCamera.CameraMoveUp].
WF2<void> get CameraMoveUp => _module.CameraMoveUp;
/// See [RaylibCamera.CameraMoveRight].
WF3<void> get CameraMoveRight => _module.CameraMoveRight;
/// See [RaylibCamera.CameraMoveToTarget].
WF2<void> get CameraMoveToTarget => _module.CameraMoveToTarget;
/// See [RaylibCamera.CameraYaw].
WF3<void> get CameraYaw => _module.CameraYaw;
/// See [RaylibCamera.CameraPitch].
WF5<void> get CameraPitch => _module.CameraPitch;
/// See [RaylibCamera.CameraRoll].
WF2<void> get CameraRoll => _module.CameraRoll;
/// See [RaylibCamera.GetCameraViewMatrix].
WF2<void> get GetCameraViewMatrix => _module.GetCameraViewMatrix;
/// See [RaylibCamera.GetCameraProjectionMatrix].
WF3<void> get GetCameraProjectionMatrix => _module.GetCameraProjectionMatrix;