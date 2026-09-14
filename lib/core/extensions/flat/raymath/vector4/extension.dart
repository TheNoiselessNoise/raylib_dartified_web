part of '../../../../raylib_dartified_web.dart';

class RaylibVector4ExtFlat extends RaylibVector4FlatExt<Raylib> {
  RaylibVector4ExtFlat(super.rl);

  RaylibVector4Ext get _wasm => rl.module();

  @override
  Vector4D Vector4Zero() => rl.Temp.Vector4$.Extract1(
    (p) => _wasm.Vector4Zero.run([
      p.toJS,
    ]),
  );

  @override
  Vector4D Vector4One() => rl.Temp.Vector4$.Extract1(
    (p) => _wasm.Vector4One.run([
      p.toJS,
    ]),
  );

  @override
  Vector4D Vector4Add(
    Vector4D v1,
    Vector4D v2,
  ) => rl.Temp.Vector4$.Extract3(
    (p) => _wasm.Vector4Add.run([
      p.toJS,
      rl.Temp.Vector4$.Ref1(v1).toJS,
      rl.Temp.Vector4$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector4D Vector4AddValue(
    Vector4D v,
    double add,
  ) => rl.Temp.Vector4$.Extract3(
    (p) => _wasm.Vector4AddValue.run([
      p.toJS,
      rl.Temp.Vector4$.Ref1(v).toJS,
      add.toJS,
    ]),
  );

  @override
  Vector4D Vector4Subtract(
    Vector4D v1,
    Vector4D v2,
  ) => rl.Temp.Vector4$.Extract3(
    (p) => _wasm.Vector4Subtract.run([
      p.toJS,
      rl.Temp.Vector4$.Ref1(v1).toJS,
      rl.Temp.Vector4$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector4D Vector4SubtractValue(
    Vector4D v,
    double add,
  ) => rl.Temp.Vector4$.Extract3(
    (p) => _wasm.Vector4SubtractValue.run([
      p.toJS,
      rl.Temp.Vector4$.Ref1(v).toJS,
      add.toJS,
    ]),
  );

  @override
  double Vector4Length(
    Vector4D v,
  ) => _wasm.Vector4Length.run([
    rl.Temp.Vector4$.Ref1(v).toJS,
  ]).toDouble();

  @override
  double Vector4LengthSqr(
    Vector4D v,
  ) => _wasm.Vector4LengthSqr.run([
    rl.Temp.Vector4$.Ref1(v).toJS,
  ]).toDouble();

  @override
  double Vector4DotProduct(
    Vector4D v1,
    Vector4D v2,
  ) => _wasm.Vector4DotProduct.run([
    rl.Temp.Vector4$.Ref1(v1).toJS,
    rl.Temp.Vector4$.Ref2(v2).toJS,
  ]).toDouble();

  @override
  double Vector4Distance(
    Vector4D v1,
    Vector4D v2,
  ) => _wasm.Vector4Distance.run([
    rl.Temp.Vector4$.Ref1(v1).toJS,
    rl.Temp.Vector4$.Ref2(v2).toJS,
  ]).toDouble();

  @override
  double Vector4DistanceSqr(
    Vector4D v1,
    Vector4D v2,
  ) => _wasm.Vector4DistanceSqr.run([
    rl.Temp.Vector4$.Ref1(v1).toJS,
    rl.Temp.Vector4$.Ref2(v2).toJS,
  ]).toDouble();

  @override
  Vector4D Vector4Scale(
    Vector4D v,
    double scale,
  ) => rl.Temp.Vector4$.Extract2(
    (p) => _wasm.Vector4Scale.run([
      p.toJS,
      rl.Temp.Vector4$.Ref1(v).toJS,
      scale.toJS,
    ]),
  );

  @override
  Vector4D Vector4Multiply(
    Vector4D v1,
    Vector4D v2,
  ) => rl.Temp.Vector4$.Extract3(
    (p) => _wasm.Vector4Multiply.run([
      p.toJS,
      rl.Temp.Vector4$.Ref1(v1).toJS,
      rl.Temp.Vector4$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector4D Vector4Negate(
    Vector4D v,
  ) => rl.Temp.Vector4$.Extract2(
    (p) => _wasm.Vector4Negate.run([
      p.toJS,
      rl.Temp.Vector4$.Ref1(v).toJS,
    ]),
  );

  @override
  Vector4D Vector4Divide(
    Vector4D v1,
    Vector4D v2,
  ) => rl.Temp.Vector4$.Extract3(
    (p) => _wasm.Vector4Divide.run([
      p.toJS,
      rl.Temp.Vector4$.Ref1(v1).toJS,
      rl.Temp.Vector4$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector4D Vector4Normalize(
    Vector4D v,
  ) => rl.Temp.Vector4$.Extract2(
    (p) => _wasm.Vector4Normalize.run([
      p.toJS,
      rl.Temp.Vector4$.Ref1(v).toJS,
    ]),
  );

  @override
  Vector4D Vector4Min(
    Vector4D v1,
    Vector4D v2,
  ) => rl.Temp.Vector4$.Extract3(
    (p) => _wasm.Vector4Min.run([
      p.toJS,
      rl.Temp.Vector4$.Ref1(v1).toJS,
      rl.Temp.Vector4$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector4D Vector4Max(
    Vector4D v1,
    Vector4D v2,
  ) => rl.Temp.Vector4$.Extract3(
    (p) => _wasm.Vector4Max.run([
      p.toJS,
      rl.Temp.Vector4$.Ref1(v1).toJS,
      rl.Temp.Vector4$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector4D Vector4Lerp(
    Vector4D v1,
    Vector4D v2,
    double amount,
  ) => rl.Temp.Vector4$.Extract3(
    (p) => _wasm.Vector4Lerp.run([
      p.toJS,
      rl.Temp.Vector4$.Ref1(v1).toJS,
      rl.Temp.Vector4$.Ref2(v2).toJS,
      amount.toJS,
    ]),
  );

  @override
  Vector4D Vector4MoveTowards(
    Vector4D v,
    Vector4D target,
    double maxDistance,
  ) => rl.Temp.Vector4$.Extract3(
    (p) => _wasm.Vector4MoveTowards.run([
      p.toJS,
      rl.Temp.Vector4$.Ref1(v).toJS,
      rl.Temp.Vector4$.Ref2(target).toJS,
      maxDistance.toJS,
    ]),
  );

  @override
  Vector4D Vector4Invert(
    Vector4D v,
  ) => rl.Temp.Vector4$.Extract2(
    (p) => _wasm.Vector4Invert.run([
      p.toJS,
      rl.Temp.Vector4$.Ref1(v).toJS,
    ]),
  );

  @override
  int Vector4Equals(
    Vector4D p,
    Vector4D q,
  ) => _wasm.Vector4Equals.run([
    rl.Temp.Vector4$.Ref1(p).toJS,
    rl.Temp.Vector4$.Ref2(q).toJS,
  ]).toInt();
}
