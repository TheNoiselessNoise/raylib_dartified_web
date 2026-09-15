part of '../../../../raylib_dartified_web.dart';

class RaylibVector4ExtFlat extends RaylibVector4FlatExt<Raylib> {
  RaylibVector4ExtFlat(super.rl);

  RaylibVector4Ext get _wasm => rl.module();

  @override
  Vector4D Vector4Zero() => $.Vector4$.Extract1(
    (p) => _wasm.Vector4Zero(
      p.toJS,
    ),
  );

  @override
  Vector4D Vector4One() => $.Vector4$.Extract1(
    (p) => _wasm.Vector4One(
      p.toJS,
    ),
  );

  @override
  Vector4D Vector4Add(
    Vector4D v1,
    Vector4D v2,
  ) => $.Vector4$.Extract3(
    (p) => _wasm.Vector4Add(
      p.toJS,
      $.Vector4$.Ref1(v1).toJS,
      $.Vector4$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector4D Vector4AddValue(
    Vector4D v,
    double add,
  ) => $.Vector4$.Extract3(
    (p) => _wasm.Vector4AddValue(
      p.toJS,
      $.Vector4$.Ref1(v).toJS,
      add.toJS,
    ),
  );

  @override
  Vector4D Vector4Subtract(
    Vector4D v1,
    Vector4D v2,
  ) => $.Vector4$.Extract3(
    (p) => _wasm.Vector4Subtract(
      p.toJS,
      $.Vector4$.Ref1(v1).toJS,
      $.Vector4$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector4D Vector4SubtractValue(
    Vector4D v,
    double add,
  ) => $.Vector4$.Extract3(
    (p) => _wasm.Vector4SubtractValue(
      p.toJS,
      $.Vector4$.Ref1(v).toJS,
      add.toJS,
    ),
  );

  @override
  double Vector4Length(
    Vector4D v,
  ) => _wasm.Vector4Length(
    $.Vector4$.Ref1(v).toJS,
  );

  @override
  double Vector4LengthSqr(
    Vector4D v,
  ) => _wasm.Vector4LengthSqr(
    $.Vector4$.Ref1(v).toJS,
  );

  @override
  double Vector4DotProduct(
    Vector4D v1,
    Vector4D v2,
  ) => _wasm.Vector4DotProduct(
    $.Vector4$.Ref1(v1).toJS,
    $.Vector4$.Ref2(v2).toJS,
  );

  @override
  double Vector4Distance(
    Vector4D v1,
    Vector4D v2,
  ) => _wasm.Vector4Distance(
    $.Vector4$.Ref1(v1).toJS,
    $.Vector4$.Ref2(v2).toJS,
  );

  @override
  double Vector4DistanceSqr(
    Vector4D v1,
    Vector4D v2,
  ) => _wasm.Vector4DistanceSqr(
    $.Vector4$.Ref1(v1).toJS,
    $.Vector4$.Ref2(v2).toJS,
  );

  @override
  Vector4D Vector4Scale(
    Vector4D v,
    double scale,
  ) => $.Vector4$.Extract2(
    (p) => _wasm.Vector4Scale(
      p.toJS,
      $.Vector4$.Ref1(v).toJS,
      scale.toJS,
    ),
  );

  @override
  Vector4D Vector4Multiply(
    Vector4D v1,
    Vector4D v2,
  ) => $.Vector4$.Extract3(
    (p) => _wasm.Vector4Multiply(
      p.toJS,
      $.Vector4$.Ref1(v1).toJS,
      $.Vector4$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector4D Vector4Negate(
    Vector4D v,
  ) => $.Vector4$.Extract2(
    (p) => _wasm.Vector4Negate(
      p.toJS,
      $.Vector4$.Ref1(v).toJS,
    ),
  );

  @override
  Vector4D Vector4Divide(
    Vector4D v1,
    Vector4D v2,
  ) => $.Vector4$.Extract3(
    (p) => _wasm.Vector4Divide(
      p.toJS,
      $.Vector4$.Ref1(v1).toJS,
      $.Vector4$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector4D Vector4Normalize(
    Vector4D v,
  ) => $.Vector4$.Extract2(
    (p) => _wasm.Vector4Normalize(
      p.toJS,
      $.Vector4$.Ref1(v).toJS,
    ),
  );

  @override
  Vector4D Vector4Min(
    Vector4D v1,
    Vector4D v2,
  ) => $.Vector4$.Extract3(
    (p) => _wasm.Vector4Min(
      p.toJS,
      $.Vector4$.Ref1(v1).toJS,
      $.Vector4$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector4D Vector4Max(
    Vector4D v1,
    Vector4D v2,
  ) => $.Vector4$.Extract3(
    (p) => _wasm.Vector4Max(
      p.toJS,
      $.Vector4$.Ref1(v1).toJS,
      $.Vector4$.Ref2(v2).toJS,
    ),
  );

  @override
  Vector4D Vector4Lerp(
    Vector4D v1,
    Vector4D v2,
    double amount,
  ) => $.Vector4$.Extract3(
    (p) => _wasm.Vector4Lerp(
      p.toJS,
      $.Vector4$.Ref1(v1).toJS,
      $.Vector4$.Ref2(v2).toJS,
      amount.toJS,
    ),
  );

  @override
  Vector4D Vector4MoveTowards(
    Vector4D v,
    Vector4D target,
    double maxDistance,
  ) => $.Vector4$.Extract3(
    (p) => _wasm.Vector4MoveTowards(
      p.toJS,
      $.Vector4$.Ref1(v).toJS,
      $.Vector4$.Ref2(target).toJS,
      maxDistance.toJS,
    ),
  );

  @override
  Vector4D Vector4Invert(
    Vector4D v,
  ) => $.Vector4$.Extract2(
    (p) => _wasm.Vector4Invert(
      p.toJS,
      $.Vector4$.Ref1(v).toJS,
    ),
  );

  @override
  bool Vector4Equals(
    Vector4D p,
    Vector4D q,
  ) => _wasm.Vector4Equals(
    $.Vector4$.Ref1(p).toJS,
    $.Vector4$.Ref2(q).toJS,
  );
}
