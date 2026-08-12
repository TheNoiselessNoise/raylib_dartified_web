part of '../../raylib_dartified_web.dart';

// AudioCallback

typedef _AudioCallbackFunction = void Function(
  int bufferDataPtr,
  int frames,
);

abstract class AudioCallbackD extends CallbackD<
  AudioCallbackFunctionD
> with AudioCallbackBase {
  AudioCallbackD([super.name]);

  static final List<AudioCallbackD> _registry = [];

  @override
  @nonVirtual
  get registry => _registry;

  /// The actual trampoline.
  _AudioCallbackFunction get _rawFunction =>
    (int bufferDataPtr, int frames) =>
      function(WasmMemoryPointer(bufferDataPtr), frames);

  @override
  JSFunction get jsFunction => _rawFunction.toJS;

  @override
  String get signature => 'vpi';

  static void disposeRegistry() => CallbackD.disposeRegistry(_registry);

  factory AudioCallbackD.function(AudioCallbackFunctionD f, {String? name})
    => _AudioCallbackD(f, name: name);

  // NOTE: no need for `friendly` factory
}

class _AudioCallbackD extends AudioCallbackD {
  final AudioCallbackFunctionD _f;
  _AudioCallbackD(this._f, {String? name}) : super(name);

  @override
  AudioCallbackFunctionD get function => _f;
}