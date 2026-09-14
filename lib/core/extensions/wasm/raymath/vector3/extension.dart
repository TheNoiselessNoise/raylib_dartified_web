part of '../../../../raylib_dartified_web.dart';

class RaylibVector3Ext extends RaylibModuleWasm {
  /// Add two vectors
  late final JSFunction Vector3Add;
  /// Add vector and double value
  late final JSFunction Vector3AddValue;
  /// Calculate angle between two vectors
  late final JSFunction Vector3Angle;
  /// Compute barycenter coordinates (u, v, w) for point p with respect to triangle (a, b, c)
  /// 
  /// NOTE: Assumes P is on the plane of the triangle
  late final JSFunction Vector3Barycenter;
  /// Clamp the components of the vector between
  /// min and max values specified by the given vectors
  late final JSFunction Vector3Clamp;
  /// Clamp the magnitude of the vector between two values
  late final JSFunction Vector3ClampValue;
  /// Calculate two vectors cross product
  late final JSFunction Vector3CrossProduct;
  /// Calculate cubic hermite interpolation between two vectors and their tangents
  /// as described in the GLTF 2.0 specification: https://registry.khronos.org/glTF/specs/2.0/glTF-2.0.html#interpolation-cubic
  late final JSFunction Vector3CubicHermite;
  /// Calculate distance between two vectors
  late final JSFunction Vector3Distance;
  /// Calculate square distance between two vectors
  late final JSFunction Vector3DistanceSqr;
  /// Divide vector by vector
  late final JSFunction Vector3Divide;
  /// Calculate two vectors dot product
  late final JSFunction Vector3DotProduct;
  /// Check whether two given vectors are almost equal
  late final JSFunction Vector3Equals;
  /// Invert the given vector
  late final JSFunction Vector3Invert;
  /// Calculate vector length
  late final JSFunction Vector3Length;
  /// Calculate vector square length
  late final JSFunction Vector3LengthSqr;
  /// Calculate linear interpolation between two vectors
  late final JSFunction Vector3Lerp;
  /// Get max value for each pair of components
  late final JSFunction Vector3Max;
  /// Get min value for each pair of components
  late final JSFunction Vector3Min;
  /// Move Vector towards target
  late final JSFunction Vector3MoveTowards;
  /// Multiply vector by vector
  late final JSFunction Vector3Multiply;
  /// Negate provided vector (invert direction)
  late final JSFunction Vector3Negate;
  /// Normalize provided vector
  late final JSFunction Vector3Normalize;
  /// Vector with components value 1.0f
  late final JSFunction Vector3One;
  /// Orthonormalize provided vectors
  /// Makes vectors normalized and orthogonal to each other
  /// Gram-Schmidt function implementation
  late final JSFunction Vector3OrthoNormalize;
  /// Calculate one vector perpendicular vector
  late final JSFunction Vector3Perpendicular;
  /// Calculate the projection of the vector v1 on to v2
  late final JSFunction Vector3Project;
  /// Calculate reflected vector to normal
  late final JSFunction Vector3Reflect;
  /// Compute the direction of a refracted ray
  /// v: normalized direction of the incoming ray
  /// n: normalized normal vector of the interface of two optical media
  /// r: ratio of the refractive index of the medium from where the ray comes
  /// to the refractive index of the medium on the other side of the surface
  late final JSFunction Vector3Refract;
  /// Calculate the rejection of the vector v1 on to v2
  late final JSFunction Vector3Reject;
  /// Rotates a vector around an axis
  late final JSFunction Vector3RotateByAxisAngle;
  /// Transform a vector by quaternion rotation
  late final JSFunction Vector3RotateByQuaternion;
  /// Multiply vector by scalar
  late final JSFunction Vector3Scale;
  /// Subtract two vectors
  late final JSFunction Vector3Subtract;
  /// Subtract vector by double value
  late final JSFunction Vector3SubtractValue;
  /// Get Vector3 as float array
  late final JSFunction Vector3ToFloatV;
  /// Transforms a Vector3 by a given Matrix
  late final JSFunction Vector3Transform;
  /// Projects a Vector3 from screen space into object space
  late final JSFunction Vector3Unproject;
  /// Vector with components value 0.0f
  late final JSFunction Vector3Zero;

