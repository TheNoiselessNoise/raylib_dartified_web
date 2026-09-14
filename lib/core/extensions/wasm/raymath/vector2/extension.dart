part of '../../../../raylib_dartified_web.dart';

class RaylibVector2Ext extends RaylibModuleWasm {
  /// Add two vectors (v1 + v2)
  late final JSFunction Vector2Add;
  /// Add vector and double value
  late final JSFunction Vector2AddValue;
  /// Calculate the signed angle from v1 to v2, relative to the origin (0, 0)
  /// 
  /// NOTE: Coordinate system convention: positive X right, positive Y down
  /// positive angles appear clockwise, and negative angles appear counterclockwise
  late final JSFunction Vector2Angle;
  /// Clamp the components of the vector between
  /// min and max values specified by the given vectors
  late final JSFunction Vector2Clamp;
  /// Clamp the magnitude of the vector between two min and max values
  late final JSFunction Vector2ClampValue;
  /// Calculate two vectors cross product
  late final JSFunction Vector2CrossProduct;
  /// Calculate distance between two vectors
  late final JSFunction Vector2Distance;
  /// Calculate square distance between two vectors
  late final JSFunction Vector2DistanceSqr;
  /// Divide vector by vector
  late final JSFunction Vector2Divide;
  /// Calculate two vectors dot product
  late final JSFunction Vector2DotProduct;
  /// Check whether two given vectors are almost equal
  late final JSFunction Vector2Equals;
  /// Invert the given vector
  late final JSFunction Vector2Invert;
  /// Calculate vector length
  late final JSFunction Vector2Length;
  /// Calculate vector square length
  late final JSFunction Vector2LengthSqr;
  /// Calculate linear interpolation between two vectors
  late final JSFunction Vector2Lerp;
  /// Calculate angle defined by a two vectors line
  /// 
  /// NOTE: Parameters need to be normalized
  late final JSFunction Vector2LineAngle;
  /// Get max value for each pair of components
  late final JSFunction Vector2Max;
  /// Get min value for each pair of components
  late final JSFunction Vector2Min;
  /// Move Vector towards target
  late final JSFunction Vector2MoveTowards;
  /// Multiply vector by vector
  late final JSFunction Vector2Multiply;
  /// Negate vector
  late final JSFunction Vector2Negate;
  /// Normalize provided vector
  late final JSFunction Vector2Normalize;
  /// Vector with components value 1.0f
  late final JSFunction Vector2One;
  /// Calculate reflected vector to normal
  late final JSFunction Vector2Reflect;
  /// Compute the direction of a refracted ray
  /// v: normalized direction of the incoming ray
  /// n: normalized normal vector of the interface of two optical media
  /// r: ratio of the refractive index of the medium from where the ray comes
  /// to the refractive index of the medium on the other side of the surface
  late final JSFunction Vector2Refract;
  /// Rotate vector by angle
  late final JSFunction Vector2Rotate;
  /// Scale vector (multiply by value)
  late final JSFunction Vector2Scale;
  /// Subtract two vectors (v1 - v2)
  late final JSFunction Vector2Subtract;
  /// Subtract vector by double value
  late final JSFunction Vector2SubtractValue;
  /// Transforms a Vector2 by a given Matrix
  late final JSFunction Vector2Transform;
  /// Vector with components value 0.0f
  late final JSFunction Vector2Zero;

  RaylibVector2Ext(super.rl) {
    Vector2Add           = _module.dwrap('Vector2Add',           n3, rv);
    Vector2AddValue      = _module.dwrap('Vector2AddValue',      n3, rv);
    Vector2Angle         = _module.dwrap('Vector2Angle',         n2, rn);
    Vector2Clamp         = _module.dwrap('Vector2Clamp',         n4, rv);
    Vector2ClampValue    = _module.dwrap('Vector2ClampValue',    n4, rv);
    Vector2CrossProduct  = _module.dwrap('Vector2CrossProduct',  n2, rn);
    Vector2Distance      = _module.dwrap('Vector2Distance',      n2, rn);
    Vector2DistanceSqr   = _module.dwrap('Vector2DistanceSqr',   n2, rn);
    Vector2Divide        = _module.dwrap('Vector2Divide',        n3, rv);
    Vector2DotProduct    = _module.dwrap('Vector2DotProduct',    n2, rn);
    Vector2Equals        = _module.dwrap('Vector2Equals',        n2, rn);
    Vector2Invert        = _module.dwrap('Vector2Invert',        n2, rv);
    Vector2Length        = _module.dwrap('Vector2Length',        n1, rn);
    Vector2LengthSqr     = _module.dwrap('Vector2LengthSqr',     n1, rn);
    Vector2Lerp          = _module.dwrap('Vector2Lerp',          n4, rv);
    Vector2LineAngle     = _module.dwrap('Vector2LineAngle',     n2, rn);
    Vector2Max           = _module.dwrap('Vector2Max',           n3, rv);
    Vector2Min           = _module.dwrap('Vector2Min',           n3, rv);
    Vector2MoveTowards   = _module.dwrap('Vector2MoveTowards',   n4, rv);
    Vector2Multiply      = _module.dwrap('Vector2Multiply',      n3, rv);
    Vector2Negate        = _module.dwrap('Vector2Negate',        n2, rv);
    Vector2Normalize     = _module.dwrap('Vector2Normalize',     n2, rv);
    Vector2One           = _module.dwrap('Vector2One',           n1, rv);
    Vector2Reflect       = _module.dwrap('Vector2Reflect',       n3, rv);
    Vector2Refract       = _module.dwrap('Vector2Refract',       n4, rv);
    Vector2Rotate        = _module.dwrap('Vector2Rotate',        n3, rv);
    Vector2Scale         = _module.dwrap('Vector2Scale',         n3, rv);
    Vector2Subtract      = _module.dwrap('Vector2Subtract',      n3, rv);
    Vector2SubtractValue = _module.dwrap('Vector2SubtractValue', n3, rv);
    Vector2Transform     = _module.dwrap('Vector2Transform',     n3, rv);
    Vector2Zero          = _module.dwrap('Vector2Zero',          n1, rv);
  }
}
