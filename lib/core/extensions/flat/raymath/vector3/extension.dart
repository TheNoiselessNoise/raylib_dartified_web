part of '../../../../raylib_dartified_web.dart';

class RaylibVector3ExtFlat extends RaylibVector3FlatExt<Raylib> {
  RaylibVector3ExtFlat(super.rl);

  RaylibVector3Ext get _wasm => rl.module();

  @override
  Vector3D Vector3Zero() => rl.Temp.Vector3$.Extract1(
    (p) => _wasm.Vector3Zero.run([
      p.toJS,
    ]),
  );

  @override
  Vector3D Vector3One() => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3One.run([
      p.toJS,
    ]),
  );

  @override
  Vector3D Vector3Add(
    Vector3D v1,
    Vector3D v2,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Add.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector3D Vector3AddValue(
    Vector3D v,
    double add,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3AddValue.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      add.toJS,
    ]),
  );

  @override
  Vector3D Vector3Subtract(
    Vector3D v1,
    Vector3D v2,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Subtract.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector3D Vector3SubtractValue(
    Vector3D v,
    double sub,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3SubtractValue.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      sub.toJS,
    ]),
  );

  @override
  Vector3D Vector3Scale(
    Vector3D v,
    double scalar,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3Scale.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      scalar.toJS,
    ]),
  );

  @override
  Vector3D Vector3Multiply(
    Vector3D v1,
    Vector3D v2,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Multiply.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector3D Vector3CrossProduct(
    Vector3D v1,
    Vector3D v2,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3CrossProduct.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector3D Vector3Perpendicular(
    Vector3D v,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3Perpendicular.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
    ]),
  );

  @override
  double Vector3Length(
    Vector3D v,
  ) => _wasm.Vector3Length.run([
    rl.Temp.Vector3$.Ref1(v).toJS,
  ]).toDouble();

  @override
  double Vector3LengthSqr(
    Vector3D v,
  ) => _wasm.Vector3LengthSqr.run([
    rl.Temp.Vector3$.Ref1(v).toJS,
  ]).toDouble();

  @override
  double Vector3DotProduct(
    Vector3D v1,
    Vector3D v2,
  ) => _wasm.Vector3DotProduct.run([
    rl.Temp.Vector3$.Ref1(v1).toJS,
    rl.Temp.Vector3$.Ref2(v2).toJS,
  ]).toDouble();

  @override
  double Vector3Distance(
    Vector3D v1,
    Vector3D v2,
  ) => _wasm.Vector3Distance.run([
    rl.Temp.Vector3$.Ref1(v1).toJS,
    rl.Temp.Vector3$.Ref2(v2).toJS,
  ]).toDouble();

  @override
  double Vector3DistanceSqr(
    Vector3D v1,
    Vector3D v2,
  ) => _wasm.Vector3DistanceSqr.run([
    rl.Temp.Vector3$.Ref1(v1).toJS,
    rl.Temp.Vector3$.Ref2(v2).toJS,
  ]).toDouble();

  @override
  double Vector3Angle(
    Vector3D v1,
    Vector3D v2,
  ) => _wasm.Vector3Angle.run([
    rl.Temp.Vector3$.Ref1(v1).toJS,
    rl.Temp.Vector3$.Ref2(v2).toJS,
  ]).toDouble();

  @override
  Vector3D Vector3Negate(
    Vector3D v,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3Negate.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
    ]),
  );

  @override
  Vector3D Vector3Divide(
    Vector3D v1,
    Vector3D v2,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Divide.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector3D Vector3Normalize(
    Vector3D v,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3Normalize.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
    ]),
  );

  @override
  Vector3D Vector3Project(
    Vector3D v1,
    Vector3D v2,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Project.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector3D Vector3Reject(
    Vector3D v1,
    Vector3D v2,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Reject.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
    ]),
  );

  @override
  void Vector3OrthoNormalize(
    StructPointer<Vector3D> v1,
    StructPointer<Vector3D> v2,
  ) => _wasm.Vector3OrthoNormalize.run([
    v1.toJS,
    v2.toJS,
  ]);

  @override
  Vector3D Vector3Transform(
    Vector3D v,
    MatrixD mat,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3Transform.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      rl.Temp.Matrix$.Ref1(mat).toJS,
    ]),
  );

  @override
  Vector3D Vector3RotateByQuaternion(
    Vector3D v,
    QuaternionD q,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3RotateByQuaternion.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      rl.Temp.Quaternion$.Ref1(q).toJS,
    ]),
  );

  @override
  Vector3D Vector3RotateByAxisAngle(
    Vector3D v,
    Vector3D axis,
    double angle,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3RotateByAxisAngle.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      rl.Temp.Vector3$.Ref2(axis).toJS,
      angle.toJS,
    ]),
  );

  @override
  Vector3D Vector3MoveTowards(
    Vector3D v,
    Vector3D target,
    double maxDistance,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3MoveTowards.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      rl.Temp.Vector3$.Ref2(target).toJS,
      maxDistance.toJS,
    ]),
  );

  @override
  Vector3D Vector3Lerp(
    Vector3D v1,
    Vector3D v2,
    double amount,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Lerp.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
      amount.toJS,
    ]),
  );

  @override
  Vector3D Vector3CubicHermite(
    Vector3D v1,
    Vector3D tangent1,
    Vector3D v2,
    Vector3D tangent2,
    double amount,
  ) => rl.Temp.Vector3$.Extract5(
    (p) => _wasm.Vector3CubicHermite.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(tangent1).toJS,
      rl.Temp.Vector3$.Ref3(v2).toJS,
      rl.Temp.Vector3$.Ref4(tangent2).toJS,
      amount.toJS,
    ]),
  );

  @override
  Vector3D Vector3Reflect(
    Vector3D v,
    Vector3D normal,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Reflect.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      rl.Temp.Vector3$.Ref2(normal).toJS,
    ]),
  );

  @override
  Vector3D Vector3Min(
    Vector3D v1,
    Vector3D v2,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Min.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector3D Vector3Max(
    Vector3D v1,
    Vector3D v2,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Max.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v1).toJS,
      rl.Temp.Vector3$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector3D Vector3Barycenter(
    Vector3D p,
    Vector3D a,
    Vector3D b,
    Vector3D c,
  ) => rl.Temp.Vector3$.Extract5(
    (ptr) => _wasm.Vector3Barycenter.run([
      ptr.toJS,
      rl.Temp.Vector3$.Ref1(p).toJS,
      rl.Temp.Vector3$.Ref2(a).toJS,
      rl.Temp.Vector3$.Ref3(b).toJS,
      rl.Temp.Vector3$.Ref4(c).toJS,
    ]),
  );

  @override
  Vector3D Vector3Unproject(
    Vector3D source,
    MatrixD projection,
    MatrixD view,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3Unproject.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(source).toJS,
      rl.Temp.Matrix$.Ref1(projection).toJS,
      rl.Temp.Matrix$.Ref2(view).toJS,
    ]),
  );

  @override
  float3D Vector3ToFloatV(
    Vector3D v,
  ) => rl.Temp.float3$.Extract1(
    (p) => _wasm.Vector3ToFloatV.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
    ]),
  );

  @override
  Vector3D Vector3Invert(
    Vector3D v,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3Invert.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
    ]),
  );

  @override
  Vector3D Vector3Clamp(
    Vector3D v,
    Vector3D min,
    Vector3D max,
  ) => rl.Temp.Vector3$.Extract4(
    (p) => _wasm.Vector3Clamp.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      rl.Temp.Vector3$.Ref2(min).toJS,
      rl.Temp.Vector3$.Ref3(max).toJS,
    ]),
  );

  @override
  Vector3D Vector3ClampValue(
    Vector3D v,
    double min,
    double max,
  ) => rl.Temp.Vector3$.Extract2(
    (p) => _wasm.Vector3ClampValue.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      min.toJS,
      max.toJS,
    ]),
  );

  @override
  int Vector3Equals(
    Vector3D p,
    Vector3D q,
  ) => _wasm.Vector3Equals.run([
    rl.Temp.Vector3$.Ref1(p).toJS,
    rl.Temp.Vector3$.Ref2(q).toJS,
  ]).toInt();

  @override
  Vector3D Vector3Refract(
    Vector3D v,
    Vector3D n,
    double r,
  ) => rl.Temp.Vector3$.Extract3(
    (p) => _wasm.Vector3Refract.run([
      p.toJS,
      rl.Temp.Vector3$.Ref1(v).toJS,
      rl.Temp.Vector3$.Ref2(n).toJS,
      r.toJS,
    ]),
  );
}
