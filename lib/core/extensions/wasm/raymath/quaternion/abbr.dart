import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibQuaternionExt get _module => Raylib.instance.module();

/// See [RaylibQuaternionExt.QuaternionAdd].
WF3<void> get QuaternionAdd => _module.QuaternionAdd;
/// See [RaylibQuaternionExt.QuaternionAddValue].
WF3<void> get QuaternionAddValue => _module.QuaternionAddValue;
/// See [RaylibQuaternionExt.QuaternionCubicHermiteSpline].
WF6<void> get QuaternionCubicHermiteSpline => _module.QuaternionCubicHermiteSpline;
/// See [RaylibQuaternionExt.QuaternionDivide].
WF3<void> get QuaternionDivide => _module.QuaternionDivide;
/// See [RaylibQuaternionExt.QuaternionEquals].
WF2<bool> get QuaternionEquals => _module.QuaternionEquals;
/// See [RaylibQuaternionExt.QuaternionFromAxisAngle].
WF3<void> get QuaternionFromAxisAngle => _module.QuaternionFromAxisAngle;
/// See [RaylibQuaternionExt.QuaternionFromEuler].
WF4<void> get QuaternionFromEuler => _module.QuaternionFromEuler;
/// See [RaylibQuaternionExt.QuaternionFromMatrix].
WF2<void> get QuaternionFromMatrix => _module.QuaternionFromMatrix;
/// See [RaylibQuaternionExt.QuaternionFromVector3ToVector3].
WF3<void> get QuaternionFromVector3ToVector3 => _module.QuaternionFromVector3ToVector3;
/// See [RaylibQuaternionExt.QuaternionIdentity].
WF1<void> get QuaternionIdentity => _module.QuaternionIdentity;
/// See [RaylibQuaternionExt.QuaternionInvert].
WF2<void> get QuaternionInvert => _module.QuaternionInvert;
/// See [RaylibQuaternionExt.QuaternionLength].
WF1<double> get QuaternionLength => _module.QuaternionLength;
/// See [RaylibQuaternionExt.QuaternionLerp].
WF4<void> get QuaternionLerp => _module.QuaternionLerp;
/// See [RaylibQuaternionExt.QuaternionMultiply].
WF3<void> get QuaternionMultiply => _module.QuaternionMultiply;
/// See [RaylibQuaternionExt.QuaternionNlerp].
WF4<void> get QuaternionNlerp => _module.QuaternionNlerp;
/// See [RaylibQuaternionExt.QuaternionNormalize].
WF2<void> get QuaternionNormalize => _module.QuaternionNormalize;
/// See [RaylibQuaternionExt.QuaternionScale].
WF3<void> get QuaternionScale => _module.QuaternionScale;
/// See [RaylibQuaternionExt.QuaternionSlerp].
WF4<void> get QuaternionSlerp => _module.QuaternionSlerp;
/// See [RaylibQuaternionExt.QuaternionSubtract].
WF3<void> get QuaternionSubtract => _module.QuaternionSubtract;
/// See [RaylibQuaternionExt.QuaternionSubtractValue].
WF3<void> get QuaternionSubtractValue => _module.QuaternionSubtractValue;
/// See [RaylibQuaternionExt.QuaternionToAxisAngle].
WF3<void> get QuaternionToAxisAngle => _module.QuaternionToAxisAngle;
/// See [RaylibQuaternionExt.QuaternionToEuler].
WF2<void> get QuaternionToEuler => _module.QuaternionToEuler;
/// See [RaylibQuaternionExt.QuaternionToMatrix].
WF2<void> get QuaternionToMatrix => _module.QuaternionToMatrix;
/// See [RaylibQuaternionExt.QuaternionTransform].
WF3<void> get QuaternionTransform => _module.QuaternionTransform;