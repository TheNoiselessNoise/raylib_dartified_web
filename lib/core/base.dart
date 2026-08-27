part of 'raylib_dartified_web.dart';

@JS('console')
external JSConsole get console;

@JS()
@staticInterop
class JSConsole {}

extension JSConsoleExtension on JSConsole {
  @JS('log')
  external void _log(JSAny? value);
  void log(Object? value) => _log(value.jsify());

  @JS('warn')
  external void _warn(JSAny? value);
  void warn(Object? value) => _warn(value.jsify());

  @JS('error')
  external void _error(JSAny? value);
  void error(Object? value) => _error(value.jsify());
}

@JS('Object.keys')
external JSArray<JSString> _objectKeys(JSObject obj);

extension JSAnyConversion on JSAny? {

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

  bool toBool([bool def = false]) => toNullableBool() ?? def;

  int? toNullableInt() {
    if (isUndefinedOrNull) return null;
    if (isA<JSNumber>()) return (this as JSNumber).toDartInt;
    if (isA<JSString>()) return int.tryParse((this as JSString).toDart);
    return null;
  }

  int toInt([int def = 0]) => toNullableInt() ?? def;

  double? toNullableDouble() {
    if (isUndefinedOrNull) return null;
    if (isA<JSNumber>()) return (this as JSNumber).toDartDouble;
    if (isA<JSString>()) return double.tryParse((this as JSString).toDart);
    return null;
  }

  double toDouble([double def = 0.0]) => toNullableDouble() ?? def;

  String? toNullableString() {
    if (isUndefinedOrNull) return null;
    if (isA<JSString>()) return (this as JSString).toDart;
    if (isA<JSNumber>()) return (this as JSNumber).toDartDouble.toString();
    if (isA<JSBoolean>()) return (this as JSBoolean).toDart.toString();
    return null;
  }

  String toDartString([String def = '']) => toNullableString() ?? def;

  List<JSAny?>? toNullableList() {
    if (isUndefinedOrNull) return null;
    if (!isA<JSArray>()) return null;
    final arr = this as JSArray;
    return List.generate(arr.length, (i) => arr[i]);
  }

  List<JSAny?> toList() => toNullableList() ?? [];

  Map<String, JSAny?>? toNullableMap() {
    if (isUndefinedOrNull) return null;
    if (!isA<JSObject>() || isA<JSArray>()) return null;
    final obj = this as JSObject;
    final keys = _objectKeys(obj).toDart;
    return {
      for (final k in keys) k.toDart: obj.getProperty(k),
    };
  }

  Map<String, JSAny?> toMap() => toNullableMap() ?? {};

  bool get isDefined => !isUndefinedOrNull;
}

abstract class RaylibModuleWasm extends RaylibModule<Raylib> {
  final String s = 'string';
  final String n = 'number';
  final String b = 'boolean';

  RaylibModuleWasm(super.rl);
}