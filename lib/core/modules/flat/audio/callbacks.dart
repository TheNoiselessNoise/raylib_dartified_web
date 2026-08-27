part of '../../../raylib_dartified_web.dart';

// AudioCallback

typedef _AudioCallbackFunction = void Function(
  int bufferData,
  int frames,
);

abstract class AudioCallbackD extends AudioCallbackBase {
  AudioCallbackD([super.name]);

  /// The actual trampoline.
  _AudioCallbackFunction get _rawFunction =>
    (bufferData, frames) =>
      function(
        WasmMemoryPointer(bufferData),
        frames,
      );

  late final int _funcIndex;

  @override
  MemoryPointer<RFunction<AudioCallbackBase>> initializer() {
    _funcIndex = _module.addFunction(
      _rawFunction.toJS,
      'vpi'.toJS,
    );
    return WasmMemoryPointer(_funcIndex);
  }
  
  @override
  void dispose() {
    _module.removeFunction(_funcIndex.toJS);
    super.dispose();
  }

  factory AudioCallbackD.function(AudioCallbackFunction f, {String? name})
    => _AudioCallbackD(f, name: name);
}

class _AudioCallbackD extends AudioCallbackD {
  final AudioCallbackFunction _f;
  _AudioCallbackD(this._f, {String? name}) : super(name);

  @override
  AudioCallbackFunction get function => _f;
}