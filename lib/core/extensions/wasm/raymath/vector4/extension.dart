part of '../../../../raylib_dartified_web.dart';

class RaylibVector4Ext extends RaylibModuleWasm {
  /// Add two vectors
  late final JSFunction Vector4Add;
  /// Add value to vector components
  late final JSFunction Vector4AddValue;
  /// Calculate distance between two vectors
  late final JSFunction Vector4Distance;
  /// Calculate square distance between two vectors
  late final JSFunction Vector4DistanceSqr;
  /// Divide vector by vector
  late final JSFunction Vector4Divide;
  /// Vectors dot product
  late final JSFunction Vector4DotProduct;
  /// Check whether two given vectors are almost equal
  late final JSFunction Vector4Equals;
  /// Invert the given vector
  late final JSFunction Vector4Invert;
  /// Vector length
  late final JSFunction Vector4Length;
  /// Vector square length
  late final JSFunction Vector4LengthSqr;
  /// Calculate linear interpolation between two vectors
  late final JSFunction Vector4Lerp;
  /// Get max value for each pair of components
  late final JSFunction Vector4Max;
  /// Get min value for each pair of components
  late final JSFunction Vector4Min;
  /// Move Vector towards target
  late final JSFunction Vector4MoveTowards;
  /// Multiply vector by vector
  late final JSFunction Vector4Multiply;
  /// Negate vector
  late final JSFunction Vector4Negate;
  /// Normalize provided vector
  late final JSFunction Vector4Normalize;
  /// Get vector one
  late final JSFunction Vector4One;
  /// Scale vector components by value (multiply)
  late final JSFunction Vector4Scale;
  /// Substract vectors
  late final JSFunction Vector4Subtract;
  /// Substract value from vector components
  late final JSFunction Vector4SubtractValue;
  /// Get vector zero
  late final JSFunction Vector4Zero;

  RaylibVector4Ext(super.rl) {
    Vector4Add           = _module.dwrap('Vector4Add',           n3, rv);
    Vector4AddValue      = _module.dwrap('Vector4AddValue',      n3, rv);
    Vector4Distance      = _module.dwrap('Vector4Distance',      n2, rn);
    Vector4DistanceSqr   = _module.dwrap('Vector4DistanceSqr',   n2, rn);
    Vector4Divide        = _module.dwrap('Vector4Divide',        n3, rv);
    Vector4DotProduct    = _module.dwrap('Vector4DotProduct',    n2, rn);
    Vector4Equals        = _module.dwrap('Vector4Equals',        n2, rn);
    Vector4Invert        = _module.dwrap('Vector4Invert',        n2, rv);
    Vector4Length        = _module.dwrap('Vector4Length',        n1, rn);
    Vector4LengthSqr     = _module.dwrap('Vector4LengthSqr',     n1, rn);
    Vector4Lerp          = _module.dwrap('Vector4Lerp',          n4, rv);
    Vector4Max           = _module.dwrap('Vector4Max',           n3, rv);
    Vector4Min           = _module.dwrap('Vector4Min',           n3, rv);
    Vector4MoveTowards   = _module.dwrap('Vector4MoveTowards',   n4, rv);
    Vector4Multiply      = _module.dwrap('Vector4Multiply',      n3, rv);
    Vector4Negate        = _module.dwrap('Vector4Negate',        n2, rv);
    Vector4Normalize     = _module.dwrap('Vector4Normalize',     n2, rv);
    Vector4One           = _module.dwrap('Vector4One',           n1, rv);
    Vector4Scale         = _module.dwrap('Vector4Scale',         n3, rv);
    Vector4Subtract      = _module.dwrap('Vector4Subtract',      n3, rv);
    Vector4SubtractValue = _module.dwrap('Vector4SubtractValue', n3, rv);
    Vector4Zero          = _module.dwrap('Vector4Zero',          n1, rv);
  }
}
