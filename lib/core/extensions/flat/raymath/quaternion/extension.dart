part of '../../../../raylib_dartified_web.dart';

class RaylibQuaternionExtFlatWeb extends RaylibQuaternionFlatExt<Raylib> {
  RaylibQuaternionExtFlatWeb(super.rl);

  RaylibQuaternionExt get _wasm => rl.module();

  @override
  Quaternion QuaternionAdd(
    Quaternion q1,
    Quaternion q2,
  ) => Quaternion$.Extract3(
    (p) => _wasm.QuaternionAdd(
      p.toJS,
      Quaternion$.Ref1(q1).toJS,
      Quaternion$.Ref2(q2).toJS,
    ),
  );

  @override
  Quaternion QuaternionAddValue(
    Quaternion q,
    double add,
  ) => Quaternion$.Extract2(
    (p) => _wasm.QuaternionAddValue(
      p.toJS,
      Quaternion$.Ref1(q).toJS,
      add.toJS,
    ),
  );

  @override
  Quaternion QuaternionSubtract(
    Quaternion q1,
    Quaternion q2,
  ) => Quaternion$.Extract3(
    (p) => _wasm.QuaternionSubtract(
      p.toJS,
      Quaternion$.Ref1(q1).toJS,
      Quaternion$.Ref2(q2).toJS,
    ),
  );

  @override
  Quaternion QuaternionSubtractValue(
    Quaternion q,
    double sub,
  ) => Quaternion$.Extract2(
    (p) => _wasm.QuaternionSubtractValue(
      p.toJS,
      Quaternion$.Ref1(q).toJS,
      sub.toJS,
    ),
  );

  @override
  Quaternion QuaternionIdentity() => Quaternion$.Extract1(
    (p) => _wasm.QuaternionIdentity(
      p.toJS,
    ),
  );

  @override
  double QuaternionLength(
    Quaternion q,
  ) => _wasm.QuaternionLength(
    Quaternion$.Ref1(q).toJS,
  );

  @override
  Quaternion QuaternionNormalize(
    Quaternion q,
  ) => Quaternion$.Extract2(
    (p) => _wasm.QuaternionNormalize(
      p.toJS,
      Quaternion$.Ref1(q).toJS,
    ),
  );

  @override
  Quaternion QuaternionInvert(
    Quaternion q,
  ) => Quaternion$.Extract2(
    (p) => _wasm.QuaternionInvert(
      p.toJS,
      Quaternion$.Ref1(q).toJS,
    ),
  );

  @override
  Quaternion QuaternionMultiply(
    Quaternion q1,
    Quaternion q2,
  ) => Quaternion$.Extract3(
    (p) => _wasm.QuaternionMultiply(
      p.toJS,
      Quaternion$.Ref1(q1).toJS,
      Quaternion$.Ref2(q2).toJS,
    ),
  );

  @override
  Quaternion QuaternionScale(
    Quaternion q,
    double mul,
  ) => Quaternion$.Extract2(
    (p) => _wasm.QuaternionScale(
      p.toJS,
      Quaternion$.Ref1(q).toJS,
      mul.toJS,
    ),
  );

  @override
  Quaternion QuaternionDivide(
    Quaternion q1,
    Quaternion q2,
  ) => Quaternion$.Extract3(
    (p) => _wasm.QuaternionDivide(
      p.toJS,
      Quaternion$.Ref1(q1).toJS,
      Quaternion$.Ref2(q2).toJS,
    ),
  );

  @override
  Quaternion QuaternionLerp(
    Quaternion q1,
    Quaternion q2,
    double amount,
  ) => Quaternion$.Extract3(
    (p) => _wasm.QuaternionLerp(
      p.toJS,
      Quaternion$.Ref1(q1).toJS,
      Quaternion$.Ref2(q2).toJS,
      amount.toJS,
    ),
  );

