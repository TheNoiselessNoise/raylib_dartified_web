part of '../../../../raylib_dartified_web.dart';

class RaylibVector2ExtFlat extends RaylibVector2FlatExt<Raylib> {
  RaylibVector2ExtFlat(super.rl);

  RaylibVector2Ext get _wasm => rl.module();

  @override
  Vector2D Vector2Zero() => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.Vector2Zero.run([
      p.toJS,
    ]),
  );

  @override
  Vector2D Vector2One() => rl.Temp.Vector2$.Extract1(
    (p) => _wasm.Vector2One.run([
      p.toJS,
    ]),
  );

  @override
  Vector2D Vector2Add(
    Vector2D v1,
    Vector2D v2,
  ) => rl.Temp.Vector2$.Extract3(
    (p) => _wasm.Vector2Add.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v1).toJS,
      rl.Temp.Vector2$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector2D Vector2AddValue(
    Vector2D v,
    double add,
  ) => rl.Temp.Vector2$.Extract2(
    (p) => _wasm.Vector2AddValue.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v).toJS,
      add.toJS,
    ]),
  );

  @override
  Vector2D Vector2Subtract(
    Vector2D v1,
    Vector2D v2,
  ) => rl.Temp.Vector2$.Extract3(
    (p) => _wasm.Vector2Subtract.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v1).toJS,
      rl.Temp.Vector2$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector2D Vector2SubtractValue(
    Vector2D v,
    double sub,
  ) => rl.Temp.Vector2$.Extract2(
    (p) => _wasm.Vector2SubtractValue.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v).toJS,
      sub.toJS,
    ]),
  );

  @override
  double Vector2Length(
    Vector2D v,
  ) => _wasm.Vector2Length.run([
    rl.Temp.Vector2$.Ref1(v).toJS,
  ]).toDouble();

  @override
  double Vector2LengthSqr(
    Vector2D v,
  ) => _wasm.Vector2LengthSqr.run([
    rl.Temp.Vector2$.Ref1(v).toJS,
  ]).toDouble();

  @override
  double Vector2DotProduct(
    Vector2D v1,
    Vector2D v2,
  ) => _wasm.Vector2DotProduct.run([
    rl.Temp.Vector2$.Ref1(v1).toJS,
    rl.Temp.Vector2$.Ref2(v2).toJS,
  ]).toDouble();

  @override
  double Vector2CrossProduct(
    Vector2D v1,
    Vector2D v2,
  ) => _wasm.Vector2CrossProduct.run([
    rl.Temp.Vector2$.Ref1(v1).toJS,
    rl.Temp.Vector2$.Ref2(v2).toJS,
  ]).toDouble();

  @override
  double Vector2Distance(
    Vector2D v1,
    Vector2D v2,
  ) => _wasm.Vector2Distance.run([
    rl.Temp.Vector2$.Ref1(v1).toJS,
    rl.Temp.Vector2$.Ref2(v2).toJS,
  ]).toDouble();

  @override
  double Vector2DistanceSqr(
    Vector2D v1,
    Vector2D v2,
  ) => _wasm.Vector2DistanceSqr.run([
    rl.Temp.Vector2$.Ref1(v1).toJS,
    rl.Temp.Vector2$.Ref2(v2).toJS,
  ]).toDouble();

  @override
  double Vector2Angle(
    Vector2D v1,
    Vector2D v2,
  ) => _wasm.Vector2Angle.run([
    rl.Temp.Vector2$.Ref1(v1).toJS,
    rl.Temp.Vector2$.Ref2(v2).toJS,
  ]).toDouble();

  @override
  double Vector2LineAngle(
    Vector2D start,
    Vector2D end,
  ) => _wasm.Vector2LineAngle.run([
    rl.Temp.Vector2$.Ref1(start).toJS,
    rl.Temp.Vector2$.Ref2(end).toJS,
  ]).toDouble();

  @override
  Vector2D Vector2Scale(
    Vector2D v,
    double scale,
  ) => rl.Temp.Vector2$.Extract2(
    (p) => _wasm.Vector2Scale.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v).toJS,
      scale.toJS,
    ]),
  );

  @override
  Vector2D Vector2Multiply(
    Vector2D v1,
    Vector2D v2,
  ) => rl.Temp.Vector2$.Extract3(
    (p) => _wasm.Vector2Multiply.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v1).toJS,
      rl.Temp.Vector2$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector2D Vector2Negate(
    Vector2D v,
  ) => rl.Temp.Vector2$.Extract2(
    (p) => _wasm.Vector2Negate.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v).toJS,
    ]),
  );

  @override
  Vector2D Vector2Divide(
    Vector2D v1,
    Vector2D v2,
  ) => rl.Temp.Vector2$.Extract3(
    (p) => _wasm.Vector2Divide.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v1).toJS,
      rl.Temp.Vector2$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector2D Vector2Normalize(
    Vector2D v,
  ) => rl.Temp.Vector2$.Extract2(
    (p) => _wasm.Vector2Normalize.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v).toJS,
    ]),
  );

  @override
  Vector2D Vector2Transform(
    Vector2D v,
    MatrixD mat,
  ) => rl.Temp.Vector2$.Extract2(
    (p) => _wasm.Vector2Transform.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v).toJS,
      rl.Temp.Matrix$.Ref1(mat).toJS,
    ]),
  );

  @override
  Vector2D Vector2Lerp(
    Vector2D v1,
    Vector2D v2,
    double amount,
  ) => rl.Temp.Vector2$.Extract3(
    (p) => _wasm.Vector2Lerp.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v1).toJS,
      rl.Temp.Vector2$.Ref2(v2).toJS,
      amount.toJS,
    ]),
  );

  @override
  Vector2D Vector2Reflect(
    Vector2D v,
    Vector2D normal,
  ) => rl.Temp.Vector2$.Extract3(
    (p) => _wasm.Vector2Reflect.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v).toJS,
      rl.Temp.Vector2$.Ref2(normal).toJS,
    ]),
  );

  @override
  Vector2D Vector2Min(
    Vector2D v1,
    Vector2D v2,
  ) => rl.Temp.Vector2$.Extract3(
    (p) => _wasm.Vector2Min.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v1).toJS,
      rl.Temp.Vector2$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector2D Vector2Max(
    Vector2D v1,
    Vector2D v2,
  ) => rl.Temp.Vector2$.Extract3(
    (p) => _wasm.Vector2Max.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v1).toJS,
      rl.Temp.Vector2$.Ref2(v2).toJS,
    ]),
  );

  @override
  Vector2D Vector2Rotate(
    Vector2D v,
    double angle,
  ) => rl.Temp.Vector2$.Extract2(
    (p) => _wasm.Vector2Rotate.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v).toJS,
      angle.toJS,
    ]),
  );

  @override
  Vector2D Vector2MoveTowards(
    Vector2D v,
    Vector2D target,
    double maxDistance,
  ) => rl.Temp.Vector2$.Extract3(
    (p) => _wasm.Vector2MoveTowards.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v).toJS,
      rl.Temp.Vector2$.Ref2(target).toJS,
      maxDistance.toJS,
    ]),
  );

  @override
  Vector2D Vector2Invert(
    Vector2D v,
  ) => rl.Temp.Vector2$.Extract2(
    (p) => _wasm.Vector2Invert.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v).toJS,
    ]),
  );

  @override
  Vector2D Vector2Clamp(
    Vector2D v,
    Vector2D min,
    Vector2D max,
  ) => rl.Temp.Vector2$.Extract4(
    (p) => _wasm.Vector2Clamp.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v).toJS,
      rl.Temp.Vector2$.Ref2(min).toJS,
      rl.Temp.Vector2$.Ref3(max).toJS,
    ]),
  );

  @override
  Vector2D Vector2ClampValue(
    Vector2D v,
    double min,
    double max,
  ) => rl.Temp.Vector2$.Extract2(
    (p) => _wasm.Vector2ClampValue.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v).toJS,
      min.toJS,
      max.toJS,
    ]),
  );

  @override
  int Vector2Equals(
    Vector2D p,
    Vector2D q,
  ) => _wasm.Vector2Equals.run([
    rl.Temp.Vector2$.Ref1(p).toJS,
    rl.Temp.Vector2$.Ref2(q).toJS,
  ]).toInt();

  @override
  Vector2D Vector2Refract(
    Vector2D v,
    Vector2D n,
    double r,
  ) => rl.Temp.Vector2$.Extract3(
    (p) => _wasm.Vector2Refract.run([
      p.toJS,
      rl.Temp.Vector2$.Ref1(v).toJS,
      rl.Temp.Vector2$.Ref2(n).toJS,
      r.toJS,
    ]),
  );
}
