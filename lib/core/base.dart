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

typedef WN = JSAny;
typedef WF0<R> = R Function();
typedef WF1<R> = R Function(WN);
typedef WF2<R> = R Function(WN, WN);
typedef WF3<R> = R Function(WN, WN, WN);
typedef WF4<R> = R Function(WN, WN, WN, WN);
typedef WF5<R> = R Function(WN, WN, WN, WN, WN);
typedef WF6<R> = R Function(WN, WN, WN, WN, WN, WN);
typedef WF7<R> = R Function(WN, WN, WN, WN, WN, WN, WN);
typedef WF8<R> = R Function(WN, WN, WN, WN, WN, WN, WN, WN);
typedef WF9<R> = R Function(WN, WN, WN, WN, WN, WN, WN, WN, WN);

/// Base class for WASM-backed Raylib modules.
///
/// Arity and (sort of) type-checked `cwrap` bindings.
abstract class RaylibModuleWasm extends RaylibModule<Raylib> {
  RaylibModuleWasm(super.rl);

  static const String _n = 'number';

  static const List<String> _nAll = [_n, _n, _n, _n, _n, _n, _n, _n, _n];

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

  /// normal wrapping
  JSFunction _wn(String name, int arity)
    => _module.dwrap(name, _nAll.sublist(0, arity), rn);

  /// sret wrapping
  JSFunction _ws(String name, int arity)
    => _module.dwrap(name, _nAll.sublist(0, arity + 1), rv);

  /// Resolves the JS->Dart conversion for a binding's return type, once at
  /// bind time. Unrecognized `R` (including `void` and `JSAny?` subtypes)
  /// falls through to a plain cast.
  R Function(JSAny?) _conv<R>() {
    if (R == int) return (v) => (v as JSNumber).toDartInt as R;
    if (R == double) return (v) => (v as JSNumber).toDartDouble as R;
    if (R == bool) return (v) => ((v as JSNumber).toDartInt != 0) as R;
    if (R == String) return (v) => (v as JSString).toDart as R;
    return (v) => v as dynamic;
  }

  /// Resolves a global symbol exported by the WASM module and wraps its
  /// address as a [WasmMemoryPointer].
  ///
  /// `name` is the C symbol name without Emscripten's leading underscore.
  /// `_$name` is looked up against the module's export table. `X` is a
  /// marker only.
  ///
  /// Use this for global variables/constants exported by the module.
  WasmMemoryPointer<X> symbol<X extends RType>(String name)
    => .new(_module.getGlobalAddress('_$name'));

  /// Binds a `cwrap`ed C function taking `0` arguments and returning a plain
  /// (non-struct) value.
  ///
  /// `R` determines the JS->Dart return conversion applied on every call
  /// (see [_conv]); use `void` if the C function returns nothing.
  WF0<R> dwrap0<R>(String name) {
    final f = _wn(name, 0);
    final c = _conv<R>();
    return () => c(f.run());
  }

  /// Binds a `cwrap`ed C function taking `0` arguments that returns a struct
  /// via the WASM structure-return (`sret`) convention.
  ///
  /// The single parameter is the caller-allocated pointer the struct is
  /// written into. Always returns `void`, read the result back out of
  /// the pointer you passed in.
  WF1<void> swrap0(String name) {
    final f = _ws(name, 0);
    return (a1) => f.run([a1]);
  }

  /// Binds a `cwrap`ed C function taking `0` arguments and returning a
  /// pointer, wrapped as `WasmMemoryPointer<X>`.
  ///
  /// `X` is a marker type only.
  WF0<WasmMemoryPointer<X>> pwrap0<X extends RType>(String name) {
    final f = _wn(name, 0);
    return () => .new((f.run() as JSNumber).toDartInt);
  }

  /// Binds a `cwrap`ed C function taking `0` arguments and returning a
  /// struct pointer, wrapped as `StructPointer<X>`.
  WF0<StructPointer<X>> qwrap0<X extends RaylibStruct<X>>(String name) {
    final f = _wn(name, 0);
    final struct = StructTypes.of<X>();
    return () => struct.ptr(WasmMemoryPointer((f.run() as JSNumber).toDartInt));
  }

