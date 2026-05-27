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

class _Offsets<K extends _WasmOffsets> {
  int _current = 0;
  final _map = <K, int>{};

  void add(K name, int size) {
    _map[name] = _current;
    _current += size;
  }

  int operator [](K name) => _map[name]!;
  int get byteSize => _current;

  static _Offsets<K> fromMap<K extends _WasmOffsets>(Map<K, int> map) {
    final current = _Offsets<K>();
    for (final entry in map.entries) {
      current.add(entry.key, entry.value);
    }
    return current;
  }
}

mixin _WasmOffsets on Enum {}

abstract class RaylibModuleWasm extends RaylibModule<Raylib> {
  final String s = 'string';
  final String n = 'number';

  RaylibModuleWasm(super.rl);
}

abstract class StructDWeb<T extends StructDWeb<T>> extends RaylibStructBase<RaylibTemp, WasmStructPointer<T>, T> with RaylibStructObjectBase<T> {
  StructDWeb({
    super.originalPointer,
  });

  int get wasmByteSize;

  WasmReader wasmReader([int? offset]) => .new(getOriginalPointer().address + (offset ?? 0));
  WasmReader wasmReaderOr(int address) => .new(originalPointer?.address ?? address);
  WasmWriter wasmWriter([int? offset]) => .new(getOriginalPointer().address + (offset ?? 0));
  WasmReader wasmWriterOr(int address) => .new(originalPointer?.address ?? address);

  @override
  void structAllocateInto(RaylibTemp temp, WasmStructPointer<T> p, String key) {}

  @override
  void structSyncInto(RaylibTemp temp, WasmStructPointer<T> p, String key) => wasmWriteInto(WasmWriter(p.address));

  @override
  void structWriteInto(WasmStructPointer<T> p) => wasmWriteInto(.new(p.address));

  @override
  void structReadFrom(WasmStructPointer<T> p) => wasmReadFrom(.new(p.address));
  
  void wasmWriteInto(WasmWriter writer);
  
  void wasmReadFrom(WasmReader reader);

  @override
  void structSyncFromMemory() => wasmReadFrom(wasmReader());

  @override
  void structSyncToMemory() => wasmWriteInto(wasmWriter());
}

abstract class StructDLiteralWeb<D extends StructDWeb<D>> extends StructDWeb<D> {
  StructDLiteralWeb({
    super.originalPointer,
  });

  @override
  bool get structRequiresOriginalPointer => false;
}

abstract class StructDViewWeb<D extends StructDWeb<D>> extends StructDWeb<D> {
  StructDViewWeb({
    super.originalPointer,
  });

  @override
  String signature() => '$structName()';

  @override
  @nonVirtual
  D setD(D o) => throw UnsupportedError('$runtimeType: is just a view; cannot write to it.');

  @override
  void wasmReadFrom(WasmReader reader) {} // NOTE: do nothing 
  
  @override
  @nonVirtual
  void wasmWriteInto(WasmWriter writer) {} // NOTE: do nothing
    // => throw UnsupportedError('$runtimeType: is just a view; cannot write externally.');

  @override
  D copy() => clone();
}

abstract class CallbackD<D extends Function> with RaylibCallbackBase {
  late final int _functionPtr;

  bool _isDisposed = false;

  D get function;

  // NOTE: required, `toJS` needs to know function type on the compile time

  /// Essentially, just override it like so:
  /// ```
  /// @override
  /// JSFunction get jsFunction => function.toJS;
  /// ```
  JSFunction get jsFunction;

  @override
  late String name;

  CallbackD([String? name]) {
    this.name = name ?? runtimeType.toString();
  }

  bool _initialized = false;

  // https://emscripten.org/docs/porting/connecting_cpp_and_javascript/Interacting-with-code.html#function-signatures
  // The signature string. First letter is the return type.
  // 'v': void type (only return type = first letter in the signature)
  // 'i': 32-bit integer type
  // 'j': 64-bit integer type
  // 'f': 32-bit float type
  // 'd': 64-bit float type
  // 'p': 32-bit or 64-bit pointer (MEMORY64)
  String get signature => 'v';

  int get nativeFunction {
    if (!_initialized) {
      _initialized = true;
      _functionPtr = _module.addFunction(jsFunction, signature.toJS);
    }
    assert(!_isDisposed, '$runtimeType: has been disposed');
    return _functionPtr;
  }

  List<CallbackD> get registry;

  int attach() {
    if (!registry.contains(this)) registry.add(this);
    return nativeFunction;
  }

