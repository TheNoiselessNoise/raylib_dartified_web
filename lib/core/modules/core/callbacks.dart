part of '../../raylib_dartified_web.dart';

// LoadFileDataCallback

typedef LoadFileDataCallbackFunctionD = int Function(
  int fileNamePtr, // Pointer<Char>
  int dataSizePtr, // Pointer<Int>
);

typedef LoadFileDataCallbackFriendlyFunctionD = WasmUint8Pointer Function(
  String fileName,
  int dataSizePtr,
);

abstract class LoadFileDataCallbackD extends CallbackD<
  LoadFileDataCallbackFunctionD
> with LoadFileDataCallbackBase {
  LoadFileDataCallbackD([super.name]);

  static final List<LoadFileDataCallbackD> _registry = [];

  @override
  @nonVirtual
  get registry => _registry;

  @override
  JSFunction get jsFunction => function.toJS;

  @override
  String get signature => 'ipp';

  static void disposeRegistry() => CallbackD.disposeRegistry(_registry);

  factory LoadFileDataCallbackD.function(LoadFileDataCallbackFunctionD f, {String? name})
    => _LoadFileDataCallbackD(f, name: name);

  factory LoadFileDataCallbackD.friendly(LoadFileDataCallbackFriendlyFunctionD f, {String? name})
    => _LoadFileDataCallbackFriendlyD(f, name: name);
}

class _LoadFileDataCallbackD extends LoadFileDataCallbackD {
  final LoadFileDataCallbackFunctionD _f;
  _LoadFileDataCallbackD(this._f, {String? name}) : super(name);

  @override
  LoadFileDataCallbackFunctionD get function => _f;
}

class _LoadFileDataCallbackFriendlyD extends LoadFileDataCallbackD {
  final LoadFileDataCallbackFriendlyFunctionD _f;
  _LoadFileDataCallbackFriendlyD(this._f, {String? name}) : super(name);

  @override
  LoadFileDataCallbackFunctionD get function => (int fileNamePtr, int dataSizePtr) {
    final fileName = WasmStringPointer(fileNamePtr).ref;
    return _f(fileName, dataSizePtr).address;
  };
}

// SaveFileDataCallback

// returnType: bool
typedef SaveFileDataCallbackFunctionD = int Function(
  int fileNamePtr, // Pointer<Char>
  int dataPtr, // Pointer<Void>
  int dataSize,
);

typedef SaveFileDataCallbackFriendlyFunctionD = bool Function(
  String fileName,
  int dataPtr,
  int dataSize,
);

abstract class SaveFileDataCallbackD extends CallbackD<
  SaveFileDataCallbackFunctionD
> with SaveFileDataCallbackBase {
  SaveFileDataCallbackD([super.name]);

  static final List<SaveFileDataCallbackD> _registry = [];

  @override
  @nonVirtual
  get registry => _registry;

  @override
  JSFunction get jsFunction => function.toJS;

  @override
  String get signature => 'ippi';

  static void disposeRegistry() => CallbackD.disposeRegistry(_registry);

  factory SaveFileDataCallbackD.function(SaveFileDataCallbackFunctionD f, {String? name})
    => _SaveFileDataCallbackD(f, name: name);

  factory SaveFileDataCallbackD.friendly(SaveFileDataCallbackFriendlyFunctionD f, {String? name})
    => _SaveFileDataCallbackFriendlyD(f, name: name);
}

class _SaveFileDataCallbackD extends SaveFileDataCallbackD {
  final SaveFileDataCallbackFunctionD _f;
  _SaveFileDataCallbackD(this._f, {String? name}) : super(name);

  @override
  SaveFileDataCallbackFunctionD get function => _f;
}

class _SaveFileDataCallbackFriendlyD extends SaveFileDataCallbackD {
  final SaveFileDataCallbackFriendlyFunctionD _f;
  _SaveFileDataCallbackFriendlyD(this._f, {String? name}) : super(name);

  @override
  SaveFileDataCallbackFunctionD get function => (int fileNamePtr, int dataPtr, int dataSize) {
    final fileName = WasmStringPointer(fileNamePtr).ref;
    return _f(fileName, dataPtr, dataSize).toInt();
  };
}

