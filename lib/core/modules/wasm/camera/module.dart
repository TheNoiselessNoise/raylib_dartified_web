part of '../../../raylib_dartified_web.dart';

class RaylibCamera extends RaylibModuleWasm {
  /// Returns the forward vector (normalized) of [camera].
  late final JSFunction GetCameraForward;
  /// Returns the up vector (normalized) of [camera].
  /// 
  /// The up vector might not be perpendicular to the forward vector.
  late final JSFunction GetCameraUp;
  /// Returns the right vector (normalized) of [camera].
  late final JSFunction GetCameraRight;
  /// Moves the [camera] in its forward direction by [distance].
  ///
  /// If [moveInWorldPlane] is `true`, movement is constrained to the XZ plane
  /// regardless of the camera's pitch.
  late final JSFunction CameraMoveForward;
  /// Moves the [camera] in its up direction by [distance].
  late final JSFunction CameraMoveUp;
  /// Moves the [camera] target in its current right direction by [distance].
  ///
  /// If [moveInWorldPlane] is `true`, movement is constrained to the XZ plane
  /// regardless of the camera's pitch.
  late final JSFunction CameraMoveRight;
  /// Moves [camera] closer to or further from its target by [delta].
  late final JSFunction CameraMoveToTarget;
  /// Rotates [camera] around its up vector by [angle] radians.
  ///
  /// Yaw is "looking left and right".
  ///
  /// If [rotateAroundTarget] is `true`, the camera orbits its target;
  /// otherwise it rotates in place.
  late final JSFunction CameraYaw;
  /// Rotates [camera] around its right vector by [angle] radians.
  /// 
  /// Pitch is "looking up and down".
  ///
  /// If [lockView] is `true`, pitch is clamped to prevent flipping.
  /// 
  /// If [rotateAroundTarget] is `true`, the camera orbits its target;
  /// otherwise it rotates in place.
  /// 
  /// If [rotateUp] is `true`, the up vector is rotated as well (typically useful in [CameraMode.CAMERA_FREE]).
  late final JSFunction CameraPitch;
  /// Rotates [camera] around its forward vector by [angle] radians.
  /// 
  /// Roll is "turning your head sideways to the left or right"
  late final JSFunction CameraRoll;
  /// Returns the view matrix for [camera].
  late final JSFunction GetCameraViewMatrix;
  /// Returns the projection matrix for [camera] with the given [aspect] ratio.
  late final JSFunction GetCameraProjectionMatrix;

  RaylibCamera(super.rl) {
    GetCameraForward          = _module.dwrap('GetCameraForward',          n2, rv);
    GetCameraUp               = _module.dwrap('GetCameraUp',               n2, rv);
    GetCameraRight            = _module.dwrap('GetCameraRight',            n2, rv);
    CameraMoveForward         = _module.dwrap('CameraMoveForward',         n3, rv);
    CameraMoveUp              = _module.dwrap('CameraMoveUp',              n2, rv);
    CameraMoveRight           = _module.dwrap('CameraMoveRight',           n3, rv);
    CameraMoveToTarget        = _module.dwrap('CameraMoveToTarget',        n2, rv);
    CameraYaw                 = _module.dwrap('CameraYaw',                 n3, rv);
    CameraPitch               = _module.dwrap('CameraPitch',               n5, rv);
    CameraRoll                = _module.dwrap('CameraRoll',                n2, rv);
    GetCameraViewMatrix       = _module.dwrap('GetCameraViewMatrix',       n2, rv);
    GetCameraProjectionMatrix = _module.dwrap('GetCameraProjectionMatrix', n3, rv);
  }
}