  int detach([bool keepAlive = false]) {
    if (keepAlive) return nativeFunction;
    registry.remove(this);
    dispose();
    return nativeFunction;
  }

  void dispose() {
    if (_isDisposed) return;
    _isDisposed = true;
    _module.removeFunction(_functionPtr);
  }

  static void disposeRegistry(List<CallbackD> registry) {
    registry.forEach((f) => f.dispose());
    registry.clear();
  }

  /// Returns [name].
  @override
  String toString() => name;
}

abstract class WasmLiveList<T, P> extends RaylibLiveList<T> {
  P? ptr;

  WasmLiveList(super.inner, [this.ptr]);

  bool get isPointerValid {
    if (ptr is WasmPointer) return (ptr as WasmPointer).isNotNull;
    return false;
  }

  void onPointer(void Function(P) fn) {
    final p = ptr;
    if (p == null || !isPointerValid) return;
    fn(p);
  }

  @override
  void onElementSet(int index, T value) {
    final p = ptr;
    if (p == null || !isPointerValid) return;
    _indexSetter(p, index, value);
  }

  @override
  void onSet(List<T> value) {
    final p = ptr;
    if (p == null || !isPointerValid) return;
    _arraySetter(p, value);
  }

  @override
  T operator [](int index) {
    final p = ptr;
    if (p != null) return _indexGetter(p, index);
    return inner[index];
  }

  T _indexGetter(P ptr, int index);

  void _indexSetter(P ptr, int index, T value);

  void _arraySetter(P ptr, List<T> array);
}

typedef WasmLiveListArrayStruct<D extends StructDWeb<D>> = WasmLiveListPointerStruct<D>;

class WasmLiveListPointerStruct<D extends StructDWeb<D>> extends WasmLiveList<D, WasmStructPointer<D>> {
  WasmLiveListPointerStruct(super.inner, [super.ptr]);

  @override
  D _indexGetter(WasmStructPointer<D> ptr, int index) => inner[index];

  @override
  void _indexSetter(WasmStructPointer<D> ptr, int index, D value) => ptr.ref = value;

  @override
  void _arraySetter(WasmStructPointer<D> ptr, List<D> array) {
    for (final (i, v) in array.indexed) {
      ptr[i] = v;
    }
  }
}

class WasmLiveListPointerPointerStruct<D extends StructDWeb<D>> extends WasmLiveList<WasmLiveListPointerStruct<D>, WasmStructPointerPointer<D>> {

  WasmLiveListPointerPointerStruct(super.inner, [super.ptr]);

  WasmStructPointer<D>? innerPointer(int index) => ptr == null ? null : ptr![index];

  @override
  WasmLiveListPointerStruct<D> _indexGetter(WasmStructPointerPointer<D> ptr, int index) => inner[index];

  @override
  void _indexSetter(WasmStructPointerPointer<D> ptr, int index, WasmLiveListPointerStruct<D> value) {
    value.ptr = ptr[index]; // rewire inner list's pointer to correct frame
    value.onSet(value.inner); // flush inner list to that frame
  }

  @override
  void _arraySetter(WasmStructPointerPointer<D> ptr, List<WasmLiveListPointerStruct<D>> array) {
    for (final (i, v) in array.indexed) {
      v.ptr = ptr[i]; // wire inner list to its frame
      v.onSet(v.inner); // flush inner list to memory
    }
  }

  static WasmLiveListPointerPointerStruct<D> fromList<D extends StructDWeb<D>>(
    [List<List<D>>? list, WasmStructPointerPointer<D>? ptr]
  ) => .new(
    .generate((list ?? []).length, (i) {
      final innerPtr = ptr != null ? ptr[i] : null;
      return .new((list ?? [])[i], innerPtr);
    }),
    ptr,
  );
}

typedef _WasmLiveListIntegerArray<X, L extends TypedDataList<X>, P extends WasmLiteralTypedPointer<int, L>> = _WasmLiveListIntegerPointer<X, L, P>;

abstract class _WasmLiveListIntegerPointer<X, L extends TypedDataList<X>, P extends WasmLiteralTypedPointer<int, L>> extends WasmLiveList<int, P> {
  _WasmLiveListIntegerPointer(super.inner, [super.ptr]);

  @override
  int _indexGetter(P ptr, int index) => ptr[index];

  @override
  void _indexSetter(P ptr, int index, int value) => ptr[index] = value;

  @override
  void _arraySetter(P ptr, List<int> array) => ptr.setAll(array);
}

