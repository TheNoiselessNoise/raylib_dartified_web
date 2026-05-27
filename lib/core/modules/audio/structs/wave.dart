part of '../../../raylib_dartified_web.dart';

class _WaveUtils {
  static ByteBuffer _bufferCopy(ByteBuffer data, int sampleSize) => switch (sampleSize) {
    8  => data.asUint8List().sublist(0).buffer,
    16 => data.asInt16List().sublist(0).buffer,
    32 => data.asFloat32List().sublist(0).buffer,
    _  => throw UnsupportedError('Unexpected sampleSize: $sampleSize'),
  };

  static int _bufferLength(ByteBuffer data, int sampleSize)
    => data.lengthInBytes ~/ (sampleSize ~/ 8);

  static ByteBuffer _dummyData(int sampleSize, int dataLength) => switch (sampleSize) {
    8  => Uint8List(dataLength).buffer,
    16  => Int16List(dataLength).buffer,
    32  => Float32List(dataLength).buffer,
    _  => throw UnsupportedError('Unexpected sampleSize: $sampleSize'),
  };
  
  static void _dataSetList(int ptr, ByteBuffer src, int sampleSize, int dataLength) {
    final byteCount = dataLength * (sampleSize ~/ 8);
    final srcBytes = src.asUint8List(0, byteCount);
    WasmUint8Pointer(ptr).writeArray(srcBytes);
  }
}

enum _WaveOffsets with _WasmOffsets {
  frameCount,
  sampleRate,
  sampleSize,
  channels,
  data,
}

class WaveD extends StructDWeb<WaveD> with WaveBase<WaveD> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_WaveOffsets> _o = .fromMap({
    .frameCount: WasmSize.Uint32,
    .sampleRate: WasmSize.Uint32,
    .sampleSize: WasmSize.Uint32,
    .channels:   WasmSize.Uint32,
    .data:       WasmSize.AnyPointer,
  });

  static WasmStructPointer<WaveD> wasmPointer(int ptr) => .new(ptr, WaveD.new, byteSize);
  static WasmStructPointerPointer<WaveD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  int frameCount;
  
  @override
  int sampleRate;
  
  @override
  int sampleSize;
  
  @override
  int channels;
  
  @override
  late ByteBuffer data;

  int _dataPtr = 0;

  @override
  int get wasmByteSize => byteSize;

  WaveD({
    super.originalPointer,
    this.frameCount = 0,
    this.sampleRate = 0,
    this.sampleSize = 8,
    this.channels = 0,
    ByteBuffer? data,
  }) {
    this.data = data ?? _WaveUtils._dummyData(sampleSize, waveLength);
  }

  factory WaveD.zero() => .new();

  @override
  WaveD setD(WaveD o) {
    frameCount = o.frameCount;
    sampleRate = o.sampleRate;
    sampleSize = o.sampleSize;
    channels = o.channels;
    data = _WaveUtils._bufferCopy(o.data, sampleSize);
    return this;
  }

  @override
  void structAllocateInto(RaylibTemp temp, WasmStructPointer<WaveD> p, String key) {
    if (data.lengthInBytes > 0) _dataPtr = switch (sampleSize) {
     8  => temp.Uint8$.Array(data.asUint8List(), key: '${key}_data').address,
     16 => temp.Int16$.Array(data.asInt16List(), key: '${key}_data').address,
     32 => temp.Float32$.Array(data.asFloat32List(), key: '${key}_data').address,
      _  => throw UnsupportedError('Unexpected sampleSize: $sampleSize'),
    };
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Uint32(frameCount);
    writer.Uint32(sampleRate);
    writer.Uint32(sampleSize);
    writer.Uint32(channels);
    writer.pointer(_dataPtr);

    if (_dataPtr > 0) {
      assert(waveLength <= _WaveUtils._bufferLength(data, sampleSize));
      _WaveUtils._dataSetList(_dataPtr, data, sampleSize, waveLength);
    }
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    frameCount = reader.Uint32();
    sampleRate = reader.Uint32();
    sampleSize = reader.Uint32();
    channels = reader.Uint32();
    _dataPtr = reader.pointer();

    if (_dataPtr > 0) data = switch (sampleSize) {
      8  => reader.Uint8TypedArray(waveLength, _dataPtr).sublist(0).buffer,
      16 => reader.Int16TypedArray(waveLength, _dataPtr).sublist(0).buffer,
      32 => reader.Float32TypedArray(waveLength, _dataPtr).sublist(0).buffer,
      _  => throw UnsupportedError('Unexpected sampleSize: $sampleSize'),
    };
  }

  @override
  WaveD clone() => .new(
    originalPointer: originalPointer,
    frameCount: frameCount,
    sampleRate: sampleRate,
    sampleSize: sampleSize,
    channels: channels,
    data: _WaveUtils._bufferCopy(data, sampleSize),
  );
}