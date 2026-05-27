part of '../../raylib_dartified_web.dart';

class RaylibCamera extends RaylibModuleWasm {
  late final JSFunction GetCameraForward;
  late final JSFunction GetCameraUp;
  late final JSFunction GetCameraRight;
  late final JSFunction CameraMoveForward;
  late final JSFunction CameraMoveUp;
  late final JSFunction CameraMoveRight;
  late final JSFunction CameraMoveToTarget;
  late final JSFunction CameraYaw;
  late final JSFunction CameraPitch;
  late final JSFunction CameraRoll;
  late final JSFunction GetCameraViewMatrix;
  late final JSFunction GetCameraProjectionMatrix;

  RaylibCamera(super.rl) {
    GetCameraForward = _module.dwrap('GetCameraForward', [n, n]);
    GetCameraUp = _module.dwrap('GetCameraUp', [n, n]);
    GetCameraRight = _module.dwrap('GetCameraRight', [n, n]);
    CameraMoveForward = _module.dwrap('CameraMoveForward', [n, n, n]);
    CameraMoveUp = _module.dwrap('CameraMoveUp', [n, n]);
    CameraMoveRight = _module.dwrap('CameraMoveRight', [n, n, n]);
    CameraMoveToTarget = _module.dwrap('CameraMoveToTarget', [n, n]);
    CameraYaw = _module.dwrap('CameraYaw', [n, n, n]);
    CameraPitch = _module.dwrap('CameraPitch', [n, n, n, n, n]);
    CameraRoll = _module.dwrap('CameraRoll', [n, n]);
    GetCameraViewMatrix = _module.dwrap('GetCameraViewMatrix', [n, n]);
    GetCameraProjectionMatrix = _module.dwrap('GetCameraProjectionMatrix', [n, n, n]);
  }
}