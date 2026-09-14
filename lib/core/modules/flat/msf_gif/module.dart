part of '../../../raylib_dartified_web.dart';

class RaylibMsfGifFlat extends RaylibMsfGifFlatModule<Raylib> {

  RaylibMsfGifFlat(super.rl);

  RaylibMsfGif get _wasm => rl.module();

  @override int get msf_gif_alpha_threshold => _wasm.msf_gif_alpha_threshold.value;
  @override set msf_gif_alpha_threshold(int v) => _wasm.msf_gif_alpha_threshold.value = v;

  @override int get msf_gif_bgra_flag => _wasm.msf_gif_bgra_flag.value;
  @override set msf_gif_bgra_flag(int v) => _wasm.msf_gif_bgra_flag.value = v;

  @override
  int msf_gif_begin(
    StructPointer<MsfGifStateD> handle,
    int width,
    int height,
  ) => _wasm.msf_gif_begin.run([
    handle.toJS,
    width.toJS,
    height.toJS,
  ]).toInt();

  @override
  int msf_gif_frame(
    StructPointer<MsfGifStateD> handle,
    MemoryPointer<RUint8> pixelData,
    int centiSecondsPerFame,
    int maxBitDepth,
    int pitchInBytes,
  ) => _wasm.msf_gif_frame.run([
    handle.toJS,
    pixelData.toJS,
    centiSecondsPerFame.toJS,
    maxBitDepth.toJS,
    pitchInBytes.toJS,
  ]).toInt();

  @override
  MsfGifResultD msf_gif_end(
    StructPointer<MsfGifStateD> handle,
  ) => rl.Temp.MsfGifResult$.RefCapture(
    RaylibCaptureIds.msf_gif_end,
    (p) => _wasm.msf_gif_end.run([
      p.toJS,
      handle.toJS,
    ]),
  );

  @override
  void msf_gif_free(
    MsfGifResultD result,
  ) => disposeStructWithOpFreed(result, (ptr) {
    _wasm.msf_gif_free.run([
      ptr.toJS,
    ]);
  });

  @override
  int msf_gif_begin_to_file(
    StructPointer<MsfGifStateD> handle,
    int width,
    int height,
    MemoryPointer<RFunction> func,
    MemoryPointer<RVoid> filePointer,
  ) => _wasm.msf_gif_begin_to_file.run([
    handle.toJS,
    width.toJS,
    height.toJS,
    func.toJS,
    filePointer.toJS,
  ]).toInt();

  @override
  int msf_gif_frame_to_file(
    StructPointer<MsfGifStateD> handle,
    MemoryPointer<RUint8> pixelData,
    int centiSecondsPerFame,
    int maxBitDepth,
    int pitchInBytes,
  ) => _wasm.msf_gif_frame_to_file.run([
    handle.toJS,
    pixelData.toJS,
    centiSecondsPerFame.toJS,
    maxBitDepth.toJS,
    pitchInBytes.toJS,
  ]).toInt();

  @override
  int msf_gif_end_to_file(
    StructPointer<MsfGifStateD> handle,
  ) => _wasm.msf_gif_end_to_file.run([
    handle.toJS,
  ]).toInt();
}