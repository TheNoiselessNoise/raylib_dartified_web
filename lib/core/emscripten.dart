part of 'raylib_dartified_web.dart';

@JS('Module')
external _EmscriptenModule get _module;

@JS('HEAP8')
external _HEAP8 get _heap8;

@JS()
extension type _HEAP8._(JSObject _) implements JSObject {
  external JSArrayBuffer get buffer;
}

@JS('HEAPU8')
external _HEAPU8 get _heapu8;

@JS()
extension type _HEAPU8._(JSObject _) implements JSObject {
  external JSArrayBuffer get buffer;
}

@JS('HEAP16')
external _HEAP16 get _heap16;

@JS()
extension type _HEAP16._(JSObject _) implements JSObject {
  external JSArrayBuffer get buffer;
}

@JS('HEAPU16')
external _HEAPU16 get _heapu16;

@JS()
extension type _HEAPU16._(JSObject _) implements JSObject {
  external JSArrayBuffer get buffer;
}

@JS('HEAP32')
external _HEAP32 get _heap32;

@JS()
extension type _HEAP32._(JSObject _) implements JSObject {
  external JSArrayBuffer get buffer;
}

@JS('HEAPU32')
external _HEAPU32 get _heapu32;

@JS()
extension type _HEAPU32._(JSObject _) implements JSObject {
  external JSArrayBuffer get buffer;
}

@JS('HEAP64')
external _HEAP64 get _heap64;

@JS()
extension type _HEAP64._(JSObject _) implements JSObject {
  external JSArrayBuffer get buffer;
}

@JS('HEAPU64')
external _HEAPU64 get _heapu64;

@JS()
extension type _HEAPU64._(JSObject _) implements JSObject {
  external JSArrayBuffer get buffer;
}

@JS('HEAPF32')
external _HEAPF32 get _heapf32;

@JS()
extension type _HEAPF32._(JSObject _) implements JSObject {
  external JSArrayBuffer get buffer;
}

@JS('HEAPF64')
external _HEAPF64 get _heapf64;

@JS()
extension type _HEAPF64._(JSObject _) implements JSObject {
  external JSArrayBuffer get buffer;
}

extension type _EmscriptenModule._(JSObject _) implements JSObject {
  external JSFunction cwrap(JSString name, JSAny? returnType, JSArray argTypes);
  external int _malloc(int size);
  external void _free(int ptr);
  external void stringToUTF8(JSString str, int ptr, int maxLen);
  external int lengthBytesUTF8(JSString str);
  
  @JS('print')
  external void _print(JSAny? value);
  void print(List<Object?> values) => _print(values.map((o) => o.toString()).join(' ').toJS);

  @JS('addFunction')
  external int addFunction(JSFunction func, JSString signature);

  @JS('removeFunction')
  external int _removeFunction(JSNumber index);
  int removeFunction(int index) => _removeFunction(index.toJS);

  JSFunction dwrap(String name, [List<String> argTypes = const [], String? returnType]) {
    final wasmArgTypes = JSArray<JSString>();
    argTypes.forEach((a) => wasmArgTypes.add(a.toJS));
    return cwrap(name.toJS, returnType?.toJS, wasmArgTypes);
  }
}

extension JSFunctionUtilExtension on JSFunction {
  @JS('call')
  external JSAny? callAsFunction([
    JSAny? thisArg,
    JSAny? arg1,
    JSAny? arg2,
    JSAny? arg3,
    JSAny? arg4,
    JSAny? arg5,
    JSAny? arg6,
    JSAny? arg7,
    JSAny? arg8,
    JSAny? arg9,
  ]);

  JSAny? get run => callAsFunction(null);

  JSAny? run1([
    JSAny? arg1,
  ]) => callAsFunction(null, arg1);

  JSAny? run2([
    JSAny? arg1, JSAny? arg2,
  ]) => callAsFunction(null, arg1, arg2);

  JSAny? run3([
    JSAny? arg1, JSAny? arg2, JSAny? arg3,
  ]) => callAsFunction(null, arg1, arg2, arg3);

  JSAny? run4([
    JSAny? arg1, JSAny? arg2, JSAny? arg3, JSAny? arg4,
  ]) => callAsFunction(null, arg1, arg2, arg3, arg4);

  JSAny? run5([
    JSAny? arg1, JSAny? arg2, JSAny? arg3, JSAny? arg4, JSAny? arg5,
  ]) => callAsFunction(null, arg1, arg2, arg3, arg4, arg5);

  JSAny? run6([
    JSAny? arg1, JSAny? arg2, JSAny? arg3, JSAny? arg4, JSAny? arg5, JSAny? arg6,
  ]) => callAsFunction(null, arg1, arg2, arg3, arg4, arg5, arg6);

  JSAny? run7([
    JSAny? arg1, JSAny? arg2, JSAny? arg3, JSAny? arg4, JSAny? arg5, JSAny? arg6, JSAny? arg7,
  ]) => callAsFunction(null, arg1, arg2, arg3, arg4, arg5, arg6, arg7);

  JSAny? run8([
    JSAny? arg1, JSAny? arg2, JSAny? arg3, JSAny? arg4, JSAny? arg5, JSAny? arg6, JSAny? arg7, JSAny? arg8,
  ]) => callAsFunction(null, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);

  JSAny? run9([
    JSAny? arg1, JSAny? arg2, JSAny? arg3, JSAny? arg4, JSAny? arg5, JSAny? arg6, JSAny? arg7, JSAny? arg8, JSAny? arg9,
  ]) => callAsFunction(null, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
}