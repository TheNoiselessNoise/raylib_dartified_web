part of 'raylib_dartified_web.dart';

@JS('dartMain')
external set _dartMain(JSFunction f);

@JS('requestAnimationFrame')
external void _requestAnimationFrame(JSFunction callback);

class Raylib extends RaylibBase {
  static Raylib? _instance;
  static Raylib get instance {
    if (_instance == null) throw StateError('Raylib not initialized.');
    return _instance!;
  }

  @override
  void logInfo(Object? message) => console.log('[Raylib] $message');
  
  @override
  void logWarn(Object? message) => console.warn('[Raylib] $message');

  @override
  void logError(Object? message) => console.error('[Raylib] $message');

  @override late RaylibTemp Temp;
  @override late RaylibColors Color;
  @override late RaylibEasings Ease;
  @override late RaylibQuaternions Quat;
  @override late RaylibMatrices Matrix;
  @override late RaylibVectors Vector;

  late RaylibAudio Audio;
  @override late RaylibAudioD AudioD;
  late RaylibCamera Camera;
  @override late RaylibCameraD CameraD;
  late RaylibCore Core;
  @override late RaylibCoreD CoreD;
  late RaylibGui Gui;
  @override late RaylibGuiD GuiD;
  @override late RaylibLightD LightD;
  late RaylibRlgl Rlgl;
  @override late RaylibRlglD RlglD;
  @override late RaylibUtils Utils;

  Raylib(void Function(Raylib) dartMain, {
    super.tempOptions,
    super.random,
  }) {
    if (_instance != null) {
      throw StateError("There can only be one instance of a $runtimeType!");
    }

    _instance = this;

    _dartMain = (() {
      _init();
      dartMain(this);
    }).toJS;
  }

  void _init() {
    RaylibMatrixFactories.createFactory = MatrixD.mat4;
    RaylibMatrixFactories.zeroFactory = MatrixD.zero;
    RaylibQuaternionFactories.createFactory = QuaternionD.quat;
    RaylibQuaternionFactories.zeroFactory = QuaternionD.zero;
    RaylibVector2Factories.createFactory = Vector2D.vec2;
    RaylibVector2Factories.zeroFactory = Vector2D.zero;
    RaylibVector3Factories.createFactory = Vector3D.vec3;
    RaylibVector3Factories.zeroFactory = Vector3D.zero;
    RaylibVector4Factories.createFactory = Vector4D.vec4;
    RaylibVector4Factories.zeroFactory = Vector4D.zero;

    // extensions
    registerModule(RaylibTemp(this, options: tempOptions)); Temp = module();
    registerModule(RaylibColors(this)); Color = module();
    registerModule(RaylibEasings(this)); Ease = module();
    registerModule(RaylibQuaternions(this)); Quat = module();
    registerModule(RaylibMatrices(this)); Matrix = module();
    registerModule(RaylibVectors(this)); Vector = module();

    // modules
    registerModule(RaylibAudio(this)); Audio = module();
    registerModule(RaylibAudioD(this)); AudioD = module();
    registerModule(RaylibCamera(this)); Camera = module();
    registerModule(RaylibCameraD(this)); CameraD = module();
    registerModule(RaylibCore(this)); Core = module();
    registerModule(RaylibCoreD(this)); CoreD = module();
    registerModule(RaylibGui(this)); Gui = module();
    registerModule(RaylibGuiD(this)); GuiD = module();
    registerModule(RaylibLightD(this)); LightD = module();
    registerModule(RaylibRlgl(this)); Rlgl = module();
    registerModule(RaylibRlglD(this)); RlglD = module();
    registerModule(RaylibUtils(this)); Utils = module();
  }

  bool _canceled = false;
  void cancelMainLoop() => _canceled = true;

  void setMainLoop(void Function() loop) {
    void tick(JSAny _) {
      if (_canceled) {
        _canceled = false;
        return;
      }
      loop();
      _requestAnimationFrame(tick.toJS);
    }
    _requestAnimationFrame(tick.toJS);
  }
}

abstract class RaylibGame extends RaylibGameBase<Raylib> {}

/// [nativeLibPath] is ignored on the web backend.
void runRaylib(RaylibGame game, {String? nativeLibPath}) => Raylib((rl) {
  game.init(rl);
  rl.setMainLoop(() {
    if (game.shouldClose(rl)) {
      rl.cancelMainLoop();
      game.close(rl);
      game.dispose(rl);
      return;
    } else {
      game.loop(rl);
    }
  });
});