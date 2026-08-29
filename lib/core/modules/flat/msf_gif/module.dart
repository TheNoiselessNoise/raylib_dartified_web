part of '../../../raylib_dartified_web.dart';

class RaylibMsfGifFlat extends RaylibMsfGifFlatModule<Raylib> {

  RaylibMsfGifFlat(super.rl);

  @override int get msf_gif_alpha_threshold => rl.MsfGif.msf_gif_alpha_threshold.value;
  @override set msf_gif_alpha_threshold(int v) => rl.MsfGif.msf_gif_alpha_threshold.value = v;

  @override int get msf_gif_bgra_flag => rl.MsfGif.msf_gif_bgra_flag.value;
  @override set msf_gif_bgra_flag(int v) => rl.MsfGif.msf_gif_bgra_flag.value = v;

  @override
  int msf_gif_begin(
    StructPointer<MsfGifStateD> handle,
    int width,
    int height,
  ) => rl.MsfGif.msf_gif_begin.run([
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
  ) => rl.MsfGif.msf_gif_frame.run([
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
    (p) => rl.MsfGif.msf_gif_end.run([
      p.toJS,
      handle.toJS,
    ]),
  );

  @override
  void msf_gif_free(
    MsfGifResultD result,
  ) => rl.MsfGif.msf_gif_free.run([
    result.getOpAndDispose().toJS,
  ]);

  @override
  int msf_gif_begin_to_file(
    StructPointer<MsfGifStateD> handle,
    int width,
    int height,
    MemoryPointer<RFunction> func,
    MemoryPointer<RVoid> filePointer,
  ) => rl.MsfGif.msf_gif_begin_to_file.run([
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
  ) => rl.MsfGif.msf_gif_frame_to_file.run([
    handle.toJS,
    pixelData.toJS,
    centiSecondsPerFame.toJS,
    maxBitDepth.toJS,
    pitchInBytes.toJS,
  ]).toInt();

  @override
  int msf_gif_end_to_file(
    StructPointer<MsfGifStateD> handle,
  ) => rl.MsfGif.msf_gif_end_to_file.run([
    handle.toJS,
  ]).toInt();
}