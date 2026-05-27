part of '../../../raylib_dartified_web.dart';

enum _MusicOffsets with _WasmOffsets {
  stream,
  frameCount,
  looping,
  ctxType,
  ctxData,
}

class MusicD extends StructDWeb<MusicD> with MusicBase<
  MusicD,
  AudioStreamD
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_MusicOffsets> _o = .fromMap({
    .stream:     AudioStreamD.byteSize,
    .frameCount: WasmSize.Uint32,
    .looping:    WasmSize.Boolean,
    .ctxType:    WasmSize.Int32,
    .ctxData:    WasmSize.AnyPointer,
  });

  static WasmStructPointer<MusicD> wasmPointer(int ptr) => .new(ptr, MusicD.new, byteSize);
  static WasmStructPointerPointer<MusicD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  AudioStreamD stream;
  
  @override
  int frameCount;
  
  @override
  bool looping;
  
  @override
  MusicContextType ctxType;

  int _ctxDataPtr = 0;

  @override
  int get wasmByteSize => byteSize;

  MusicD({
    super.originalPointer,
    AudioStreamD? stream,
    this.frameCount = 0,
    this.looping = false,
    this.ctxType = .MUSIC_AUDIO_NONE,
  }) :
    stream = stream ?? .zero();

  factory MusicD.zero() => .new();

  @override
  MusicD setD(MusicD o) {
    stream.setD(o.stream);
    frameCount = o.frameCount;
    looping = o.looping;
    ctxType = o.ctxType;
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.struct(stream);
    writer.Uint32(frameCount);
    writer.boolean(looping);
    writer.Int32(ctxType.value);
    writer.pointer(_ctxDataPtr);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    reader.struct(stream);
    frameCount = reader.Uint32();
    looping = reader.boolean();
    ctxType = .fromValue(reader.Int32());
    _ctxDataPtr = reader.pointer();
  }

  @override
  MusicD clone() => .new(
    originalPointer: originalPointer,
    stream: stream.clone(),
    frameCount: frameCount,
    looping: looping,
    ctxType: ctxType,
  );
}