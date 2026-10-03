part of '../../../raylib_dartified_web.dart';

class RaylibCameraFlatWeb extends RaylibCameraFlat<Raylib> {

  RaylibCameraFlatWeb(super.rl);

  RaylibCamera get _wasm => rl.module();

  @override
  Vector3 GetCameraForward(
    StructPointer<Camera3D> camera,
  ) => Vector3$.Extract1(
    (p) => _wasm.GetCameraForward(
      p.toJS,
      camera.toJS,
    ),
  );

  @override
  Vector3 GetCameraUp(
    StructPointer<Camera3D> camera,
  ) => Vector3$.Extract1(
    (p) => _wasm.GetCameraUp(
      p.toJS,
      camera.toJS,
    ),
  );

  @override
  Vector3 GetCameraRight(
    StructPointer<Camera3D> camera,
  ) => Vector3$.Extract1(
    (p) => _wasm.GetCameraRight(
      p.toJS,
      camera.toJS,
    ),
  );

  @override
  void CameraMoveForward(
    StructPointer<Camera3D> camera,
    double distance,
    bool moveInWorldPlane,
  ) => _wasm.CameraMoveForward(
    camera.toJS,
    distance.toJS,
    moveInWorldPlane.toJS,
  );

  @override
  void CameraMoveUp(
    StructPointer<Camera3D> camera,
    double distance,
  ) => _wasm.CameraMoveUp(
    camera.toJS,
    distance.toJS,
  );

  @override
  void CameraMoveRight(
    StructPointer<Camera3D> camera,
    double distance,
    bool moveInWorldPlane,
  ) => _wasm.CameraMoveRight(
    camera.toJS,
    distance.toJS,
    moveInWorldPlane.toJS,
  );

  @override
  void CameraMoveToTarget(
    StructPointer<Camera3D> camera,
    double delta,
  ) => _wasm.CameraMoveToTarget(
    camera.toJS,
    delta.toJS,
  );

  @override
  void CameraYaw(
    StructPointer<Camera3D> camera,
    double angle,
    bool rotateAroundTarget,
  ) => _wasm.CameraYaw(
    camera.toJS,
    angle.toJS,
    rotateAroundTarget.toJS,
  );

  @override
  void CameraPitch(
    StructPointer<Camera3D> camera,
    double angle,
    bool lockView,
    bool rotateAroundTarget,
    bool rotateUp,
  ) => _wasm.CameraPitch(
    camera.toJS,
    angle.toJS,
    lockView.toJS,
    rotateAroundTarget.toJS,
    rotateUp.toJS,
  );

  @override
  void CameraRoll(
    StructPointer<Camera3D> camera,
    double angle,
  ) => _wasm.CameraRoll(
    camera.toJS,
    angle.toJS,
  );

  @override
  Matrix GetCameraViewMatrix(
    StructPointer<Camera3D> camera,
  ) => Matrix$.Extract1(
    (p) => _wasm.GetCameraViewMatrix(
      p.toJS,
      camera.toJS,
    ),
  );

  @override
  Matrix GetCameraProjectionMatrix(
    StructPointer<Camera3D> camera,
    double aspect,
  ) => Matrix$.Extract1(
    (p) => _wasm.GetCameraProjectionMatrix(
      p.toJS,
      camera.toJS,
      aspect.toJS,
    ),
  );
}