// LoadFileTextCallback

// returnType: Pointer<Char>
typedef LoadFileTextCallbackFunctionD = int Function(
  int fileNamePtr, // Pointer<Char>
);

typedef LoadFileTextCallbackFriendlyFunctionD = String Function(
  String fileName,
);

abstract class LoadFileTextCallbackD extends CallbackD<
  LoadFileTextCallbackFunctionD
> with LoadFileTextCallbackBase {
  LoadFileTextCallbackD([super.name]);

  static final List<LoadFileTextCallbackD> _registry = [];

  @override
  @nonVirtual
  get registry => _registry;

  @override
  JSFunction get jsFunction => function.toJS;

  @override
  String get signature => 'pp';

  static void disposeRegistry() => CallbackD.disposeRegistry(_registry);

  factory LoadFileTextCallbackD.function(LoadFileTextCallbackFunctionD f, {String? name})
    => _LoadFileTextCallbackD(f, name: name);

  factory LoadFileTextCallbackD.friendly(LoadFileTextCallbackFriendlyFunctionD f, {String? name})
    => _LoadFileTextCallbackFriendlyD(f, name: name);
}

class _LoadFileTextCallbackD extends LoadFileTextCallbackD {
  final LoadFileTextCallbackFunctionD _f;
  _LoadFileTextCallbackD(this._f, {String? name}) : super(name);

  @override
  LoadFileTextCallbackFunctionD get function => _f;
}

class _LoadFileTextCallbackFriendlyD extends LoadFileTextCallbackD {
  final LoadFileTextCallbackFriendlyFunctionD _f;
  _LoadFileTextCallbackFriendlyD(this._f, {String? name}) : super(name);

  @override
  LoadFileTextCallbackFunctionD get function => (int fileNamePtr) {
    final fileName = WasmStringPointer(fileNamePtr).ref;
    return Raylib.instance.Temp.String$.Value(_f(fileName)).address;
  };
}

// SaveFileTextCallback

// returnType: bool
typedef SaveFileTextCallbackFunctionD = int Function(
  int fileNamePtr, // Pointer<Char>
  int textPtr, // Pointer<Char>
);

typedef SaveFileTextCallbackFriendlyFunctionD = bool Function(
  String fileName,
  String text,
);

abstract class SaveFileTextCallbackD extends CallbackD<
  SaveFileTextCallbackFunctionD
> with SaveFileTextCallbackBase {
  SaveFileTextCallbackD([super.name]);

  static final List<SaveFileTextCallbackD> _registry = [];

  @override
  @nonVirtual
  get registry => _registry;

  @override
  JSFunction get jsFunction => function.toJS;

  @override
  String get signature => 'ipp';

  static void disposeRegistry() => CallbackD.disposeRegistry(_registry);

  factory SaveFileTextCallbackD.function(SaveFileTextCallbackFunctionD f, {String? name})
    => _SaveFileTextCallbackD(f, name: name);

  factory SaveFileTextCallbackD.friendly(SaveFileTextCallbackFriendlyFunctionD f, {String? name})
    => _SaveFileTextCallbackFriendlyD(f, name: name);
}

class _SaveFileTextCallbackD extends SaveFileTextCallbackD {
  final SaveFileTextCallbackFunctionD _f;
  _SaveFileTextCallbackD(this._f, {String? name}) : super(name);

  @override
  SaveFileTextCallbackFunctionD get function => _f;
}

class _SaveFileTextCallbackFriendlyD extends SaveFileTextCallbackD {
  final SaveFileTextCallbackFriendlyFunctionD _f;
  _SaveFileTextCallbackFriendlyD(this._f, {String? name}) : super(name);

  @override
  SaveFileTextCallbackFunctionD get function => (int fileNamePtr, int textPtr) {
    final fileName = WasmStringPointer(fileNamePtr).ref;
    final text = WasmStringPointer(textPtr).ref;
    return _f(fileName, text).toInt();
  };
}