  /// Binds a `cwrap`ed C function taking `1` argument and returning a plain
  /// (non-struct) value.
  ///
  /// `R` determines the JS->Dart return conversion applied on every call
  /// (see [_conv]); use `void` if the C function returns nothing.
  WF1<R> dwrap1<R>(String name) {
    final f = _wn(name, 1);
    final c = _conv<R>();
    return (a1) => c(f.run([a1]));
  }

  /// Binds a `cwrap`ed C function taking `1` argument that returns a struct
  /// via the WASM structure-return (`sret`) convention.
  ///
  /// The first parameter is the caller-allocated pointer the struct is
  /// written into, followed by the function's real argument. Always
  /// returns `void`, read the result back out of the pointer you passed in.
  WF2<void> swrap1(String name) {
    final f = _ws(name, 1);
    return (a1, a2) => f.run([a1, a2]);
  }

  /// Binds a `cwrap`ed C function taking `1` argument and returning a
  /// pointer, wrapped as `WasmMemoryPointer<X>`.
  ///
  /// `X` is a marker type only.
  WF1<WasmMemoryPointer<X>> pwrap1<X extends RType>(String name) {
    final f = _wn(name, 1);
    return (a1) => .new((f.run([a1]) as JSNumber).toDartInt);
  }

  /// Binds a `cwrap`ed C function taking `1` argument and returning a
  /// struct pointer, wrapped as `StructPointer<X>`.
  WF1<StructPointer<X>> qwrap1<X extends RaylibStruct<X>>(String name) {
    final f = _wn(name, 1);
    final struct = StructTypes.of<X>();
    return (a1) => struct.ptr(WasmMemoryPointer((f.run([a1]) as JSNumber).toDartInt));
  }

  /// Binds a `cwrap`ed C function taking `2` arguments and returning a plain
  /// (non-struct) value.
  ///
  /// `R` determines the JS->Dart return conversion applied on every call
  /// (see [_conv]); use `void` if the C function returns nothing.
  WF2<R> dwrap2<R>(String name) {
    final f = _wn(name, 2);
    final c = _conv<R>();
    return (a1, a2) => c(f.run([a1, a2]));
  }

  /// Binds a `cwrap`ed C function taking `2` arguments that returns a struct
  /// via the WASM structure-return (`sret`) convention.
  ///
  /// The first parameter is the caller-allocated pointer the struct is
  /// written into, followed by the function's real arguments. Always
  /// returns `void`, read the result back out of the pointer you passed in.
  WF3<void> swrap2(String name) {
    final f = _ws(name, 2);
    return (a1, a2, a3) => f.run([a1, a2, a3]);
  }

  /// Binds a `cwrap`ed C function taking `2` arguments and returning a
  /// pointer, wrapped as `WasmMemoryPointer<X>`.
  ///
  /// `X` is a marker type only.
  WF2<WasmMemoryPointer<X>> pwrap2<X extends RType>(String name) {
    final f = _wn(name, 2);
    return (a1, a2) => .new((f.run([a1, a2]) as JSNumber).toDartInt);
  }
  
  /// Binds a `cwrap`ed C function taking `2` argument and returning a
  /// struct pointer, wrapped as `StructPointer<X>`.
  WF2<StructPointer<X>> qwrap2<X extends RaylibStruct<X>>(String name) {
    final f = _wn(name, 2);
    final struct = StructTypes.of<X>();
    return (a1, a2) => struct.ptr(WasmMemoryPointer((f.run([a1, a2]) as JSNumber).toDartInt));
  }

  /// Binds a `cwrap`ed C function taking `3` arguments and returning a plain
  /// (non-struct) value.
  ///
  /// `R` determines the JS->Dart return conversion applied on every call
  /// (see [_conv]); use `void` if the C function returns nothing.
  WF3<R> dwrap3<R>(String name) {
    final f = _wn(name, 3);
    final c = _conv<R>();
    return (a1, a2, a3) => c(f.run([a1, a2, a3]));
  }

  /// Binds a `cwrap`ed C function taking `3` arguments that returns a struct
  /// via the WASM structure-return (`sret`) convention.
  ///
  /// The first parameter is the caller-allocated pointer the struct is
  /// written into, followed by the function's real arguments. Always
  /// returns `void`, read the result back out of the pointer you passed in.
  WF4<void> swrap3(String name) {
    final f = _ws(name, 3);
    return (a1, a2, a3, a4) => f.run([a1, a2, a3, a4]);
  }
  
