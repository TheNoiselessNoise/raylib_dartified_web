part of '../../../../raylib_dartified_web.dart';

class RaylibQuaternionExtFlat extends RaylibQuaternionFlatExt<Raylib> {
  RaylibQuaternionExtFlat(super.rl);

  RaylibQuaternionExt get _wasm => rl.module();

  @override
  QuaternionD QuaternionAdd(
    QuaternionD q1,
    QuaternionD q2,
  ) => rl.Temp.Quaternion$.Extract3(
    (p) => _wasm.QuaternionAdd(
      p.toJS,
      rl.Temp.Quaternion$.Ref1(q1).toJS,
      rl.Temp.Quaternion$.Ref2(q2).toJS,
    ),
  );

  @override
  QuaternionD QuaternionAddValue(
    QuaternionD q,
    double add,
  ) => rl.Temp.Quaternion$.Extract2(
    (p) => _wasm.QuaternionAddValue(
      p.toJS,
      rl.Temp.Quaternion$.Ref1(q).toJS,
      add.toJS,
    ),
  );

  @override
  QuaternionD QuaternionSubtract(
    QuaternionD q1,
    QuaternionD q2,
  ) => rl.Temp.Quaternion$.Extract3(
    (p) => _wasm.QuaternionSubtract(
      p.toJS,
      rl.Temp.Quaternion$.Ref1(q1).toJS,
      rl.Temp.Quaternion$.Ref2(q2).toJS,
    ),
  );

  @override
  QuaternionD QuaternionSubtractValue(
    QuaternionD q,
    double sub,
  ) => rl.Temp.Quaternion$.Extract2(
    (p) => _wasm.QuaternionSubtractValue(
      p.toJS,
      rl.Temp.Quaternion$.Ref1(q).toJS,
      sub.toJS,
    ),
  );

  @override
  QuaternionD QuaternionIdentity() => rl.Temp.Quaternion$.Extract1(
    (p) => _wasm.QuaternionIdentity(
      p.toJS,
    ),
  );

  @override
  double QuaternionLength(
    QuaternionD q,
  ) => _wasm.QuaternionLength(
    rl.Temp.Quaternion$.Ref1(q).toJS,
  );

  @override
  QuaternionD QuaternionNormalize(
    QuaternionD q,
  ) => rl.Temp.Quaternion$.Extract2(
    (p) => _wasm.QuaternionNormalize(
      p.toJS,
      rl.Temp.Quaternion$.Ref1(q).toJS,
    ),
  );

  @override
  QuaternionD QuaternionInvert(
    QuaternionD q,
  ) => rl.Temp.Quaternion$.Extract2(
    (p) => _wasm.QuaternionInvert(
      p.toJS,
      rl.Temp.Quaternion$.Ref1(q).toJS,
    ),
  );

  @override
  QuaternionD QuaternionMultiply(
    QuaternionD q1,
    QuaternionD q2,
  ) => rl.Temp.Quaternion$.Extract3(
    (p) => _wasm.QuaternionMultiply(
      p.toJS,
      rl.Temp.Quaternion$.Ref1(q1).toJS,
      rl.Temp.Quaternion$.Ref2(q2).toJS,
    ),
  );

  @override
  QuaternionD QuaternionScale(
    QuaternionD q,
    double mul,
  ) => rl.Temp.Quaternion$.Extract2(
    (p) => _wasm.QuaternionScale(
      p.toJS,
      rl.Temp.Quaternion$.Ref1(q).toJS,
      mul.toJS,
    ),
  );

  @override
  QuaternionD QuaternionDivide(
    QuaternionD q1,
    QuaternionD q2,
  ) => rl.Temp.Quaternion$.Extract3(
    (p) => _wasm.QuaternionDivide(
      p.toJS,
      rl.Temp.Quaternion$.Ref1(q1).toJS,
      rl.Temp.Quaternion$.Ref2(q2).toJS,
    ),
  );

  @override
  QuaternionD QuaternionLerp(
    QuaternionD q1,
    QuaternionD q2,
    double amount,
  ) => rl.Temp.Quaternion$.Extract3(
    (p) => _wasm.QuaternionLerp(
      p.toJS,
      rl.Temp.Quaternion$.Ref1(q1).toJS,
      rl.Temp.Quaternion$.Ref2(q2).toJS,
      amount.toJS,
    ),
  );