typedef _WasmLiveListDoubleArray<X, L extends TypedDataList<X>, P extends WasmLiteralTypedPointer<double, L>> = _WasmLiveListDoublePointer<X, L, P>;

abstract class _WasmLiveListDoublePointer<X, L extends TypedDataList<X>, P extends WasmLiteralTypedPointer<double, L>> extends WasmLiveList<double, P> {
  _WasmLiveListDoublePointer(super.inner, [super.ptr]);

  @override
  double _indexGetter(P ptr, int index) => ptr[index];

  @override
  void _indexSetter(P ptr, int index, double value) => ptr[index] = value;

  @override
  void _arraySetter(P ptr, List<double> array) => ptr.setAll(array);
}

class WasmLiveListArrayInt8 extends _WasmLiveListIntegerArray<int, Int8List, WasmInt8Pointer> {
  WasmLiveListArrayInt8(super.inner, [super.ptr]);
}

class WasmLiveListPointerInt8 extends _WasmLiveListIntegerPointer<int, Int8List, WasmInt8Pointer> {
  WasmLiveListPointerInt8(super.inner, [super.ptr]);
}

class WasmLiveListArrayInt16 extends _WasmLiveListIntegerArray<int, Int16List, WasmInt16Pointer> {
  WasmLiveListArrayInt16(super.inner, [super.ptr]);
}

class WasmLiveListPointerInt16 extends _WasmLiveListIntegerPointer<int, Int16List, WasmInt16Pointer> {
  WasmLiveListPointerInt16(super.inner, [super.ptr]);
}

class WasmLiveListArrayInt32 extends _WasmLiveListIntegerArray<int, Int32List, WasmInt32Pointer> {
  WasmLiveListArrayInt32(super.inner, [super.ptr]);
}

class WasmLiveListPointerInt32 extends _WasmLiveListIntegerPointer<int, Int32List, WasmInt32Pointer> {
  WasmLiveListPointerInt32(super.inner, [super.ptr]);
}

class WasmLiveListArrayInt64 extends _WasmLiveListIntegerArray<int, Int64List, WasmInt64Pointer> {
  WasmLiveListArrayInt64(super.inner, [super.ptr]);
}

class WasmLiveListPointerInt64 extends _WasmLiveListIntegerPointer<int, Int64List, WasmInt64Pointer> {
  WasmLiveListPointerInt64(super.inner, [super.ptr]);
}

class WasmLiveListArrayUint8 extends _WasmLiveListIntegerArray<int, Uint8List, WasmUint8Pointer> {
  WasmLiveListArrayUint8(super.inner, [super.ptr]);
}

class WasmLiveListPointerUint8 extends _WasmLiveListIntegerPointer<int, Uint8List, WasmUint8Pointer> {
  WasmLiveListPointerUint8(super.inner, [super.ptr]);
}

class WasmLiveListArrayUint16 extends _WasmLiveListIntegerArray<int, Uint16List, WasmUint16Pointer> {
  WasmLiveListArrayUint16(super.inner, [super.ptr]);
}

class WasmLiveListPointerUint16 extends _WasmLiveListIntegerPointer<int, Uint16List, WasmUint16Pointer> {
  WasmLiveListPointerUint16(super.inner, [super.ptr]);
}

class WasmLiveListArrayUint32 extends _WasmLiveListIntegerArray<int, Uint32List, WasmUint32Pointer> {
  WasmLiveListArrayUint32(super.inner, [super.ptr]);
}

class WasmLiveListPointerUint32 extends _WasmLiveListIntegerPointer<int, Uint32List, WasmUint32Pointer> {
  WasmLiveListPointerUint32(super.inner, [super.ptr]);
}

class WasmLiveListArrayUint64 extends _WasmLiveListIntegerArray<int, Uint64List, WasmUint64Pointer> {
  WasmLiveListArrayUint64(super.inner, [super.ptr]);
}

class WasmLiveListPointerUint64 extends _WasmLiveListIntegerPointer<int, Uint64List, WasmUint64Pointer> {
  WasmLiveListPointerUint64(super.inner, [super.ptr]);
}

class WasmLiveListArrayFloat32 extends _WasmLiveListDoubleArray<double, Float32List, WasmFloat32Pointer> {
  WasmLiveListArrayFloat32(super.inner, [super.ptr]);
}

class WasmLiveListPointerFloat32 extends _WasmLiveListDoublePointer<double, Float32List, WasmFloat32Pointer> {
  WasmLiveListPointerFloat32(super.inner, [super.ptr]);
}