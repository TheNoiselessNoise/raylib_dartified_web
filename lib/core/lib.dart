part of 'raylib_dartified_web.dart';

@JS('dartMain')
external set _dartMain(JSFunction f);

@JS('requestAnimationFrame')
external void _requestAnimationFrame(JSFunction callback);

WasmMemoryPointer<Y> _wasmFromAddress<Y extends RType>(int address) => .new(address);

WasmMemoryPointer<RVoid> _wasmFromBytes<T extends TypedDataList>(T data) {
  final byteLength = data.lengthInBytes;
  final asBytes = data.buffer.asUint8List(data.offsetInBytes, byteLength);
  final addr = WasmMemory.malloc(byteLength);
  WasmMemory.heapU8.setRange(addr, addr + byteLength, asBytes);
  return .new(addr);
}

WasmMemoryPointer<RUint8> _wasmFromString(String text, [int? bufferSize])
  => .new(WasmMemory.allocString(text, bufferSize));

WasmMemoryPointer<Y> _wasmNullptrFactory<Y extends RType>()
  => .new(0);

WasmMemoryPointer<Y> _wasmMalloc<Y extends RType>(int size)
  => .new(WasmMemory.malloc(size));

WasmMemoryPointer<Y> _wasmCalloc<Y extends RType>(int nmemb, int size)
  => .new(WasmMemory.calloc(nmemb, size));

void bootMemoryBackend() {
  RType.nativeWordSize = WasmSize.IntPtr;
  MemoryPointer.fromAddress = _wasmFromAddress;
  MemoryPointer.fromBytes = _wasmFromBytes;
  MemoryPointer.fromString = _wasmFromString;
  MemoryPointer.nullptr = _wasmNullptrFactory;
  MemoryPointer.malloc = _wasmMalloc;
  MemoryPointer.calloc = _wasmCalloc;
}

class Raylib extends RaylibBase<Raylib> {
  static Raylib get instance => RaylibBase.getInstance();

  @override
  void logInfo(Object? message) => console.log('[Raylib] $message');
  
  @override
  void logWarn(Object? message) => console.warn('[Raylib] $message');

  @override
  void logError(Object? message) => console.error('[Raylib] $message');

  late RaylibAudio Audio;
  @override late RaylibAudioFlat AudioFlat;
  
  late RaylibCamera Camera;
  @override late RaylibCameraFlat CameraFlat;
  
  late RaylibCore Core;
  @override late RaylibCoreFlat CoreFlat;

  late RaylibGui Gui;
  @override late RaylibGuiFlat GuiFlat;
  
  late RaylibLight Light;
  @override late RaylibLightFlat LightFlat;

  late RaylibMsfGif MsfGif;
  @override late RaylibMsfGifFlat MsfGifFlat;

  late RaylibRlgl Rlgl;
  @override late RaylibRlglFlat RlglFlat;

  Raylib(void Function(Raylib) dartMain, {
    super.tempOptions,
    super.random,
    super.silent,
  }) {
    _dartMain = (() {
      _registerEmscriptenHelpers();
      _boot();
      _init();
      dartMain(this);
    }).toJS;
  }

  void _boot() {
    bootMemoryBackend();
    boot();
  }

  void _init() {
    // modules
    registerModule(Audio = RaylibAudio(this));
    registerModule(AudioFlat = RaylibAudioFlat(this));

    registerModule(Camera = RaylibCamera(this));
    registerModule(CameraFlat = RaylibCameraFlat(this));
    
    registerModule(Core = RaylibCore(this));
    registerModule(CoreFlat = RaylibCoreFlat(this));
    
    registerModule(Gui = RaylibGui(this));
    registerModule(GuiFlat = RaylibGuiFlat(this));

    registerModule(Light = RaylibLight(this));
    registerModule(LightFlat = RaylibLightFlat(this));

    registerModule(MsfGif = RaylibMsfGif(this));
    registerModule(MsfGifFlat = RaylibMsfGifFlat(this));
    
    registerModule(Rlgl = RaylibRlgl(this));
    registerModule(RlglFlat = RaylibRlglFlat(this));
  }

  bool _canceled = false;
  void cancelMainLoop() => _canceled = true;

  void setMainLoop(FutureOr<void> Function() loop) {
    late final void Function(JSAny) tick;

    void scheduleNext() => _requestAnimationFrame(tick.toJS);

    tick = (JSAny _) {
      if (_canceled) {
        _canceled = false;
        return;
      }

      final result = loop();
      
      if (result is Future<void>) {
        result.then((_) {
          if (!_canceled) {
            scheduleNext();
          } else {
            _canceled = false;
          }
        });
      } else {
        scheduleNext();
      }
    };

    scheduleNext();
  }
}

/// [nativeLibPath] is ignored on the web backend.
void runRaylib(RaylibAppBase<Raylib> game, {
  String? nativeLibPath,
  bool silent = false,
}) => Raylib(silent: silent, (rl) {
  game.init(rl);
  rl.setMainLoop(() async {
    if (game.shouldClose(rl)) {
      rl.cancelMainLoop();
      game.close(rl);
      game.dispose(rl);
      return;
    } else {
      await game.loop(rl);
    }
  });
});