  /// Binds a `cwrap`ed C function taking `3` arguments and returning a
  /// pointer, wrapped as `WasmMemoryPointer<X>`.
  ///
  /// `X` is a marker type only.
  WF3<WasmMemoryPointer<X>> pwrap3<X extends RType>(String name) {
    final f = _wn(name, 3);
    return (a1, a2, a3) => .new((f.run([a1, a2, a3]) as JSNumber).toDartInt);
  }

  /// Binds a `cwrap`ed C function taking `3` argument and returning a
  /// struct pointer, wrapped as `StructPointer<X>`.
  WF3<StructPointer<X>> qwrap3<X extends RaylibStruct<X>>(String name) {
    final f = _wn(name, 3);
    final struct = StructTypes.of<X>();
    return (a1, a2, a3) => struct.ptr(WasmMemoryPointer((f.run([a1, a2, a3]) as JSNumber).toDartInt));
  }

  /// Binds a `cwrap`ed C function taking `4` arguments and returning a plain
  /// (non-struct) value.
  ///
  /// `R` determines the JS->Dart return conversion applied on every call
  /// (see [_conv]); use `void` if the C function returns nothing.
  WF4<R> dwrap4<R>(String name) {
    final f = _wn(name, 4);
    final c = _conv<R>();
    return (a1, a2, a3, a4) => c(f.run([a1, a2, a3, a4]));
  }

  /// Binds a `cwrap`ed C function taking `4` arguments that returns a struct
  /// via the WASM structure-return (`sret`) convention.
  ///
  /// The first parameter is the caller-allocated pointer the struct is
  /// written into, followed by the function's real arguments. Always
  /// returns `void`, read the result back out of the pointer you passed in.
  WF5<void> swrap4(String name) {
    final f = _ws(name, 4);
    return (a1, a2, a3, a4, a5) => f.run([a1, a2, a3, a4, a5]);
  }

  /// Binds a `cwrap`ed C function taking `4` arguments and returning a
  /// pointer, wrapped as `WasmMemoryPointer<X>`.
  ///
  /// `X` is a marker type only.
  WF4<WasmMemoryPointer<X>> pwrap4<X extends RType>(String name) {
    final f = _wn(name, 4);
    return (a1, a2, a3, a4) => .new((f.run([a1, a2, a3, a4]) as JSNumber).toDartInt);
  }

  /// Binds a `cwrap`ed C function taking `4` argument and returning a
  /// struct pointer, wrapped as `StructPointer<X>`.
  WF4<StructPointer<X>> qwrap4<X extends RaylibStruct<X>>(String name) {
    final f = _wn(name, 4);
    final struct = StructTypes.of<X>();
    return (a1, a2, a3, a4) => struct.ptr(WasmMemoryPointer((f.run([a1, a2, a3, a4]) as JSNumber).toDartInt));
  }

  /// Binds a `cwrap`ed C function taking `5` arguments and returning a plain
  /// (non-struct) value.
  ///
  /// `R` determines the JS->Dart return conversion applied on every call
  /// (see [_conv]); use `void` if the C function returns nothing.
  WF5<R> dwrap5<R>(String name) {
    final f = _wn(name, 5);
    final c = _conv<R>();
    return (a1, a2, a3, a4, a5) => c(f.run([a1, a2, a3, a4, a5]));
  }

  /// Binds a `cwrap`ed C function taking `5` arguments that returns a struct
  /// via the WASM structure-return (`sret`) convention.
  ///
  /// The first parameter is the caller-allocated pointer the struct is
  /// written into, followed by the function's real arguments. Always
  /// returns `void`, read the result back out of the pointer you passed in.
  WF6<void> swrap5(String name) {
    final f = _ws(name, 5);
    return (a1, a2, a3, a4, a5, a6) => f.run([a1, a2, a3, a4, a5, a6]);
  }

  /// Binds a `cwrap`ed C function taking `5` arguments and returning a
  /// pointer, wrapped as `WasmMemoryPointer<X>`.
  ///
  /// `X` is a marker type only.
  WF5<WasmMemoryPointer<X>> pwrap5<X extends RType>(String name) {
    final f = _wn(name, 5);
    return (a1, a2, a3, a4, a5) => .new((f.run([a1, a2, a3, a4, a5]) as JSNumber).toDartInt);
  }