  RaylibVector3Ext(super.rl) {
    Vector3Add                = _module.dwrap('Vector3Add',                n3, rv);
    Vector3AddValue           = _module.dwrap('Vector3AddValue',           n3, rv);
    Vector3Angle              = _module.dwrap('Vector3Angle',              n2, rn);
    Vector3Barycenter         = _module.dwrap('Vector3Barycenter',         n5, rv);
    Vector3Clamp              = _module.dwrap('Vector3Clamp',              n4, rv);
    Vector3ClampValue         = _module.dwrap('Vector3ClampValue',         n4, rv);
    Vector3CrossProduct       = _module.dwrap('Vector3CrossProduct',       n3, rv);
    Vector3CubicHermite       = _module.dwrap('Vector3CubicHermite',       n6, rv);
    Vector3Distance           = _module.dwrap('Vector3Distance',           n2, rn);
    Vector3DistanceSqr        = _module.dwrap('Vector3DistanceSqr',        n2, rn);
    Vector3Divide             = _module.dwrap('Vector3Divide',             n3, rv);
    Vector3DotProduct         = _module.dwrap('Vector3DotProduct',         n2, rn);
    Vector3Equals             = _module.dwrap('Vector3Equals',             n2, rn);
    Vector3Invert             = _module.dwrap('Vector3Invert',             n2, rv);
    Vector3Length             = _module.dwrap('Vector3Length',             n1, rn);
    Vector3LengthSqr          = _module.dwrap('Vector3LengthSqr',          n1, rn);
    Vector3Lerp               = _module.dwrap('Vector3Lerp',               n4, rv);
    Vector3Max                = _module.dwrap('Vector3Max',                n3, rv);
    Vector3Min                = _module.dwrap('Vector3Min',                n3, rv);
    Vector3MoveTowards        = _module.dwrap('Vector3MoveTowards',        n4, rv);
    Vector3Multiply           = _module.dwrap('Vector3Multiply',           n3, rv);
    Vector3Negate             = _module.dwrap('Vector3Negate',             n2, rv);
    Vector3Normalize          = _module.dwrap('Vector3Normalize',          n2, rv);
    Vector3One                = _module.dwrap('Vector3One',                n1, rv);
    Vector3OrthoNormalize     = _module.dwrap('Vector3OrthoNormalize',     n2, rv);
    Vector3Perpendicular      = _module.dwrap('Vector3Perpendicular',      n2, rv);
    Vector3Project            = _module.dwrap('Vector3Project',            n3, rv);
    Vector3Reflect            = _module.dwrap('Vector3Reflect',            n3, rv);
    Vector3Refract            = _module.dwrap('Vector3Refract',            n4, rv);
    Vector3Reject             = _module.dwrap('Vector3Reject',             n3, rv);
    Vector3RotateByAxisAngle  = _module.dwrap('Vector3RotateByAxisAngle',  n4, rv);
    Vector3RotateByQuaternion = _module.dwrap('Vector3RotateByQuaternion', n3, rv);
    Vector3Scale              = _module.dwrap('Vector3Scale',              n3, rv);
    Vector3Subtract           = _module.dwrap('Vector3Subtract',           n3, rv);
    Vector3SubtractValue      = _module.dwrap('Vector3SubtractValue',      n3, rv);
    Vector3ToFloatV           = _module.dwrap('Vector3ToFloatV',           n2, rv);
    Vector3Transform          = _module.dwrap('Vector3Transform',          n3, rv);
    Vector3Unproject          = _module.dwrap('Vector3Unproject',          n4, rv);
    Vector3Zero               = _module.dwrap('Vector3Zero',               n1, rv);
  }
}
