part of 'raylib_dartified_web.dart';

/// JavaScript `console` object.
@JS('console')
external JSConsole get console;

/// Static interop type for the JavaScript `console` object.
@JS()
@staticInterop
class JSConsole {}

extension JSConsoleExtension on JSConsole {
  @JS('log')
  external void _log(JSAny? value);
  /// Logs a value to the JavaScript console.
  void log(Object? value) => _log(value.jsify());

  @JS('warn')
  external void _warn(JSAny? value);
  /// Logs a warning to the JavaScript console.
  void warn(Object? value) => _warn(value.jsify());

  @JS('error')
  external void _error(JSAny? value);
  /// Logs an error to the JavaScript console.
  void error(Object? value) => _error(value.jsify());
}

/// Returns the enumerable property names of a JavaScript object.
@JS('Object.keys')
external JSArray<JSString> _objectKeys(JSObject obj);

/// Convenience conversions from JavaScript values to Dart values.
extension JSAnyConversion on JSAny? {

  /// Converts a JavaScript value to a nullable Dart boolean.
  ///
  /// Returns `null` when the value cannot be interpreted as a boolean.
  bool? toNullableBool() {
    if (isUndefinedOrNull) return null;
    if (isA<JSBoolean>()) return (this as JSBoolean).toDart;
    if (isA<JSNumber>()) return (this as JSNumber).toDartInt != 0;
    if (isA<JSString>()) return switch ((this as JSString).toDart.trim().toLowerCase()) {
      'true' || '1' => true,
      'false' || '0' => false,
      _ => null,
    };
    return null;
  }

  /// Converts a JavaScript value to a Dart boolean.
  ///
  /// Returns [def] when the value cannot be interpreted as a boolean.
  bool toBool([bool def = false]) => toNullableBool() ?? def;

  /// Converts a JavaScript value to a nullable Dart integer.
  int? toNullableInt() {
    if (isUndefinedOrNull) return null;
    if (isA<JSNumber>()) return (this as JSNumber).toDartInt;
    if (isA<JSString>()) return int.tryParse((this as JSString).toDart);
    return null;
  }

  /// Converts a JavaScript value to a Dart integer.
  ///
  /// Returns [def] when the value cannot be interpreted as an integer.
  int toInt([int def = 0]) => toNullableInt() ?? def;

  /// Converts a JavaScript value to a nullable Dart double.
  double? toNullableDouble() {
    if (isUndefinedOrNull) return null;
    if (isA<JSNumber>()) return (this as JSNumber).toDartDouble;
    if (isA<JSString>()) return double.tryParse((this as JSString).toDart);
    return null;
  }

  /// Converts a JavaScript value to a Dart double.
  ///
  /// Returns [def] when the value cannot be interpreted as a double.
  double toDouble([double def = 0.0]) => toNullableDouble() ?? def;

  /// Converts a JavaScript value to a nullable Dart string.
  String? toNullableString() {
    if (isUndefinedOrNull) return null;
    if (isA<JSString>()) return (this as JSString).toDart;
    if (isA<JSNumber>()) return (this as JSNumber).toDartDouble.toString();
    if (isA<JSBoolean>()) return (this as JSBoolean).toDart.toString();
    return null;
  }

  /// Converts a JavaScript value to a Dart string.
  ///
  /// Returns [def] when the value cannot be converted to a string.
  String toDartString([String def = '']) => toNullableString() ?? def;

  /// Converts a JavaScript array to a Dart list.
  List<JSAny?>? toNullableList() {
    if (isUndefinedOrNull) return null;
    if (!isA<JSArray>()) return null;
    final arr = this as JSArray;
    return List.generate(arr.length, (i) => arr[i]);
  }

  /// Converts a JavaScript array to a Dart list.
  ///
  /// Returns an empty list when the value is not a JavaScript array.
  List<JSAny?> toList() => toNullableList() ?? [];

  /// Converts a JavaScript object to a Dart map.
  Map<String, JSAny?>? toNullableMap() {
    if (isUndefinedOrNull) return null;
    if (!isA<JSObject>() || isA<JSArray>()) return null;
    final obj = this as JSObject;
    final keys = _objectKeys(obj).toDart;
    return {
      for (final k in keys) k.toDart: obj.getProperty(k),
    };
  }

  /// Converts a JavaScript object to a Dart map.
  ///
  /// Returns an empty map when the value is not a JavaScript object.
  Map<String, JSAny?> toMap() => toNullableMap() ?? {};

  /// Whether this value is neither JavaScript `undefined` nor `null`.
  bool get isDefined => !isUndefinedOrNull;
}

/// Base class for WASM-backed Raylib modules.
///
/// Provides reusable Emscripten `cwrap` argument and return-type descriptors.
abstract class RaylibModuleWasm extends RaylibModule<Raylib> {
  static const String _n = 'number';

  /// Emscripten `cwrap` argument descriptor for a function with **no** arguments.
  final List<String> n0 = [];

  /// Emscripten `cwrap` argument descriptor for a function with `1` argument.
  final List<String> n1 = [_n];

  /// Emscripten `cwrap` argument descriptor for a function with `2` arguments.
  final List<String> n2 = [_n, _n];

  /// Emscripten `cwrap` argument descriptor for a function with `3` arguments.
  final List<String> n3 = [_n, _n, _n];

  /// Emscripten `cwrap` argument descriptor for a function with `4` arguments.
  final List<String> n4 = [_n, _n, _n, _n];

  /// Emscripten `cwrap` argument descriptor for a function with `5` arguments.
  final List<String> n5 = [_n, _n, _n, _n, _n];

  /// Emscripten `cwrap` argument descriptor for a function with `6` arguments.
  final List<String> n6 = [_n, _n, _n, _n, _n, _n];

  /// Emscripten `cwrap` argument descriptor for a function with `7` arguments.
  final List<String> n7 = [_n, _n, _n, _n, _n, _n, _n];

  /// Emscripten `cwrap` argument descriptor for a function with `8` arguments.
  final List<String> n8 = [_n, _n, _n, _n, _n, _n, _n, _n];

  /// Emscripten `cwrap` argument descriptor for a function with `9` arguments.
  final List<String> n9 = [_n, _n, _n, _n, _n, _n, _n, _n, _n];

  /// Emscripten `cwrap` return type for functions returning `void`.
  ///
  /// Also used for functions returning a struct, which use the WASM
  /// structure-return (`sret`) convention. Such functions receive an
  /// additional hidden return-pointer argument (first argument), so their
  /// `cwrap` argument count is one greater than their C signature.
  final Null rv = null;

  /// Emscripten `cwrap` return type for anything other than `struct`s and `void`.
  ///
  /// Functions using this return type do not use the WASM structure-return
  /// (`sret`) convention, so their argument count matches the C signature.
  final String rn = _n;

  RaylibModuleWasm(super.rl);
}