  @override
  QuaternionD QuaternionNlerp(
    QuaternionD q1,
    QuaternionD q2,
    double amount,
  ) => rl.Temp.Quaternion$.Extract3(
    (p) => _wasm.QuaternionNlerp(
      p.toJS,
      rl.Temp.Quaternion$.Ref1(q1).toJS,
      rl.Temp.Quaternion$.Ref2(q2).toJS,
      amount.toJS,
    ),
  );

  @override
  QuaternionD QuaternionSlerp(
    QuaternionD q1,
    QuaternionD q2,
    double amount,
  ) => rl.Temp.Quaternion$.Extract3(
    (p) => _wasm.QuaternionSlerp(
      p.toJS,
      rl.Temp.Quaternion$.Ref1(q1).toJS,
      rl.Temp.Quaternion$.Ref2(q2).toJS,
      amount.toJS,
    ),
  );

  @override
  QuaternionD QuaternionCubicHermiteSpline(
    QuaternionD q1,
    QuaternionD outTangent1,
    QuaternionD q2,
    QuaternionD inTangent2,
    double t,
  ) => rl.Temp.Quaternion$.Extract5(
    (p) => _wasm.QuaternionCubicHermiteSpline(
      p.toJS,
      rl.Temp.Quaternion$.Ref1(q1).toJS,
      rl.Temp.Quaternion$.Ref2(outTangent1).toJS,
      rl.Temp.Quaternion$.Ref3(q2).toJS,
      rl.Temp.Quaternion$.Ref4(inTangent2).toJS,
      t.toJS,
    ),
  );

  @override
  QuaternionD QuaternionFromVector3ToVector3(
    Vector3D from,
    Vector3D to,
  ) => rl.Temp.Quaternion$.Extract1(
    (p) => _wasm.QuaternionFromVector3ToVector3(
      p.toJS,
      rl.Temp.Vector3$.Ref1(from).toJS,
      rl.Temp.Vector3$.Ref2(to).toJS,
    ),
  );

  @override
  QuaternionD QuaternionFromMatrix(
    MatrixD mat,
  ) => rl.Temp.Quaternion$.Extract1(
    (p) => _wasm.QuaternionFromMatrix(
      p.toJS,
      rl.Temp.Matrix$.Ref1(mat).toJS,
    ),
  );

  @override
  MatrixD QuaternionToMatrix(
    QuaternionD q,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.QuaternionToMatrix(
      p.toJS,
      rl.Temp.Quaternion$.Ref1(q).toJS,
    ),
  );

  @override
  QuaternionD QuaternionFromAxisAngle(
    Vector3D axis,
    double angle,
  ) => rl.Temp.Quaternion$.Extract1(
    (p) => _wasm.QuaternionFromAxisAngle(
      p.toJS,
      rl.Temp.Vector3$.Ref1(axis).toJS,
      angle.toJS,
    ),
  );

  @override
  void QuaternionToAxisAngle(
    QuaternionD q,
    StructPointer<Vector3D> outAxis,
    MemoryPointer<RFloat> outAngle,
  ) => _wasm.QuaternionToAxisAngle(
    rl.Temp.Quaternion$.Ref1(q).toJS,
    outAxis.toJS,
    outAngle.toJS,
  );

  @override
  QuaternionD QuaternionFromEuler(
    double pitch,
    double yaw,
    double roll,
  ) => rl.Temp.Quaternion$.Extract1(
    (p) => _wasm.QuaternionFromEuler(
      p.toJS,
      pitch.toJS,
      yaw.toJS,
      roll.toJS,
    ),
  );

  @override
  Vector3D QuaternionToEuler(
    QuaternionD q,
  ) => rl.Temp.Vector3$.Extract1(
    (p) => _wasm.QuaternionToEuler(
      p.toJS,
      rl.Temp.Quaternion$.Ref1(q).toJS,
    ),
  );

  @override
  QuaternionD QuaternionTransform(
    QuaternionD q,
    MatrixD mat,
  ) => rl.Temp.Quaternion$.Extract2(
    (p) => _wasm.QuaternionTransform(
      p.toJS,
      rl.Temp.Quaternion$.Ref1(q).toJS,
      rl.Temp.Matrix$.Ref1(mat).toJS,
    ),
  );

  @override
  bool QuaternionEquals(
    QuaternionD p,
    QuaternionD q,
  ) => _wasm.QuaternionEquals(
    rl.Temp.Quaternion$.Ref1(p).toJS,
    rl.Temp.Quaternion$.Ref2(q).toJS,
  );
}
