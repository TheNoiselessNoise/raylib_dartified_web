part of '../../../../raylib_dartified_web.dart';

class RaylibVector3ExtFlat extends RaylibVector3FlatExt<Raylib> {
  RaylibVector3ExtFlat(super.rl);

  RaylibVector3Ext get _wasm => rl.module();

  @override
  Vector3D Vector3Zero() => $.Vector3$.Extract1(
    (p) => _wasm.Vector3Zero(
      p.toJS,
    ),
  );

  @override
  Vector3D Vector3One() => $.Vector3$.Extract3(
    (p) => _wasm.Vector3One(
      p.toJS,
    ),
  );

  @override
  Vector3D Vector3Add(
    Vector3D v1,
    Vector3D v2,
  ) => $.Vector3$.Extract3(
    (p) => _wasm.Vector3Add(
      p.toJS,
      $.Vector3$.Ref1(v1).toJS,
      $.Vector3$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector3D Vector3AddValue(
    Vector3D v,
    double add,
  ) => $.Vector3$.Extract2(
    (p) => _wasm.Vector3AddValue(
      p.toJS,
      $.Vector3$.Ref1(v).toJS,
      add.toJS,
    ),
  );

  @override
  Vector3D Vector3Subtract(
    Vector3D v1,
    Vector3D v2,
  ) => $.Vector3$.Extract3(
    (p) => _wasm.Vector3Subtract(
      p.toJS,
      $.Vector3$.Ref1(v1).toJS,
      $.Vector3$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector3D Vector3SubtractValue(
    Vector3D v,
    double sub,
  ) => $.Vector3$.Extract2(
    (p) => _wasm.Vector3SubtractValue(
      p.toJS,
      $.Vector3$.Ref1(v).toJS,
      sub.toJS,
    ),
  );

  @override
  Vector3D Vector3Scale(
    Vector3D v,
    double scalar,
  ) => $.Vector3$.Extract2(
    (p) => _wasm.Vector3Scale(
      p.toJS,
      $.Vector3$.Ref1(v).toJS,
      scalar.toJS,
    ),
  );

  @override
  Vector3D Vector3Multiply(
    Vector3D v1,
    Vector3D v2,
  ) => $.Vector3$.Extract3(
    (p) => _wasm.Vector3Multiply(
      p.toJS,
      $.Vector3$.Ref1(v1).toJS,
      $.Vector3$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector3D Vector3CrossProduct(
    Vector3D v1,
    Vector3D v2,
  ) => $.Vector3$.Extract3(
    (p) => _wasm.Vector3CrossProduct(
      p.toJS,
      $.Vector3$.Ref1(v1).toJS,
      $.Vector3$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector3D Vector3Perpendicular(
    Vector3D v,
  ) => $.Vector3$.Extract2(
    (p) => _wasm.Vector3Perpendicular(
      p.toJS,
      $.Vector3$.Ref1(v).toJS,
    ),
  );

  @override
  double Vector3Length(
    Vector3D v,
  ) => _wasm.Vector3Length(
    $.Vector3$.Ref1(v).toJS,
  );

  @override
  double Vector3LengthSqr(
    Vector3D v,
  ) => _wasm.Vector3LengthSqr(
    $.Vector3$.Ref1(v).toJS,
  );

  @override
  double Vector3DotProduct(
    Vector3D v1,
    Vector3D v2,
  ) => _wasm.Vector3DotProduct(
    $.Vector3$.Ref1(v1).toJS,
    $.Vector3$.Ref2(v2).toJS,
  );

  @override
  double Vector3Distance(
    Vector3D v1,
    Vector3D v2,
  ) => _wasm.Vector3Distance(
    $.Vector3$.Ref1(v1).toJS,
    $.Vector3$.Ref2(v2).toJS,
  );

  @override
  double Vector3DistanceSqr(
    Vector3D v1,
    Vector3D v2,
  ) => _wasm.Vector3DistanceSqr(
    $.Vector3$.Ref1(v1).toJS,
    $.Vector3$.Ref2(v2).toJS,
  );

  @override
  double Vector3Angle(
    Vector3D v1,
    Vector3D v2,
  ) => _wasm.Vector3Angle(
    $.Vector3$.Ref1(v1).toJS,
    $.Vector3$.Ref2(v2).toJS,
  );

  @override
  Vector3D Vector3Negate(
    Vector3D v,
  ) => $.Vector3$.Extract2(
    (p) => _wasm.Vector3Negate(
      p.toJS,
      $.Vector3$.Ref1(v).toJS,
    ),
  );

  @override
  Vector3D Vector3Divide(
    Vector3D v1,
    Vector3D v2,
  ) => $.Vector3$.Extract3(
    (p) => _wasm.Vector3Divide(
      p.toJS,
      $.Vector3$.Ref1(v1).toJS,
      $.Vector3$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector3D Vector3Normalize(
    Vector3D v,
  ) => $.Vector3$.Extract2(
    (p) => _wasm.Vector3Normalize(
      p.toJS,
      $.Vector3$.Ref1(v).toJS,
    ),
  );

  @override
  Vector3D Vector3Project(
    Vector3D v1,
    Vector3D v2,
  ) => $.Vector3$.Extract3(
    (p) => _wasm.Vector3Project(
      p.toJS,
      $.Vector3$.Ref1(v1).toJS,
      $.Vector3$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector3D Vector3Reject(
    Vector3D v1,
    Vector3D v2,
  ) => $.Vector3$.Extract3(
    (p) => _wasm.Vector3Reject(
      p.toJS,
      $.Vector3$.Ref1(v1).toJS,
      $.Vector3$.Ref2(v2).toJS,
    ),
  );

  @override
  void Vector3OrthoNormalize(
    StructPointer<Vector3D> v1,
    StructPointer<Vector3D> v2,
  ) => _wasm.Vector3OrthoNormalize(
    v1.toJS,
    v2.toJS,
  );

  @override
  Vector3D Vector3Transform(
    Vector3D v,
    MatrixD mat,
  ) => $.Vector3$.Extract2(
    (p) => _wasm.Vector3Transform(
      p.toJS,
      $.Vector3$.Ref1(v).toJS,
      $.Matrix$.Ref1(mat).toJS,
    ),
  );

  @override
  Vector3D Vector3RotateByQuaternion(
    Vector3D v,
    QuaternionD q,
  ) => $.Vector3$.Extract2(
    (p) => _wasm.Vector3RotateByQuaternion(
      p.toJS,
      $.Vector3$.Ref1(v).toJS,
      $.Quaternion$.Ref1(q).toJS,
    ),
  );

  @override
  Vector3D Vector3RotateByAxisAngle(
    Vector3D v,
    Vector3D axis,
    double angle,
  ) => $.Vector3$.Extract3(
    (p) => _wasm.Vector3RotateByAxisAngle(
      p.toJS,
      $.Vector3$.Ref1(v).toJS,
      $.Vector3$.Ref2(axis).toJS,
      angle.toJS,
    ),
  );

  @override
  Vector3D Vector3MoveTowards(
    Vector3D v,
    Vector3D target,
    double maxDistance,
  ) => $.Vector3$.Extract3(
    (p) => _wasm.Vector3MoveTowards(
      p.toJS,
      $.Vector3$.Ref1(v).toJS,
      $.Vector3$.Ref2(target).toJS,
      maxDistance.toJS,
    ),
  );

  @override
  Vector3D Vector3Lerp(
    Vector3D v1,
    Vector3D v2,
    double amount,
  ) => $.Vector3$.Extract3(
    (p) => _wasm.Vector3Lerp(
      p.toJS,
      $.Vector3$.Ref1(v1).toJS,
      $.Vector3$.Ref2(v2).toJS,
      amount.toJS,
    ),
  );

  @override
  Vector3D Vector3CubicHermite(
    Vector3D v1,
    Vector3D tangent1,
    Vector3D v2,
    Vector3D tangent2,
    double amount,
  ) => $.Vector3$.Extract5(
    (p) => _wasm.Vector3CubicHermite(
      p.toJS,
      $.Vector3$.Ref1(v1).toJS,
      $.Vector3$.Ref2(tangent1).toJS,
      $.Vector3$.Ref3(v2).toJS,
      $.Vector3$.Ref4(tangent2).toJS,
      amount.toJS,
    ),
  );

  @override
  Vector3D Vector3Reflect(
    Vector3D v,
    Vector3D normal,
  ) => $.Vector3$.Extract3(
    (p) => _wasm.Vector3Reflect(
      p.toJS,
      $.Vector3$.Ref1(v).toJS,
      $.Vector3$.Ref2(normal).toJS,
    ),
  );

  @override
  Vector3D Vector3Min(
    Vector3D v1,
    Vector3D v2,
  ) => $.Vector3$.Extract3(
    (p) => _wasm.Vector3Min(
      p.toJS,
      $.Vector3$.Ref1(v1).toJS,
      $.Vector3$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector3D Vector3Max(
    Vector3D v1,
    Vector3D v2,
  ) => $.Vector3$.Extract3(
    (p) => _wasm.Vector3Max(
      p.toJS,
      $.Vector3$.Ref1(v1).toJS,
      $.Vector3$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector3D Vector3Barycenter(
    Vector3D p,
    Vector3D a,
    Vector3D b,
    Vector3D c,
  ) => $.Vector3$.Extract5(
    (ptr) => _wasm.Vector3Barycenter(
      ptr.toJS,
      $.Vector3$.Ref1(p).toJS,
      $.Vector3$.Ref2(a).toJS,
      $.Vector3$.Ref3(b).toJS,
      $.Vector3$.Ref4(c).toJS,
    ),
  );

  @override
  Vector3D Vector3Unproject(
    Vector3D source,
    MatrixD projection,
    MatrixD view,
  ) => $.Vector3$.Extract2(
    (p) => _wasm.Vector3Unproject(
      p.toJS,
      $.Vector3$.Ref1(source).toJS,
      $.Matrix$.Ref1(projection).toJS,
      $.Matrix$.Ref2(view).toJS,
    ),
  );

  @override
  float3D Vector3ToFloatV(
    Vector3D v,
  ) => $.float3$.Extract1(
    (p) => _wasm.Vector3ToFloatV(
      p.toJS,
      $.Vector3$.Ref1(v).toJS,
    ),
  );

  @override
  Vector3D Vector3Invert(
    Vector3D v,
  ) => $.Vector3$.Extract2(
    (p) => _wasm.Vector3Invert(
      p.toJS,
      $.Vector3$.Ref1(v).toJS,
    ),
  );

  @override
  Vector3D Vector3Clamp(
    Vector3D v,
    Vector3D min,
    Vector3D max,
  ) => $.Vector3$.Extract4(
    (p) => _wasm.Vector3Clamp(
      p.toJS,
      $.Vector3$.Ref1(v).toJS,
      $.Vector3$.Ref2(min).toJS,
      $.Vector3$.Ref3(max).toJS,
    ),
  );

  @override
  Vector3D Vector3ClampValue(
    Vector3D v,
    double min,
    double max,
  ) => $.Vector3$.Extract2(
    (p) => _wasm.Vector3ClampValue(
      p.toJS,
      $.Vector3$.Ref1(v).toJS,
      min.toJS,
      max.toJS,
    ),
  );

  @override
  bool Vector3Equals(
    Vector3D p,
    Vector3D q,
  ) => _wasm.Vector3Equals(
    $.Vector3$.Ref1(p).toJS,
    $.Vector3$.Ref2(q).toJS,
  );

  @override
  Vector3D Vector3Refract(
    Vector3D v,
    Vector3D n,
    double r,
  ) => $.Vector3$.Extract3(
    (p) => _wasm.Vector3Refract(
      p.toJS,
      $.Vector3$.Ref1(v).toJS,
      $.Vector3$.Ref2(n).toJS,
      r.toJS,
    ),
  );
}
