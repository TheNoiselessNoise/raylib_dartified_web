part of '../../../../raylib_dartified_web.dart';

class RaylibQuaternionExt extends RaylibModuleWasm {
  /// Add two quaternions
  late final JSFunction QuaternionAdd;
  /// Add quaternion and double value
  late final JSFunction QuaternionAddValue;
  /// Calculate quaternion cubic spline interpolation using Cubic Hermite Spline algorithm
  /// as described in the GLTF 2.0 specification: https://registry.khronos.org/glTF/specs/2.0/glTF-2.0.html#interpolation-cubic
  late final JSFunction QuaternionCubicHermiteSpline;
  /// Divide two quaternions
  late final JSFunction QuaternionDivide;
  /// Check whether two given quaternions are almost equal
  late final JSFunction QuaternionEquals;
  /// Get rotation quaternion for an angle and axis
  /// 
  /// NOTE: Angle must be provided in radians
  late final JSFunction QuaternionFromAxisAngle;
  /// Get the quaternion equivalent to Euler angles
  /// 
  /// NOTE: Rotation order is ZYX
  late final JSFunction QuaternionFromEuler;
  /// Get a quaternion for a given rotation matrix
  late final JSFunction QuaternionFromMatrix;
  /// Calculate quaternion based on the rotation from one vector to another
  late final JSFunction QuaternionFromVector3ToVector3;
  /// Get identity quaternion
  late final JSFunction QuaternionIdentity;
  /// Invert provided quaternion
  late final JSFunction QuaternionInvert;
  /// Computes the length of a quaternion
  late final JSFunction QuaternionLength;
  /// Calculate linear interpolation between two quaternions
  late final JSFunction QuaternionLerp;
  /// Calculate two quaternion multiplication
  late final JSFunction QuaternionMultiply;
  /// Calculate slerp-optimized interpolation between two quaternions
  late final JSFunction QuaternionNlerp;
  /// Normalize provided quaternion
  late final JSFunction QuaternionNormalize;
  /// Scale quaternion by double value
  late final JSFunction QuaternionScale;
  /// Calculates spherical linear interpolation between two quaternions
  late final JSFunction QuaternionSlerp;
  /// Subtract two quaternions
  late final JSFunction QuaternionSubtract;
  /// Subtract quaternion and double value
  late final JSFunction QuaternionSubtractValue;
  /// Get the rotation angle and axis for a given quaternion
  late final JSFunction QuaternionToAxisAngle;
  /// Get the Euler angles equivalent to quaternion (roll, pitch, yaw)
  /// 
  /// NOTE: Angles are returned in a Vector3 struct in radians
  late final JSFunction QuaternionToEuler;
  /// Get a matrix for a given quaternion
  late final JSFunction QuaternionToMatrix;
  /// Transform a quaternion given a transformation matrix
  late final JSFunction QuaternionTransform;

  RaylibQuaternionExt(super.rl) {
    QuaternionAdd                  = _module.dwrap('QuaternionAdd',                  n3, rv);
    QuaternionAddValue             = _module.dwrap('QuaternionAddValue',             n3, rv);
    QuaternionCubicHermiteSpline   = _module.dwrap('QuaternionCubicHermiteSpline',   n6, rv);
    QuaternionDivide               = _module.dwrap('QuaternionDivide',               n3, rv);
    QuaternionEquals               = _module.dwrap('QuaternionEquals',               n2, rn);
    QuaternionFromAxisAngle        = _module.dwrap('QuaternionFromAxisAngle',        n3, rv);
    QuaternionFromEuler            = _module.dwrap('QuaternionFromEuler',            n4, rv);
    QuaternionFromMatrix           = _module.dwrap('QuaternionFromMatrix',           n2, rv);
    QuaternionFromVector3ToVector3 = _module.dwrap('QuaternionFromVector3ToVector3', n3, rv);
    QuaternionIdentity             = _module.dwrap('QuaternionIdentity',             n1, rv);
    QuaternionInvert               = _module.dwrap('QuaternionInvert',               n2, rv);
    QuaternionLength               = _module.dwrap('QuaternionLength',               n1, rn);
    QuaternionLerp                 = _module.dwrap('QuaternionLerp',                 n4, rv);
    QuaternionMultiply             = _module.dwrap('QuaternionMultiply',             n3, rv);
    QuaternionNlerp                = _module.dwrap('QuaternionNlerp',                n4, rv);
    QuaternionNormalize            = _module.dwrap('QuaternionNormalize',            n2, rv);
    QuaternionScale                = _module.dwrap('QuaternionScale',                n3, rv);
    QuaternionSlerp                = _module.dwrap('QuaternionSlerp',                n4, rv);
    QuaternionSubtract             = _module.dwrap('QuaternionSubtract',             n3, rv);
    QuaternionSubtractValue        = _module.dwrap('QuaternionSubtractValue',        n3, rv);
    QuaternionToAxisAngle          = _module.dwrap('QuaternionToAxisAngle',          n3, rv);
    QuaternionToEuler              = _module.dwrap('QuaternionToEuler',              n2, rv);
    QuaternionToMatrix             = _module.dwrap('QuaternionToMatrix',             n2, rv);
    QuaternionTransform            = _module.dwrap('QuaternionTransform',            n3, rv);
  }
}