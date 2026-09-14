import 'dart:js_interop';
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibQuaternionExt get _module => Raylib.instance.module();

/// See [RaylibQuaternionExt.QuaternionAdd].
JSFunction get QuaternionAdd => _module.QuaternionAdd;
/// See [RaylibQuaternionExt.QuaternionAddValue].
JSFunction get QuaternionAddValue => _module.QuaternionAddValue;
/// See [RaylibQuaternionExt.QuaternionCubicHermiteSpline].
JSFunction get QuaternionCubicHermiteSpline => _module.QuaternionCubicHermiteSpline;
/// See [RaylibQuaternionExt.QuaternionDivide].
JSFunction get QuaternionDivide => _module.QuaternionDivide;
/// See [RaylibQuaternionExt.QuaternionEquals].
JSFunction get QuaternionEquals => _module.QuaternionEquals;
/// See [RaylibQuaternionExt.QuaternionFromAxisAngle].
JSFunction get QuaternionFromAxisAngle => _module.QuaternionFromAxisAngle;
/// See [RaylibQuaternionExt.QuaternionFromEuler].
JSFunction get QuaternionFromEuler => _module.QuaternionFromEuler;
/// See [RaylibQuaternionExt.QuaternionFromMatrix].
JSFunction get QuaternionFromMatrix => _module.QuaternionFromMatrix;
/// See [RaylibQuaternionExt.QuaternionFromVector3ToVector3].
JSFunction get QuaternionFromVector3ToVector3 => _module.QuaternionFromVector3ToVector3;
/// See [RaylibQuaternionExt.QuaternionIdentity].
JSFunction get QuaternionIdentity => _module.QuaternionIdentity;
/// See [RaylibQuaternionExt.QuaternionInvert].
JSFunction get QuaternionInvert => _module.QuaternionInvert;
/// See [RaylibQuaternionExt.QuaternionLength].
JSFunction get QuaternionLength => _module.QuaternionLength;
/// See [RaylibQuaternionExt.QuaternionLerp].
JSFunction get QuaternionLerp => _module.QuaternionLerp;
/// See [RaylibQuaternionExt.QuaternionMultiply].
JSFunction get QuaternionMultiply => _module.QuaternionMultiply;
/// See [RaylibQuaternionExt.QuaternionNlerp].
JSFunction get QuaternionNlerp => _module.QuaternionNlerp;
/// See [RaylibQuaternionExt.QuaternionNormalize].
JSFunction get QuaternionNormalize => _module.QuaternionNormalize;
/// See [RaylibQuaternionExt.QuaternionScale].
JSFunction get QuaternionScale => _module.QuaternionScale;
/// See [RaylibQuaternionExt.QuaternionSlerp].
JSFunction get QuaternionSlerp => _module.QuaternionSlerp;
/// See [RaylibQuaternionExt.QuaternionSubtract].
JSFunction get QuaternionSubtract => _module.QuaternionSubtract;
/// See [RaylibQuaternionExt.QuaternionSubtractValue].
JSFunction get QuaternionSubtractValue => _module.QuaternionSubtractValue;
/// See [RaylibQuaternionExt.QuaternionToAxisAngle].
JSFunction get QuaternionToAxisAngle => _module.QuaternionToAxisAngle;
/// See [RaylibQuaternionExt.QuaternionToEuler].
JSFunction get QuaternionToEuler => _module.QuaternionToEuler;
/// See [RaylibQuaternionExt.QuaternionToMatrix].
JSFunction get QuaternionToMatrix => _module.QuaternionToMatrix;
/// See [RaylibQuaternionExt.QuaternionTransform].
JSFunction get QuaternionTransform => _module.QuaternionTransform;