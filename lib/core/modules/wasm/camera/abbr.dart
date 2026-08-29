import 'dart:js_interop';
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibCamera get _module => Raylib.instance.Camera;

JSFunction get GetCameraForward => _module.GetCameraForward;
JSFunction get GetCameraUp => _module.GetCameraUp;
JSFunction get GetCameraRight => _module.GetCameraRight;
JSFunction get CameraMoveForward => _module.CameraMoveForward;
JSFunction get CameraMoveUp => _module.CameraMoveUp;
JSFunction get CameraMoveRight => _module.CameraMoveRight;
JSFunction get CameraMoveToTarget => _module.CameraMoveToTarget;
JSFunction get CameraYaw => _module.CameraYaw;
JSFunction get CameraPitch => _module.CameraPitch;
JSFunction get CameraRoll => _module.CameraRoll;
JSFunction get GetCameraViewMatrix => _module.GetCameraViewMatrix;
JSFunction get GetCameraProjectionMatrix => _module.GetCameraProjectionMatrix;