part of '../../../raylib_dartified_web.dart';

// MsfGifFileWriteFunc

typedef _MsfGifFileWriteFunction = int Function(
  int bufferPtr,
  int size,
  int count,
  int streamPtr,
);

abstract class MsfGifFileWriteCallbackD extends MsfGifFileWriteCallbackBase {
  MsfGifFileWriteCallbackD([super.name]);

  /// The actual trampoline.
  _MsfGifFileWriteFunction get _rawFunction =>
    (buffer, size, count, stream) =>
      function(
        WasmMemoryPointer(buffer),
        size,
        count,
        WasmMemoryPointer(stream),
      );

  late final int _funcIndex;

  @override
  MemoryPointer<RFunction<MsfGifFileWriteCallbackBase>> initializer() {
    _funcIndex = _module.addFunction(
      _rawFunction.toJS,
      'ipiip'.toJS,
    );
    return WasmMemoryPointer(_funcIndex);
  }

  @override
  void dispose() {
    _module.removeFunction(_funcIndex.toJS);
    super.dispose();
  }

  factory MsfGifFileWriteCallbackD.function(MsfGifFileWriteFunction f, {String? name})
    => _MsfGifFileWriteCallbackD(f, name: name);
}

class _MsfGifFileWriteCallbackD extends MsfGifFileWriteCallbackD {
  final MsfGifFileWriteFunction _f;

  _MsfGifFileWriteCallbackD(this._f, {String? name}) : super(name);

  @override
  MsfGifFileWriteFunction get function => _f;
}