  /// Binds a `cwrap`ed C function taking `5` argument and returning a
  /// struct pointer, wrapped as `StructPointer<X>`.
  WF5<StructPointer<X>> qwrap5<X extends RaylibStruct<X>>(String name) {
    final f = _wn(name, 5);
    final struct = StructTypes.of<X>();
    return (a1, a2, a3, a4, a5) => struct.ptr(WasmMemoryPointer((f.run([a1, a2, a3, a4, a5]) as JSNumber).toDartInt));
  }

  /// Binds a `cwrap`ed C function taking `6` arguments and returning a plain
  /// (non-struct) value.
  ///
  /// `R` determines the JS->Dart return conversion applied on every call
  /// (see [_conv]); use `void` if the C function returns nothing.
  WF6<R> dwrap6<R>(String name) {
    final f = _wn(name, 6);
    final c = _conv<R>();
    return (a1, a2, a3, a4, a5, a6) => c(f.run([a1, a2, a3, a4, a5, a6]));
  }

  /// Binds a `cwrap`ed C function taking `6` arguments that returns a struct
  /// via the WASM structure-return (`sret`) convention.
  ///
  /// The first parameter is the caller-allocated pointer the struct is
  /// written into, followed by the function's real arguments. Always
  /// returns `void`, read the result back out of the pointer you passed in.
  WF7<void> swrap6(String name) {
    final f = _ws(name, 6);
    return (a1, a2, a3, a4, a5, a6, a7) => f.run([a1, a2, a3, a4, a5, a6, a7]);
  }

  /// Binds a `cwrap`ed C function taking `6` arguments and returning a
  /// pointer, wrapped as `WasmMemoryPointer<X>`.
  ///
  /// `X` is a marker type only.
  WF6<WasmMemoryPointer<X>> pwrap6<X extends RType>(String name) {
    final f = _wn(name, 6);
    return (a1, a2, a3, a4, a5, a6) => .new((f.run([a1, a2, a3, a4, a5, a6]) as JSNumber).toDartInt);
  }

  /// Binds a `cwrap`ed C function taking `6` argument and returning a
  /// struct pointer, wrapped as `StructPointer<X>`.
  WF6<StructPointer<X>> qwrap6<X extends RaylibStruct<X>>(String name) {
    final f = _wn(name, 6);
    final struct = StructTypes.of<X>();
    return (a1, a2, a3, a4, a5, a6) => struct.ptr(WasmMemoryPointer((f.run([a1, a2, a3, a4, a5, a6]) as JSNumber).toDartInt));
  }

  /// Binds a `cwrap`ed C function taking `7` arguments and returning a plain
  /// (non-struct) value.
  ///
  /// `R` determines the JS->Dart return conversion applied on every call
  /// (see [_conv]); use `void` if the C function returns nothing.
  WF7<R> dwrap7<R>(String name) {
    final f = _wn(name, 7);
    final c = _conv<R>();
    return (a1, a2, a3, a4, a5, a6, a7) => c(f.run([a1, a2, a3, a4, a5, a6, a7]));
  }

  /// Binds a `cwrap`ed C function taking `7` arguments that returns a struct
  /// via the WASM structure-return (`sret`) convention.
  ///
  /// The first parameter is the caller-allocated pointer the struct is
  /// written into, followed by the function's real arguments. Always
  /// returns `void`, read the result back out of the pointer you passed in.
  WF8<void> swrap7(String name) {
    final f = _ws(name, 7);
    return (a1, a2, a3, a4, a5, a6, a7, a8) => f.run([a1, a2, a3, a4, a5, a6, a7, a8]);
  }

  /// Binds a `cwrap`ed C function taking `7` arguments and returning a
  /// pointer, wrapped as `WasmMemoryPointer<X>`.
  ///
  /// `X` is a marker type only.
  WF7<WasmMemoryPointer<X>> pwrap7<X extends RType>(String name) {
    final f = _wn(name, 7);
    return (a1, a2, a3, a4, a5, a6, a7) => .new((f.run([a1, a2, a3, a4, a5, a6, a7]) as JSNumber).toDartInt);
  }

