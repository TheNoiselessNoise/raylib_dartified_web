part of '../../../../raylib_dartified_web.dart';

class RaylibMatrixExtFlat extends RaylibMatrixFlatExt<Raylib> {
  RaylibMatrixExtFlat(super.rl);

  RaylibMatrixExt get _wasm => rl.module();

  @override
  double MatrixDeterminant(
    MatrixD mat,
  ) => _wasm.MatrixDeterminant(
    $.Matrix$.Ref1(mat).toJS,
  );

  @override
  double MatrixTrace(
    MatrixD mat,
  ) => _wasm.MatrixTrace(
    $.Matrix$.Ref1(mat).toJS,
  );

  @override
  MatrixD MatrixTranspose(
    MatrixD mat,
  ) => $.Matrix$.Extract2(
    (p) => _wasm.MatrixTranspose(
      p.toJS,
      $.Matrix$.Ref1(mat).toJS,
    ),
  );

  @override
  MatrixD MatrixInvert(
    MatrixD mat,
  ) => $.Matrix$.Extract2(
    (p) => _wasm.MatrixInvert(
      p.toJS,
      $.Matrix$.Ref1(mat).toJS,
    ),
  );

  @override
  MatrixD MatrixIdentity() => $.Matrix$.Extract1(
    (p) => _wasm.MatrixIdentity(
      p.toJS,
    ),
  );

  @override
  MatrixD MatrixAdd(
    MatrixD left,
    MatrixD right,
  ) => $.Matrix$.Extract3(
    (p) => _wasm.MatrixAdd(
      p.toJS,
      $.Matrix$.Ref1(left).toJS,
      $.Matrix$.Ref2(right).toJS,
    ),
  );

  @override
  MatrixD MatrixSubtract(
    MatrixD left,
    MatrixD right,
  ) => $.Matrix$.Extract3(
    (p) => _wasm.MatrixSubtract(
      p.toJS,
      $.Matrix$.Ref1(left).toJS,
      $.Matrix$.Ref2(right).toJS,
    ),
  );

  @override
  MatrixD MatrixMultiply(
    MatrixD left,
    MatrixD right,
  ) => $.Matrix$.Extract3(
    (p) => _wasm.MatrixMultiply(
      p.toJS,
      $.Matrix$.Ref1(left).toJS,
      $.Matrix$.Ref2(right).toJS,
    ),
  );

  @override
  MatrixD MatrixMultiplyValue(
    MatrixD left,
    double value,
  ) => $.Matrix$.Extract2(
    (p) => _wasm.MatrixMultiplyValue(
      p.toJS,
      $.Matrix$.Ref1(left).toJS,
      value.toJS,
    ),
  );

  @override
  MatrixD MatrixTranslate(
    double x,
    double y,
    double z,
  ) => $.Matrix$.Extract1(
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
  ) => $.Matrix$.Extract1(
    (p) => _wasm.MatrixRotate(
      p.toJS,
      $.Vector3$.Ref1(axis).toJS,
      angle.toJS,
    ),
  );

  @override
  MatrixD MatrixRotateX(
    double angle,
  ) => $.Matrix$.Extract1(
    (p) => _wasm.MatrixRotateX(
      p.toJS,
      angle.toJS,
    ),
  );

  @override
  MatrixD MatrixRotateY(
    double angle,
  ) => $.Matrix$.Extract1(
    (p) => _wasm.MatrixRotateY(
      p.toJS,
      angle.toJS,
    ),
  );

  @override
  MatrixD MatrixRotateZ(
    double angle,
  ) => $.Matrix$.Extract1(
    (p) => _wasm.MatrixRotateZ(
      p.toJS,
      angle.toJS,
    ),
  );

  @override
  MatrixD MatrixRotateXYZ(
    Vector3D angle,
  ) => $.Matrix$.Extract1(
    (p) => _wasm.MatrixRotateXYZ(
      p.toJS,
      $.Vector3$.Ref1(angle).toJS,
    ),
  );

  @override
  MatrixD MatrixRotateZYX(
    Vector3D angle,
  ) => $.Matrix$.Extract1(
    (p) => _wasm.MatrixRotateZYX(
      p.toJS,
      $.Vector3$.Ref1(angle).toJS,
    ),
  );

  @override
  MatrixD MatrixScale(
    double x,
    double y,
    double z,
  ) => $.Matrix$.Extract1(
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
  ) => $.Matrix$.Extract1(
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
  ) => $.Matrix$.Extract1(
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
  ) => $.Matrix$.Extract1(
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
  ) => $.Matrix$.Extract1(
    (p) => _wasm.MatrixLookAt(
      p.toJS,
      $.Vector3$.Ref1(eye).toJS,
      $.Vector3$.Ref2(target).toJS,
      $.Vector3$.Ref3(up).toJS,
    ),
  );

  @override
  float16D MatrixToFloatV(
    MatrixD mat,
  ) => $.float16$.Extract1(
    (p) => _wasm.MatrixToFloatV(
      p.toJS,
      $.Matrix$.Ref1(mat).toJS,
    ),
  );

  @override
  MatrixD MatrixCompose(
    Vector3D translation,
    QuaternionD rotation,
    Vector3D scale,
  ) => $.Matrix$.Extract1(
    (p) => _wasm.MatrixCompose(
      p.toJS,
      $.Vector3$.Ref1(translation).toJS,
      $.Quaternion$.Ref1(rotation).toJS,
      $.Vector3$.Ref2(scale).toJS,
    ),
  );

  @override
  void MatrixDecompose(
    MatrixD mat,
    StructPointer<Vector3D> translation,
    StructPointer<QuaternionD> rotation,
    StructPointer<Vector3D> scale,
  ) => _wasm.MatrixDecompose(
    $.Matrix$.Ref1(mat).toJS,
    translation.toJS,
    rotation.toJS,
    scale.toJS,
  );
}
