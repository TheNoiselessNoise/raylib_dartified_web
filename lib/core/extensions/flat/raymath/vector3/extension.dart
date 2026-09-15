part of '../../../../raylib_dartified_web.dart';

class RaylibVector3ExtFlat extends RaylibVector3FlatExt<Raylib> {
  RaylibVector3ExtFlat(super.rl);

  RaylibVector3Ext get _wasm => rl.module();

  @override
  Vector3D Vector3Zero() => rl.Temp.Vector3$.Extract1(
    (p) => _wasm.Vector3Zero(
      p.toJS,
    ),
  );

  @override
  Vector3D Vector3One() => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3One(
      p.toJS,
    ),
  );

  @override
  Vector3D Vector3Add(
    Vector3D v1,
    Vector3D v2,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Add(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector3D Vector3AddValue(
    Vector3D v,
    double add,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3AddValue(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      add.toJS,
    ),
  );

  @override
  Vector3D Vector3Subtract(
    Vector3D v1,
    Vector3D v2,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Subtract(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector3D Vector3SubtractValue(
    Vector3D v,
    double sub,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3SubtractValue(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      sub.toJS,
    ),
  );

  @override
  Vector3D Vector3Scale(
    Vector3D v,
    double scalar,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3Scale(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      scalar.toJS,
    ),
  );

  @override
  Vector3D Vector3Multiply(
    Vector3D v1,
    Vector3D v2,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Multiply(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector3D Vector3CrossProduct(
    Vector3D v1,
    Vector3D v2,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3CrossProduct(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector3D Vector3Perpendicular(
    Vector3D v,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3Perpendicular(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
    ),
  );

  @override
  double Vector3Length(
    Vector3D v,
  ) => _wasm.Vector3Length(
    rl.Temp.Vector3$.Ref1(v).toJS,
  );

  @override
  double Vector3LengthSqr(
    Vector3D v,
  ) => _wasm.Vector3LengthSqr(
    rl.Temp.Vector3$.Ref1(v).toJS,
  );

  @override
  double Vector3DotProduct(
    Vector3D v1,
    Vector3D v2,
  ) => _wasm.Vector3DotProduct(
    rl.Temp.Vector3$.Ref1(v1).toJS,
    rl.Temp.Vector3$.Ref2(v2).toJS,
  );

  @override
  double Vector3Distance(
    Vector3D v1,
    Vector3D v2,
  ) => _wasm.Vector3Distance(
    rl.Temp.Vector3$.Ref1(v1).toJS,
    rl.Temp.Vector3$.Ref2(v2).toJS,
  );

  @override
  double Vector3DistanceSqr(
    Vector3D v1,
    Vector3D v2,
  ) => _wasm.Vector3DistanceSqr(
    rl.Temp.Vector3$.Ref1(v1).toJS,
    rl.Temp.Vector3$.Ref2(v2).toJS,
  );

  @override
  double Vector3Angle(
    Vector3D v1,
    Vector3D v2,
  ) => _wasm.Vector3Angle(
    rl.Temp.Vector3$.Ref1(v1).toJS,
    rl.Temp.Vector3$.Ref2(v2).toJS,
  );

  @override
  Vector3D Vector3Negate(
    Vector3D v,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3Negate(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
    ),
  );

  @override
  Vector3D Vector3Divide(
    Vector3D v1,
    Vector3D v2,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Divide(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector3D Vector3Normalize(
    Vector3D v,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3Normalize(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
    ),
  );

  @override
  Vector3D Vector3Project(
    Vector3D v1,
    Vector3D v2,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Project(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector3D Vector3Reject(
    Vector3D v1,
    Vector3D v2,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Reject(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
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
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3Transform(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      rl.Temp.Matrix$.Ref1(mat).toJS,
    ),
  );

  @override
  Vector3D Vector3RotateByQuaternion(
    Vector3D v,
    QuaternionD q,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3RotateByQuaternion(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      rl.Temp.Quaternion$.Ref1(q).toJS,
    ),
  );

  @override
  Vector3D Vector3RotateByAxisAngle(
    Vector3D v,
    Vector3D axis,
    double angle,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3RotateByAxisAngle(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      rl.Temp.Vector3$.Ref2(axis).toJS,
      angle.toJS,
    ),
  );

  @override
  Vector3D Vector3MoveTowards(
    Vector3D v,
    Vector3D target,
    double maxDistance,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3MoveTowards(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      rl.Temp.Vector3$.Ref2(target).toJS,
      maxDistance.toJS,
    ),
  );

  @override
  Vector3D Vector3Lerp(
    Vector3D v1,
    Vector3D v2,
    double amount,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Lerp(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
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
  ) => rl.Temp.Vector3$.Extract5(
    (p) => _wasm.Vector3CubicHermite(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(tangent1).toJS,
      rl.Temp.Vector3$.Ref3(v2).toJS,
      rl.Temp.Vector3$.Ref4(tangent2).toJS,
      amount.toJS,
    ),
  );

  @override
  Vector3D Vector3Reflect(
    Vector3D v,
    Vector3D normal,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Reflect(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      rl.Temp.Vector3$.Ref2(normal).toJS,
    ),
  );

  @override
  Vector3D Vector3Min(
    Vector3D v1,
    Vector3D v2,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Min(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector3D Vector3Max(
    Vector3D v1,
    Vector3D v2,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Max(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector3D Vector3Barycenter(
    Vector3D p,
    Vector3D a,
    Vector3D b,
    Vector3D c,
  ) => rl.Temp.Vector3$.Extract5(
    (ptr) => _wasm.Vector3Barycenter(
      ptr.toJS,
      rl.Temp.Vector3$.Ref1(p).toJS,
      rl.Temp.Vector3$.Ref2(a).toJS,
      rl.Temp.Vector3$.Ref3(b).toJS,
      rl.Temp.Vector3$.Ref4(c).toJS,
    ),
  );

  @override
  Vector3D Vector3Unproject(
    Vector3D source,
    MatrixD projection,
    MatrixD view,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3Unproject(
      p.toJS,
      rl.Temp.Vector3$.Ref1(source).toJS,
      rl.Temp.Matrix$.Ref1(projection).toJS,
      rl.Temp.Matrix$.Ref2(view).toJS,
    ),
  );

  @override
  float3D Vector3ToFloatV(
    Vector3D v,
  ) => rl.Temp.float3$.Extract1(
    (p) => _wasm.Vector3ToFloatV(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
    ),
  );

  @override
  Vector3D Vector3Invert(
    Vector3D v,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3Invert(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
    ),
  );

  @override
  Vector3D Vector3Clamp(
    Vector3D v,
    Vector3D min,
    Vector3D max,
  ) => rl.Temp.Vector3$.Extract4(
    (p) => _wasm.Vector3Clamp(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      rl.Temp.Vector3$.Ref2(min).toJS,
      rl.Temp.Vector3$.Ref3(max).toJS,
    ),
  );

  @override
  Vector3D Vector3ClampValue(
    Vector3D v,
    double min,
    double max,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3ClampValue(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      min.toJS,
      max.toJS,
    ),
  );

  @override
  bool Vector3Equals(
    Vector3D p,
    Vector3D q,
  ) => _wasm.Vector3Equals(
    rl.Temp.Vector3$.Ref1(p).toJS,
    rl.Temp.Vector3$.Ref2(q).toJS,
  );

  @override
  Vector3D Vector3Refract(
    Vector3D v,
    Vector3D n,
    double r,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Refract(
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      rl.Temp.Vector3$.Ref2(n).toJS,
      r.toJS,
    ),
  );
}
