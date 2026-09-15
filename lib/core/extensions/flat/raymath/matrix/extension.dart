part of '../../../../raylib_dartified_web.dart';

class RaylibMatrixExtFlat extends RaylibMatrixFlatExt<Raylib> {
  RaylibMatrixExtFlat(super.rl);

  RaylibMatrixExt get _wasm => rl.module();

  @override
  double MatrixDeterminant(
    MatrixD mat,
  ) => _wasm.MatrixDeterminant(
    rl.Temp.Matrix$.Ref1(mat).toJS,
  );

  @override
  double MatrixTrace(
    MatrixD mat,
  ) => _wasm.MatrixTrace(
    rl.Temp.Matrix$.Ref1(mat).toJS,
  );

  @override
  MatrixD MatrixTranspose(
    MatrixD mat,
  ) => rl.Temp.Matrix$.Extract2(
    (p) => _wasm.MatrixTranspose(
      p.toJS,
      rl.Temp.Matrix$.Ref1(mat).toJS,
    ),
  );

  @override
  MatrixD MatrixInvert(
    MatrixD mat,
  ) => rl.Temp.Matrix$.Extract2(
    (p) => _wasm.MatrixInvert(
      p.toJS,
      rl.Temp.Matrix$.Ref1(mat).toJS,
    ),
  );

  @override
  MatrixD MatrixIdentity() => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.MatrixIdentity(
      p.toJS,
    ),
  );

  @override
  MatrixD MatrixAdd(
    MatrixD left,
    MatrixD right,
  ) => rl.Temp.Matrix$.Extract3(
    (p) => _wasm.MatrixAdd(
      p.toJS,
      rl.Temp.Matrix$.Ref1(left).toJS,
      rl.Temp.Matrix$.Ref2(right).toJS,
    ),
  );

  @override
  MatrixD MatrixSubtract(
    MatrixD left,
    MatrixD right,
  ) => rl.Temp.Matrix$.Extract3(
    (p) => _wasm.MatrixSubtract(
      p.toJS,
      rl.Temp.Matrix$.Ref1(left).toJS,
      rl.Temp.Matrix$.Ref2(right).toJS,
    ),
  );

  @override
  MatrixD MatrixMultiply(
    MatrixD left,
    MatrixD right,
  ) => rl.Temp.Matrix$.Extract3(
    (p) => _wasm.MatrixMultiply(
      p.toJS,
      rl.Temp.Matrix$.Ref1(left).toJS,
      rl.Temp.Matrix$.Ref2(right).toJS,
    ),
  );

  @override
  MatrixD MatrixMultiplyValue(
    MatrixD left,
    double value,
  ) => rl.Temp.Matrix$.Extract2(
    (p) => _wasm.MatrixMultiplyValue(
      p.toJS,
      rl.Temp.Matrix$.Ref1(left).toJS,
      value.toJS,
    ),
  );

  @override
  MatrixD MatrixTranslate(
    double x,
    double y,
    double z,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.MatrixTranslate(
      p.toJS,
      x.toJS,
      y.toJS,
      z.toJS,
    ),
  );

  @override
  MatrixD MatrixRotate(
    Vector3D axis,
    double angle,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.MatrixRotate(
      p.toJS,
      rl.Temp.Vector3$.Ref1(axis).toJS,
      angle.toJS,
    ),
  );

  @override
  MatrixD MatrixRotateX(
    double angle,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.MatrixRotateX(
      p.toJS,
      angle.toJS,
    ),
  );

  @override
  MatrixD MatrixRotateY(
    double angle,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.MatrixRotateY(
      p.toJS,
      angle.toJS,
    ),
  );

  @override
  MatrixD MatrixRotateZ(
    double angle,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.MatrixRotateZ(
      p.toJS,
      angle.toJS,
    ),
  );

  @override
  MatrixD MatrixRotateXYZ(
    Vector3D angle,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.MatrixRotateXYZ(
      p.toJS,
      rl.Temp.Vector3$.Ref1(angle).toJS,
    ),
  );

  @override
  MatrixD MatrixRotateZYX(
    Vector3D angle,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.MatrixRotateZYX(
      p.toJS,
      rl.Temp.Vector3$.Ref1(angle).toJS,
    ),
  );

  @override
  MatrixD MatrixScale(
    double x,
    double y,
    double z,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.MatrixScale(
      p.toJS,
      x.toJS,
      y.toJS,
      z.toJS,
    ),
  );

  @override
  MatrixD MatrixFrustum(
    double left,
    double right,
    double bottom,
    double top,
    double nearPlane,
    double farPlane,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.MatrixFrustum(
      p.toJS,
      left.toJS,
      right.toJS,
      bottom.toJS,
      top.toJS,
      nearPlane.toJS,
      farPlane.toJS,
    ),
  );

  @override
  MatrixD MatrixPerspective(
    double fovY,
    double aspect,
    double nearPlane,
    double farPlane,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.MatrixPerspective(
      p.toJS,
      fovY.toJS,
      aspect.toJS,
      nearPlane.toJS,
      farPlane.toJS,
    ),
  );

  @override
  MatrixD MatrixOrtho(
    double left,
    double right,
    double bottom,
    double top,
    double nearPlane,
    double farPlane,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.MatrixOrtho(
      p.toJS,
      left.toJS,
      right.toJS,
      bottom.toJS,
      top.toJS,
      nearPlane.toJS,
      farPlane.toJS,
    ),
  );

  @override
  MatrixD MatrixLookAt(
    Vector3D eye,
    Vector3D target,
    Vector3D up,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.MatrixLookAt(
      p.toJS,
      rl.Temp.Vector3$.Ref1(eye).toJS,
      rl.Temp.Vector3$.Ref2(target).toJS,
      rl.Temp.Vector3$.Ref3(up).toJS,
    ),
  );

  @override
  float16D MatrixToFloatV(
    MatrixD mat,
  ) => rl.Temp.float16$.Extract1(
    (p) => _wasm.MatrixToFloatV(
      p.toJS,
      rl.Temp.Matrix$.Ref1(mat).toJS,
    ),
  );

  @override
  MatrixD MatrixCompose(
    Vector3D translation,
    QuaternionD rotation,
    Vector3D scale,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.MatrixCompose(
      p.toJS,
      rl.Temp.Vector3$.Ref1(translation).toJS,
      rl.Temp.Quaternion$.Ref1(rotation).toJS,
      rl.Temp.Vector3$.Ref2(scale).toJS,
    ),
  );

  @override
  void MatrixDecompose(
    MatrixD mat,
    StructPointer<Vector3D> translation,
    StructPointer<QuaternionD> rotation,
    StructPointer<Vector3D> scale,
  ) => _wasm.MatrixDecompose(
    rl.Temp.Matrix$.Ref1(mat).toJS,
    translation.toJS,
    rotation.toJS,
    scale.toJS,
  );
}
