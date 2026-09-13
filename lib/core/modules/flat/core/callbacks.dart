part of '../../../raylib_dartified_web.dart';

// TraceLogCallback

typedef _TraceLogCallbackFunction = void Function(
  int logLevel,
  int textPtr,
  int argsPtr,
);

abstract class TraceLogCallbackD extends TraceLogCallbackBase {
  TraceLogCallbackD([super.name]);

  /// The actual trampoline.
  _TraceLogCallbackFunction get _rawFunction =>
    (int logLevel, int textPtr, int argsPtr) =>
      function(
        logLevel,
        WasmMemoryPointer(textPtr),
        WasmMemoryPointer(argsPtr),
      );

  late final int _funcIndex;

  @override
  MemoryPointer<RFunction<TraceLogCallbackBase>> initializer() {
    _funcIndex = _module.addFunction(
      _rawFunction.toJS,
      'vipp'.toJS,
    );
    return WasmMemoryPointer(_funcIndex);
  }
  
  @override
  void dispose() {
    _module.removeFunction(_funcIndex.toJS);
    super.dispose();
  }

  factory TraceLogCallbackD.function(TraceLogCallbackFunction f, {String? name})
    => _TraceLogCallbackD(f, name: name);

  factory TraceLogCallbackD.friendly(TraceLogCallbackFriendlyFunction f, {String? name})
    => _TraceLogCallbackFriendlyD(f, name: name);
}

class _TraceLogCallbackD extends TraceLogCallbackD {
  final TraceLogCallbackFunction _f;
  _TraceLogCallbackD(this._f, {String? name}) : super(name);

  @override
  TraceLogCallbackFunction get function => _f;
}

class _TraceLogCallbackFriendlyD extends TraceLogCallbackD {
  final TraceLogCallbackFriendlyFunction _f;
  _TraceLogCallbackFriendlyD(this._f, {String? name}) : super(name);

  @override
  TraceLogCallbackFunction get function => (logLevel, text, args) {
    return _f(.fromValue(logLevel), text.toDartString());
  };
}

// LoadFileDataCallback

typedef _LoadFileDataCallbackFunction = int Function(
  int fileNamePtr, // Pointer<Char>
  int dataSizePtr, // Pointer<Int>
);

abstract class LoadFileDataCallbackD extends LoadFileDataCallbackBase {
  LoadFileDataCallbackD([super.name]);

  /// The actual trampoline.
  _LoadFileDataCallbackFunction get _rawFunction =>
    (int fileNamePtr, int dataSizePtr) => function(
      WasmMemoryPointer(fileNamePtr),
      WasmMemoryPointer(dataSizePtr),
    ).address;

  late final int _funcIndex;

  @override
  MemoryPointer<RFunction<LoadFileDataCallbackBase>> initializer() {
    _funcIndex = _module.addFunction(
      _rawFunction.toJS,
      'ipp'.toJS,
    );
    return WasmMemoryPointer(_funcIndex);
  }
  
  @override
  void dispose() {
    _module.removeFunction(_funcIndex.toJS);
    super.dispose();
  }

  factory LoadFileDataCallbackD.function(LoadFileDataCallbackFunction f, {String? name})
    => _LoadFileDataCallbackD(f, name: name);

  factory LoadFileDataCallbackD.friendly(LoadFileDataCallbackFriendlyFunction f, {String? name})
    => _LoadFileDataCallbackFriendlyD(f, name: name);
}

class _LoadFileDataCallbackD extends LoadFileDataCallbackD {
  final LoadFileDataCallbackFunction _f;
  _LoadFileDataCallbackD(this._f, {String? name}) : super(name);

  @override
  LoadFileDataCallbackFunction get function => _f;
}

class _LoadFileDataCallbackFriendlyD extends LoadFileDataCallbackD {
  final LoadFileDataCallbackFriendlyFunction _f;
  _LoadFileDataCallbackFriendlyD(this._f, {String? name}) : super(name);

  @override
  LoadFileDataCallbackFunction get function => (fileName, dataSize) {
    return _f(fileName.toDartString(), dataSize);
  };
}

// SaveFileDataCallback

// returnType: bool
typedef _SaveFileDataCallbackFunction = int Function(
  int fileNamePtr, // Pointer<Char>
  int dataPtr, // Pointer<Void>
  int dataSize,
);

abstract class SaveFileDataCallbackD extends SaveFileDataCallbackBase {
  SaveFileDataCallbackD([super.name]);

  /// The actual trampoline.
  _SaveFileDataCallbackFunction get _rawFunction =>
    (int fileNamePtr, int dataPtr, int dataSize) =>
      function(
        WasmMemoryPointer(fileNamePtr),
        WasmMemoryPointer(dataPtr),
        dataSize
      ).toInt();

  late final int _funcIndex;

  @override
  MemoryPointer<RFunction<SaveFileDataCallbackBase>> initializer() {
    _funcIndex = _module.addFunction(
      _rawFunction.toJS,
      'ippi'.toJS,
    );
    return WasmMemoryPointer(_funcIndex);
  }
  
  @override
  void dispose() {
    _module.removeFunction(_funcIndex.toJS);
    super.dispose();
  }

