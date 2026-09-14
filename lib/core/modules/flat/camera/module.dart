part of '../../../raylib_dartified_web.dart';

class RaylibCameraFlat extends RaylibCameraFlatModule<Raylib> {

  RaylibCameraFlat(super.rl);

  RaylibCamera get _wasm => rl.module();

  @override
  Vector3D GetCameraForward(
    StructPointer<Camera3DD> camera,
  ) => rl.Temp.Vector3$.Extract1(
    (p) => _wasm.GetCameraForward.run([
      p.toJS,
      camera.toJS,
    ]),
  );

  @override
  Vector3D GetCameraUp(
    StructPointer<Camera3DD> camera,
  ) => rl.Temp.Vector3$.Extract1(
    (p) => _wasm.GetCameraUp.run([
      p.toJS,
      camera.toJS,
    ]),
  );

  @override
  Vector3D GetCameraRight(
    StructPointer<Camera3DD> camera,
  ) => rl.Temp.Vector3$.Extract1(
    (p) => _wasm.GetCameraRight.run([
      p.toJS,
      camera.toJS,
    ]),
  );

  @override
  void CameraMoveForward(
    StructPointer<Camera3DD> camera,
    double distance,
    bool moveInWorldPlane,
  ) => _wasm.CameraMoveForward.run([
    camera.toJS,
    distance.toJS,
    moveInWorldPlane.toJS,
  ]);

  @override
  void CameraMoveUp(
    StructPointer<Camera3DD> camera,
    double distance,
  ) => _wasm.CameraMoveUp.run([
    camera.toJS,
    distance.toJS,
  ]);

  @override
  void CameraMoveRight(
    StructPointer<Camera3DD> camera,
    double distance,
    bool moveInWorldPlane,
  ) => _wasm.CameraMoveRight.run([
    camera.toJS,
    distance.toJS,
    moveInWorldPlane.toJS,
  ]);

  @override
  void CameraMoveToTarget(
    StructPointer<Camera3DD> camera,
    double delta,
  ) => _wasm.CameraMoveToTarget.run([
    camera.toJS,
    delta.toJS,
  ]);

  @override
  void CameraYaw(
    StructPointer<Camera3DD> camera,
    double angle,
    bool rotateAroundTarget,
  ) => _wasm.CameraYaw.run([
    camera.toJS,
    angle.toJS,
    rotateAroundTarget.toJS,
  ]);

  @override
  void CameraPitch(
    StructPointer<Camera3DD> camera,
    double angle,
    bool lockView,
    bool rotateAroundTarget,
    bool rotateUp,
  ) => _wasm.CameraPitch.run([
    camera.toJS,
    angle.toJS,
    lockView.toJS,
    rotateAroundTarget.toJS,
    rotateUp.toJS,
  ]);

  @override
  void CameraRoll(
    StructPointer<Camera3DD> camera,
    double angle,
  ) => _wasm.CameraRoll.run([
    camera.toJS,
    angle.toJS,
  ]);

  @override
  MatrixD GetCameraViewMatrix(
    StructPointer<Camera3DD> camera,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.GetCameraViewMatrix.run([
      p.toJS,
      camera.toJS,
    ]),
  );

  @override
  MatrixD GetCameraProjectionMatrix(
    StructPointer<Camera3DD> camera,
    double aspect,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.GetCameraProjectionMatrix.run([
      p.toJS,
      camera.toJS,
      aspect.toJS,
    ]),
  );
}