part of '../../../raylib_dartified_web.dart';

enum _AudioStreamOffsets with _WasmOffsets {
  buffer,
  processor,
  sampleRate,
  sampleSize,
  channels,
}

class AudioStreamD extends StructDWeb<AudioStreamD> with AudioStreamBase<AudioStreamD> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_AudioStreamOffsets> _o = .fromMap({
    .buffer:     WasmSize.AnyPointer,
    .processor:  WasmSize.AnyPointer,
    .sampleRate: WasmSize.Uint32,
    .sampleSize: WasmSize.Uint32,
    .channels:   WasmSize.Uint32,
  });

  static WasmStructPointer<AudioStreamD> wasmPointer(int ptr) => .new(ptr, AudioStreamD.new, byteSize);
  static WasmStructPointerPointer<AudioStreamD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  int _bufferPtr = 0;

  int _processorPtr = 0;

  @override
  int sampleRate;
  
  @override
  int sampleSize;
  
  @override
  int channels;

  @override
  int get wasmByteSize => byteSize;

  AudioStreamD({
    super.originalPointer,
    this.sampleRate = 0,
    this.sampleSize = 0,
    this.channels = 0,
  });

  factory AudioStreamD.zero() => .new();

  @override
  AudioStreamD setD(AudioStreamD o) {
    sampleRate = o.sampleRate;
    sampleSize = o.sampleSize;
    channels = o.channels;
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.pointer(_bufferPtr);
    writer.pointer(_processorPtr);
    writer.Uint32(sampleRate);
    writer.Uint32(sampleSize);
    writer.Uint32(channels);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    _bufferPtr = reader.pointer();
    _processorPtr = reader.pointer();
    sampleRate = reader.Uint32();
    sampleSize = reader.Uint32();
    channels = reader.Uint32();
  }

  @override
  AudioStreamD clone() => .new(
    originalPointer: originalPointer,
    sampleRate: sampleRate,
    sampleSize: sampleSize,
    channels: channels,
  );
}