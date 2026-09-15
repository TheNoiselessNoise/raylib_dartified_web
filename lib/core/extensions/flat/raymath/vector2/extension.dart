part of '../../../../raylib_dartified_web.dart';

class RaylibVector2ExtFlat extends RaylibVector2FlatExt<Raylib> {
  RaylibVector2ExtFlat(super.rl);

  RaylibVector2Ext get _wasm => rl.module();

  @override
  Vector2D Vector2Zero() => $.Vector2$.Extract1(
    (p) => _wasm.Vector2Zero(
      p.toJS,
    ),
  );

  @override
  Vector2D Vector2One() => $.Vector2$.Extract1(
    (p) => _wasm.Vector2One(
      p.toJS,
    ),
  );

  @override
  Vector2D Vector2Add(
    Vector2D v1,
    Vector2D v2,
  ) => $.Vector2$.Extract3(
    (p) => _wasm.Vector2Add(
      p.toJS,
      $.Vector2$.Ref1(v1).toJS,
      $.Vector2$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector2D Vector2AddValue(
    Vector2D v,
    double add,
  ) => $.Vector2$.Extract2(
    (p) => _wasm.Vector2AddValue(
      p.toJS,
      $.Vector2$.Ref1(v).toJS,
      add.toJS,
    ),
  );

  @override
  Vector2D Vector2Subtract(
    Vector2D v1,
    Vector2D v2,
  ) => $.Vector2$.Extract3(
    (p) => _wasm.Vector2Subtract(
      p.toJS,
      $.Vector2$.Ref1(v1).toJS,
      $.Vector2$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector2D Vector2SubtractValue(
    Vector2D v,
    double sub,
  ) => $.Vector2$.Extract2(
    (p) => _wasm.Vector2SubtractValue(
      p.toJS,
      $.Vector2$.Ref1(v).toJS,
      sub.toJS,
    ),
  );

  @override
  double Vector2Length(
    Vector2D v,
  ) => _wasm.Vector2Length(
    $.Vector2$.Ref1(v).toJS,
  );

  @override
  double Vector2LengthSqr(
    Vector2D v,
  ) => _wasm.Vector2LengthSqr(
    $.Vector2$.Ref1(v).toJS,
  );

  @override
  double Vector2DotProduct(
    Vector2D v1,
    Vector2D v2,
  ) => _wasm.Vector2DotProduct(
    $.Vector2$.Ref1(v1).toJS,
    $.Vector2$.Ref2(v2).toJS,
  );

  @override
  double Vector2CrossProduct(
    Vector2D v1,
    Vector2D v2,
  ) => _wasm.Vector2CrossProduct(
    $.Vector2$.Ref1(v1).toJS,
    $.Vector2$.Ref2(v2).toJS,
  );

  @override
  double Vector2Distance(
    Vector2D v1,
    Vector2D v2,
  ) => _wasm.Vector2Distance(
    $.Vector2$.Ref1(v1).toJS,
    $.Vector2$.Ref2(v2).toJS,
  );

  @override
  double Vector2DistanceSqr(
    Vector2D v1,
    Vector2D v2,
  ) => _wasm.Vector2DistanceSqr(
    $.Vector2$.Ref1(v1).toJS,
    $.Vector2$.Ref2(v2).toJS,
  );

  @override
  double Vector2Angle(
    Vector2D v1,
    Vector2D v2,
  ) => _wasm.Vector2Angle(
    $.Vector2$.Ref1(v1).toJS,
    $.Vector2$.Ref2(v2).toJS,
  );

  @override
  double Vector2LineAngle(
    Vector2D start,
    Vector2D end,
  ) => _wasm.Vector2LineAngle(
    $.Vector2$.Ref1(start).toJS,
    $.Vector2$.Ref2(end).toJS,
  );

  @override
  Vector2D Vector2Scale(
    Vector2D v,
    double scale,
  ) => $.Vector2$.Extract2(
    (p) => _wasm.Vector2Scale(
      p.toJS,
      $.Vector2$.Ref1(v).toJS,
      scale.toJS,
    ),
  );

  @override
  Vector2D Vector2Multiply(
    Vector2D v1,
    Vector2D v2,
  ) => $.Vector2$.Extract3(
    (p) => _wasm.Vector2Multiply(
      p.toJS,
      $.Vector2$.Ref1(v1).toJS,
      $.Vector2$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector2D Vector2Negate(
    Vector2D v,
  ) => $.Vector2$.Extract2(
    (p) => _wasm.Vector2Negate(
      p.toJS,
      $.Vector2$.Ref1(v).toJS,
    ),
  );

  @override
  Vector2D Vector2Divide(
    Vector2D v1,
    Vector2D v2,
  ) => $.Vector2$.Extract3(
    (p) => _wasm.Vector2Divide(
      p.toJS,
      $.Vector2$.Ref1(v1).toJS,
      $.Vector2$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector2D Vector2Normalize(
    Vector2D v,
  ) => $.Vector2$.Extract2(
    (p) => _wasm.Vector2Normalize(
      p.toJS,
      $.Vector2$.Ref1(v).toJS,
    ),
  );

  @override
  Vector2D Vector2Transform(
    Vector2D v,
    MatrixD mat,
  ) => $.Vector2$.Extract2(
    (p) => _wasm.Vector2Transform(
      p.toJS,
      $.Vector2$.Ref1(v).toJS,
      $.Matrix$.Ref1(mat).toJS,
    ),
  );

  @override
  Vector2D Vector2Lerp(
    Vector2D v1,
    Vector2D v2,
    double amount,
  ) => $.Vector2$.Extract3(
    (p) => _wasm.Vector2Lerp(
      p.toJS,
      $.Vector2$.Ref1(v1).toJS,
      $.Vector2$.Ref2(v2).toJS,
      amount.toJS,
    ),
  );

  @override
  Vector2D Vector2Reflect(
    Vector2D v,
    Vector2D normal,
  ) => $.Vector2$.Extract3(
    (p) => _wasm.Vector2Reflect(
      p.toJS,
      $.Vector2$.Ref1(v).toJS,
      $.Vector2$.Ref2(normal).toJS,
    ),
  );

  @override
  Vector2D Vector2Min(
    Vector2D v1,
    Vector2D v2,
  ) => $.Vector2$.Extract3(
    (p) => _wasm.Vector2Min(
      p.toJS,
      $.Vector2$.Ref1(v1).toJS,
      $.Vector2$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector2D Vector2Max(
    Vector2D v1,
    Vector2D v2,
  ) => $.Vector2$.Extract3(
    (p) => _wasm.Vector2Max(
      p.toJS,
      $.Vector2$.Ref1(v1).toJS,
      $.Vector2$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector2D Vector2Rotate(
    Vector2D v,
    double angle,
  ) => $.Vector2$.Extract2(
    (p) => _wasm.Vector2Rotate(
      p.toJS,
      $.Vector2$.Ref1(v).toJS,
      angle.toJS,
    ),
  );

  @override
  Vector2D Vector2MoveTowards(
    Vector2D v,
    Vector2D target,
    double maxDistance,
  ) => $.Vector2$.Extract3(
    (p) => _wasm.Vector2MoveTowards(
      p.toJS,
      $.Vector2$.Ref1(v).toJS,
      $.Vector2$.Ref2(target).toJS,
      maxDistance.toJS,
    ),
  );

  @override
  Vector2D Vector2Invert(
    Vector2D v,
  ) => $.Vector2$.Extract2(
    (p) => _wasm.Vector2Invert(
      p.toJS,
      $.Vector2$.Ref1(v).toJS,
    ),
  );

  @override
  Vector2D Vector2Clamp(
    Vector2D v,
    Vector2D min,
    Vector2D max,
  ) => $.Vector2$.Extract4(
    (p) => _wasm.Vector2Clamp(
      p.toJS,
      $.Vector2$.Ref1(v).toJS,
      $.Vector2$.Ref2(min).toJS,
      $.Vector2$.Ref3(max).toJS,
    ),
  );

  @override
  Vector2D Vector2ClampValue(
    Vector2D v,
    double min,
    double max,
  ) => $.Vector2$.Extract2(
    (p) => _wasm.Vector2ClampValue(
      p.toJS,
      $.Vector2$.Ref1(v).toJS,
      min.toJS,
      max.toJS,
    ),
  );

  @override
  bool Vector2Equals(
    Vector2D p,
    Vector2D q,
  ) => _wasm.Vector2Equals(
    $.Vector2$.Ref1(p).toJS,
    $.Vector2$.Ref2(q).toJS,
  );

  @override
  Vector2D Vector2Refract(
    Vector2D v,
    Vector2D n,
    double r,
  ) => $.Vector2$.Extract3(
    (p) => _wasm.Vector2Refract(
      p.toJS,
      $.Vector2$.Ref1(v).toJS,
      $.Vector2$.Ref2(n).toJS,
      r.toJS,
    ),
  );
}
