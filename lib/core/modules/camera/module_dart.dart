part of '../../raylib_dartified_web.dart';

class RaylibCameraD extends RaylibCameraModuleBase<
  Raylib,

  // types
  Camera3DD,
  MatrixD,
  QuaternionD,
  Vector3D,
  Vector4D
  
> {

  RaylibCameraD(super.rl);

  @override
  Vector3D GetCameraForward(
    Camera3DD camera,
  ) => run(
    () => RaylibDebugLabels.GetCameraForward(camera),
    () => rl.Temp.Vector3$.Extract1(
      (p) => rl.Camera.GetCameraForward.run2(
        p.toJS,
        rl.Temp.Camera3D$.Ref1(camera).toJS,
      ),
    ),
  );

  @override
  Vector3D GetCameraUp(
    Camera3DD camera,
  ) => run(
    () => RaylibDebugLabels.GetCameraUp(camera),
    () => rl.Temp.Vector3$.Extract1(
      (p) => rl.Camera.GetCameraUp.run2(
        p.toJS,
        rl.Temp.Camera3D$.Ref1(camera).toJS,
      ),
    ),
  );

  @override
  Vector3D GetCameraRight(
    Camera3DD camera,
  ) => run(
    () => RaylibDebugLabels.GetCameraRight(camera),
    () => rl.Temp.Vector3$.Extract1(
      (p) => rl.Camera.GetCameraRight.run2(
        p.toJS,
        rl.Temp.Camera3D$.Ref1(camera).toJS,
      ),
    ),
  );

  @override
  void CameraMoveForward(
    Camera3DD camera,
    num distance,
    bool moveInWorldPlane,
  ) => run(
    () => RaylibDebugLabels.CameraMoveForward(camera, distance, moveInWorldPlane),
    () => rl.Temp.Camera3D$.RefUpdate1(camera,
      (pc) => rl.Camera.CameraMoveForward.run3(
        pc.toJS,
        distance.toJS,
        moveInWorldPlane.toJS,
      ),
    ),
  );

  @override
  void CameraMoveUp(
    Camera3DD camera,
    num distance,
  ) => run(
    () => RaylibDebugLabels.CameraMoveUp(camera, distance),
    () => rl.Temp.Camera3D$.RefUpdate1(camera,
      (pc) => rl.Camera.CameraMoveUp.run2(
        pc.toJS,
        distance.toJS,
      ),
    ),
  );

  @override
  void CameraMoveRight(
    Camera3DD camera,
    num distance,
    bool moveInWorldPlane,
  ) => run(
    () => RaylibDebugLabels.CameraMoveRight(camera, distance, moveInWorldPlane),
    () => rl.Temp.Camera3D$.RefUpdate1(camera,
      (pc) => rl.Camera.CameraMoveRight.run3(
        pc.toJS,
        distance.toJS,
        moveInWorldPlane.toJS,
      ),
    ),
  );

  @override
  void CameraMoveToTarget(
    Camera3DD camera,
    num delta,
  ) => run(
    () => RaylibDebugLabels.CameraMoveToTarget(camera, delta),
    () => rl.Temp.Camera3D$.RefUpdate1(camera,
      (pc) => rl.Camera.CameraMoveToTarget.run2(
        pc.toJS,
        delta.toJS,
      ),
    ),
  );

  @override
  void CameraYaw(
    Camera3DD camera,
    num angle,
    bool rotateAroundTarget,
  ) => run(
    () => RaylibDebugLabels.CameraYaw(camera, angle, rotateAroundTarget),
    () => rl.Temp.Camera3D$.RefUpdate1(camera,
      (pc) => rl.Camera.CameraYaw.run3(
        pc.toJS,
        angle.toJS,
        rotateAroundTarget.toJS,
      ),
    ),
  );

  @override
  void CameraPitch(
    Camera3DD camera,
    num angle,
    bool lockView,
    bool rotateAroundTarget,
    bool rotateUp,
  ) => run(
    () => RaylibDebugLabels.CameraPitch(camera, angle, lockView, rotateAroundTarget, rotateUp),
    () => rl.Temp.Camera3D$.RefUpdate1(camera,
      (pc) => rl.Camera.CameraPitch.run5(
        pc.toJS,
        angle.toJS,
        lockView.toJS,
        rotateAroundTarget.toJS,
        rotateUp.toJS,
      ),
    ),
  );

  @override
  void CameraRoll(
    Camera3DD camera,
    num angle,
  ) => run(
    () => RaylibDebugLabels.CameraRoll(camera, angle),
    () => rl.Temp.Camera3D$.RefUpdate1(camera,
      (pc) => rl.Camera.CameraRoll.run2(
        pc.toJS,
        angle.toJS,
      ),
    ),
  );

  @override
  MatrixD GetCameraViewMatrix(
    Camera3DD camera,
  ) => run(
    () => RaylibDebugLabels.GetCameraViewMatrix(camera),
    () => rl.Temp.Matrix$.Extract1(
      (p) => rl.Camera.GetCameraViewMatrix.run2(
        p.toJS,
        rl.Temp.Camera3D$.Ref1(camera).toJS,
      ),
    ),
  );

  @override
  MatrixD GetCameraProjectionMatrix(
    Camera3DD camera,
    num aspect,
  ) => run(
    () => RaylibDebugLabels.GetCameraProjectionMatrix(camera, aspect),
    () => rl.Temp.Matrix$.Extract1(
      (p) => rl.Camera.GetCameraProjectionMatrix.run3(
        p.toJS,
        rl.Temp.Camera3D$.Ref1(camera).toJS,
        aspect.toJS,
      ),
    ),
  );
}