  @override
  Quaternion QuaternionNlerp(
    Quaternion q1,
    Quaternion q2,
    double amount,
  ) => Quaternion$.Extract3(
    (p) => _wasm.QuaternionNlerp(
      p.toJS,
      Quaternion$.Ref1(q1).toJS,
      Quaternion$.Ref2(q2).toJS,
      amount.toJS,
    ),
  );

  @override
  Quaternion QuaternionSlerp(
    Quaternion q1,
    Quaternion q2,
    double amount,
  ) => Quaternion$.Extract3(
    (p) => _wasm.QuaternionSlerp(
      p.toJS,
      Quaternion$.Ref1(q1).toJS,
      Quaternion$.Ref2(q2).toJS,
      amount.toJS,
    ),
  );

  @override
  Quaternion QuaternionCubicHermiteSpline(
    Quaternion q1,
    Quaternion outTangent1,
    Quaternion q2,
    Quaternion inTangent2,
    double t,
  ) => Quaternion$.Extract5(
    (p) => _wasm.QuaternionCubicHermiteSpline(
      p.toJS,
      Quaternion$.Ref1(q1).toJS,
      Quaternion$.Ref2(outTangent1).toJS,
      Quaternion$.Ref3(q2).toJS,
      Quaternion$.Ref4(inTangent2).toJS,
      t.toJS,
    ),
  );

  @override
  Quaternion QuaternionFromVector3ToVector3(
    Vector3 from,
    Vector3 to,
  ) => Quaternion$.Extract1(
    (p) => _wasm.QuaternionFromVector3ToVector3(
      p.toJS,
      Vector3$.Ref1(from).toJS,
      Vector3$.Ref2(to).toJS,
    ),
  );

  @override
  Quaternion QuaternionFromMatrix(
    Matrix mat,
  ) => Quaternion$.Extract1(
    (p) => _wasm.QuaternionFromMatrix(
      p.toJS,
      Matrix$.Ref1(mat).toJS,
    ),
  );

  @override
  Matrix QuaternionToMatrix(
    Quaternion q,
  ) => Matrix$.Extract1(
    (p) => _wasm.QuaternionToMatrix(
      p.toJS,
      Quaternion$.Ref1(q).toJS,
    ),
  );

  @override
  Quaternion QuaternionFromAxisAngle(
    Vector3 axis,
    double angle,
  ) => Quaternion$.Extract1(
    (p) => _wasm.QuaternionFromAxisAngle(
      p.toJS,
      Vector3$.Ref1(axis).toJS,
      angle.toJS,
    ),
  );

  @override
  void QuaternionToAxisAngle(
    Quaternion q,
    StructPointer<Vector3> outAxis,
    MemoryPointer<RFloat> outAngle,
  ) => _wasm.QuaternionToAxisAngle(
    Quaternion$.Ref1(q).toJS,
    outAxis.toJS,
    outAngle.toJS,
  );

  @override
  Quaternion QuaternionFromEuler(
    double pitch,
    double yaw,
    double roll,
  ) => Quaternion$.Extract1(
    (p) => _wasm.QuaternionFromEuler(
      p.toJS,
      pitch.toJS,
      yaw.toJS,
      roll.toJS,
    ),
  );

  @override
  Vector3 QuaternionToEuler(
    Quaternion q,
  ) => Vector3$.Extract1(
    (p) => _wasm.QuaternionToEuler(
      p.toJS,
      Quaternion$.Ref1(q).toJS,
    ),
  );

  @override
  Quaternion QuaternionTransform(
    Quaternion q,
    Matrix mat,
  ) => Quaternion$.Extract2(
    (p) => _wasm.QuaternionTransform(
      p.toJS,
      Quaternion$.Ref1(q).toJS,
      Matrix$.Ref1(mat).toJS,
    ),
  );

  @override
  bool QuaternionEquals(
    Quaternion p,
    Quaternion q,
  ) => _wasm.QuaternionEquals(
    Quaternion$.Ref1(p).toJS,
    Quaternion$.Ref2(q).toJS,
  );
}