  factory SaveFileDataCallbackD.function(SaveFileDataCallbackFunction f, {String? name})
    => _SaveFileDataCallbackD(f, name: name);

  factory SaveFileDataCallbackD.friendly(SaveFileDataCallbackFriendlyFunction f, {String? name})
    => _SaveFileDataCallbackFriendlyD(f, name: name);
}

class _SaveFileDataCallbackD extends SaveFileDataCallbackD {
  final SaveFileDataCallbackFunction _f;
  _SaveFileDataCallbackD(this._f, {String? name}) : super(name);

  @override
  SaveFileDataCallbackFunction get function => _f;
}

class _SaveFileDataCallbackFriendlyD extends SaveFileDataCallbackD {
  final SaveFileDataCallbackFriendlyFunction _f;
  _SaveFileDataCallbackFriendlyD(this._f, {String? name}) : super(name);

  @override
  SaveFileDataCallbackFunction get function => (fileName, data, dataSize) {
    return _f(fileName.toDartString(), data, dataSize);
  };
}

// LoadFileTextCallback

// returnType: Pointer<Char>
typedef _LoadFileTextCallbackFunction = int Function(
  int fileNamePtr, // Pointer<Char>
);

abstract class LoadFileTextCallbackD extends LoadFileTextCallbackBase {
  LoadFileTextCallbackD([super.name]);

  /// The actual trampoline.
  _LoadFileTextCallbackFunction get _rawFunction =>
    (int fileNamePtr) {
      final result = function(
        WasmMemoryPointer(fileNamePtr),
      );
      if (result.isNull) return 0;
      return result.address;
    };

  late final int _funcIndex;

  @override
  MemoryPointer<RFunction<LoadFileTextCallbackBase>> initializer() {
    _funcIndex = _module.addFunction(
      _rawFunction.toJS,
      'pp'.toJS,
    );
    return WasmMemoryPointer(_funcIndex);
  }
  
  @override
  void dispose() {
    _module.removeFunction(_funcIndex.toJS);
    super.dispose();
  }

  factory LoadFileTextCallbackD.function(LoadFileTextCallbackFunction f, {String? name})
    => _LoadFileTextCallbackD(f, name: name);

  factory LoadFileTextCallbackD.friendly(LoadFileTextCallbackFriendlyFunction f, {String? name})
    => _LoadFileTextCallbackFriendlyD(f, name: name);
}

class _LoadFileTextCallbackD extends LoadFileTextCallbackD {
  final LoadFileTextCallbackFunction _f;
  _LoadFileTextCallbackD(this._f, {String? name}) : super(name);

  @override
  LoadFileTextCallbackFunction get function => _f;
}

class _LoadFileTextCallbackFriendlyD extends LoadFileTextCallbackD {
  final LoadFileTextCallbackFriendlyFunction _f;
  _LoadFileTextCallbackFriendlyD(this._f, {String? name}) : super(name);

  @override
  LoadFileTextCallbackFunction get function => (fileName) {
    return WasmMemoryPointer(WasmMemory.allocString(_f(fileName.toDartString())));
  };
}

// SaveFileTextCallback

// returnType: bool
typedef _SaveFileTextCallbackFunction = int Function(
  int fileNamePtr, // Pointer<Char>
  int textPtr, // Pointer<Char>
);

abstract class SaveFileTextCallbackD extends SaveFileTextCallbackBase {
  SaveFileTextCallbackD([super.name]);

  /// The actual trampoline.
  _SaveFileTextCallbackFunction get _rawFunction =>
    (int fileNamePtr, int textPtr) =>
      function(
        WasmMemoryPointer(fileNamePtr),
        WasmMemoryPointer(textPtr),
      ).toInt();

  late final int _funcIndex;

  @override
  MemoryPointer<RFunction<SaveFileTextCallbackBase>> initializer() {
    _funcIndex = _module.addFunction(
      _rawFunction.toJS,
      'ipp'.toJS,
    );
    return WasmMemoryPointer(_funcIndex);
  }
  
  @override
  void dispose() {
    _module.removeFunction(_funcIndex.toJS);
    super.dispose();
  }

  factory SaveFileTextCallbackD.function(SaveFileTextCallbackFunction f, {String? name})
    => _SaveFileTextCallbackD(f, name: name);

  factory SaveFileTextCallbackD.friendly(SaveFileTextCallbackFriendlyFunction f, {String? name})
    => _SaveFileTextCallbackFriendlyD(f, name: name);
}

class _SaveFileTextCallbackD extends SaveFileTextCallbackD {
  final SaveFileTextCallbackFunction _f;
  _SaveFileTextCallbackD(this._f, {String? name}) : super(name);

  @override
  SaveFileTextCallbackFunction get function => _f;
}

class _SaveFileTextCallbackFriendlyD extends SaveFileTextCallbackD {
  final SaveFileTextCallbackFriendlyFunction _f;
  _SaveFileTextCallbackFriendlyD(this._f, {String? name}) : super(name);

  @override
  SaveFileTextCallbackFunction get function => (fileName, text) {
    return _f(fileName.toDartString(), text.toDartString());
  };
}