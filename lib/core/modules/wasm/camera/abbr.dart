import 'dart:js_interop';
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibCamera get _module => Raylib.instance.module();

/// See [RaylibCamera.GetCameraForward].
JSFunction get GetCameraForward => _module.GetCameraForward;
/// See [RaylibCamera.GetCameraUp].
JSFunction get GetCameraUp => _module.GetCameraUp;
/// See [RaylibCamera.GetCameraRight].
JSFunction get GetCameraRight => _module.GetCameraRight;
/// See [RaylibCamera.CameraMoveForward].
JSFunction get CameraMoveForward => _module.CameraMoveForward;
/// See [RaylibCamera.CameraMoveUp].
JSFunction get CameraMoveUp => _module.CameraMoveUp;
/// See [RaylibCamera.CameraMoveRight].
JSFunction get CameraMoveRight => _module.CameraMoveRight;
/// See [RaylibCamera.CameraMoveToTarget].
JSFunction get CameraMoveToTarget => _module.CameraMoveToTarget;
/// See [RaylibCamera.CameraYaw].
JSFunction get CameraYaw => _module.CameraYaw;
/// See [RaylibCamera.CameraPitch].
JSFunction get CameraPitch => _module.CameraPitch;
/// See [RaylibCamera.CameraRoll].
JSFunction get CameraRoll => _module.CameraRoll;
/// See [RaylibCamera.GetCameraViewMatrix].
JSFunction get GetCameraViewMatrix => _module.GetCameraViewMatrix;
/// See [RaylibCamera.GetCameraProjectionMatrix].
JSFunction get GetCameraProjectionMatrix => _module.GetCameraProjectionMatrix;