  /// Binds a `cwrap`ed C function taking `7` argument and returning a
  /// struct pointer, wrapped as `StructPointer<X>`.
  WF7<StructPointer<X>> qwrap7<X extends RaylibStruct<X>>(String name) {
    final f = _wn(name, 7);
    final struct = StructTypes.of<X>();
    return (a1, a2, a3, a4, a5, a6, a7) => struct.ptr(WasmMemoryPointer((f.run([a1, a2, a3, a4, a5, a6, a7]) as JSNumber).toDartInt));
  }

  /// Binds a `cwrap`ed C function taking `8` arguments and returning a plain
  /// (non-struct) value.
  ///
  /// `R` determines the JS->Dart return conversion applied on every call
  /// (see [_conv]); use `void` if the C function returns nothing.
  WF8<R> dwrap8<R>(String name) {
    final f = _wn(name, 8);
    final c = _conv<R>();
    return (a1, a2, a3, a4, a5, a6, a7, a8) => c(f.run([a1, a2, a3, a4, a5, a6, a7, a8]));
  }

  /// Binds a `cwrap`ed C function taking `8` arguments that returns a struct
  /// via the WASM structure-return (`sret`) convention.
  ///
  /// The first parameter is the caller-allocated pointer the struct is
  /// written into, followed by the function's real arguments. Always
  /// returns `void`, read the result back out of the pointer you passed in.
  WF9<void> swrap8(String name) {
    final f = _ws(name, 8);
    return (a1, a2, a3, a4, a5, a6, a7, a8, a9) => f.run([a1, a2, a3, a4, a5, a6, a7, a8, a9]);
  }

  /// Binds a `cwrap`ed C function taking `8` arguments and returning a
  /// pointer, wrapped as `WasmMemoryPointer<X>`.
  ///
  /// `X` is a marker type only.
  WF8<WasmMemoryPointer<X>> pwrap8<X extends RType>(String name) {
    final f = _wn(name, 8);
    return (a1, a2, a3, a4, a5, a6, a7, a8) => .new((f.run([a1, a2, a3, a4, a5, a6, a7, a8]) as JSNumber).toDartInt);
  }
  
  /// Binds a `cwrap`ed C function taking `8` argument and returning a
  /// struct pointer, wrapped as `StructPointer<X>`.
  WF8<StructPointer<X>> qwrap8<X extends RaylibStruct<X>>(String name) {
    final f = _wn(name, 8);
    final struct = StructTypes.of<X>();
    return (a1, a2, a3, a4, a5, a6, a7, a8) => struct.ptr(WasmMemoryPointer((f.run([a1, a2, a3, a4, a5, a6, a7, a8]) as JSNumber).toDartInt));
  }

  /// Binds a `cwrap`ed C function taking `9` arguments and returning a plain
  /// (non-struct) value.
  ///
  /// `R` determines the JS->Dart return conversion applied on every call
  /// (see [_conv]); use `void` if the C function returns nothing.
  WF9<R> dwrap9<R>(String name) {
    final f = _wn(name, 9);
    final c = _conv<R>();
    return (a1, a2, a3, a4, a5, a6, a7, a8, a9) => c(f.run([a1, a2, a3, a4, a5, a6, a7, a8, a9]));
  }

  /// Binds a `cwrap`ed C function taking `9` arguments and returning a
  /// pointer, wrapped as `WasmMemoryPointer<X>`.
  ///
  /// `X` is a marker type only.
  WF9<WasmMemoryPointer<X>> pwrap9<X extends RType>(String name) {
    final f = _wn(name, 9);
    return (a1, a2, a3, a4, a5, a6, a7, a8, a9) => .new((f.run([a1, a2, a3, a4, a5, a6, a7, a8, a9]) as JSNumber).toDartInt);
  }

  /// Binds a `cwrap`ed C function taking `9` argument and returning a
  /// struct pointer, wrapped as `StructPointer<X>`.
  WF9<StructPointer<X>> qwrap9<X extends RaylibStruct<X>>(String name) {
    final f = _wn(name, 9);
    final struct = StructTypes.of<X>();
    return (a1, a2, a3, a4, a5, a6, a7, a8, a9) => struct.ptr(WasmMemoryPointer((f.run([a1, a2, a3, a4, a5, a6, a7, a8, a9]) as JSNumber).toDartInt));
  }
}