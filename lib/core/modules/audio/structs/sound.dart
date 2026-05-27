part of '../../../raylib_dartified_web.dart';

enum _SoundOffsets with _WasmOffsets {
  stream,
  frameCount,
}

class SoundD extends StructDWeb<SoundD> with SoundBase<
  SoundD,
  AudioStreamD
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_SoundOffsets> _o = .fromMap({
    .stream:     AudioStreamD.byteSize,
    .frameCount: WasmSize.Uint32,
  });

  static WasmStructPointer<SoundD> wasmPointer(int ptr) => .new(ptr, SoundD.new, byteSize);
  static WasmStructPointerPointer<SoundD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  AudioStreamD stream;
  
  @override
  int frameCount;

  @override
  int get wasmByteSize => byteSize;

  SoundD({
    super.originalPointer,
    AudioStreamD? stream,
    this.frameCount = 0,
  }) :
    stream = stream ?? .zero();

  factory SoundD.zero() => .new();

  @override
  SoundD setD(SoundD o) {
    stream.setD(o.stream);
    frameCount = o.frameCount;
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.struct(stream);
    writer.Uint32(frameCount);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    reader.struct(stream);
    frameCount = reader.Uint32();
  }

  @override
  SoundD clone() => .new(
    originalPointer: originalPointer,
    stream: stream.clone(),
    frameCount: frameCount,
  );
}