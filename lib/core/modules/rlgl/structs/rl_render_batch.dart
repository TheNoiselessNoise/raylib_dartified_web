part of '../../../raylib_dartified_web.dart';

enum _RlRenderBatchOffsets with _WasmOffsets {
  bufferCount,
  currentBuffer,
  vertexBuffer,
  draws,
  drawCounter,
  currentDepth,
}

class RlRenderBatchD extends StructDWeb<RlRenderBatchD> with RlRenderBatchBase<
  RlRenderBatchD,
  RlVertexBufferD,
  RlDrawCallD
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_RlRenderBatchOffsets> _o = .fromMap({
    .bufferCount:   WasmSize.Int32,
    .currentBuffer: WasmSize.Int32,
    .vertexBuffer:  WasmSize.StructPointer,
    .draws:         WasmSize.StructPointer,
    .drawCounter:   WasmSize.Int32,
    .currentDepth:  WasmSize.Float32,
  });

  static WasmStructPointer<RlRenderBatchD> wasmPointer(int ptr) => .new(ptr, RlRenderBatchD.new, byteSize);
  static WasmStructPointerPointer<RlRenderBatchD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  int _bufferCount;
  @override get bufferCount {
    structOnOp((p) => _bufferCount = p.readerAt(_o[.bufferCount]).Int32());
    return _bufferCount;
  }
  @override set bufferCount(int value) {
    _bufferCount = value;
    structOnOp((p) => p.writerAt(_o[.bufferCount]).Int32(value));
  }
  
  int _currentBuffer;
  @override get currentBuffer {
    structOnOp((p) => _currentBuffer = p.readerAt(_o[.currentBuffer]).Int32());
    return _currentBuffer;
  }
  @override set currentBuffer(int value) {
    _currentBuffer = value;
    structOnOp((p) => p.writerAt(_o[.currentBuffer]).Int32(value));
  }
  
  late WasmLiveListPointerStruct<RlVertexBufferD> _vertexBuffer;
  @override get vertexBuffer {
    structOnOp((p) => _vertexBuffer.ptr = RlVertexBufferD.wasmPointer(p.readerAt(_o[.vertexBuffer]).pointer()));
    return _vertexBuffer;
  }
  @override set vertexBuffer(List<RlVertexBufferD> value) {
    structOnOp((p) => _vertexBuffer.ptr = RlVertexBufferD.wasmPointer(p.readerAt(_o[.vertexBuffer]).pointer()));
    _vertexBuffer.inner = value;
  }

  late WasmLiveListPointerStruct<RlDrawCallD> _draws;
  @override get draws {
    structOnOp((p) => _draws.ptr = RlDrawCallD.wasmPointer(p.readerAt(_o[.draws]).pointer()));
    return _draws;
  }
  @override set draws(List<RlDrawCallD> value) {
    structOnOp((p) => _draws.ptr = RlDrawCallD.wasmPointer(p.readerAt(_o[.draws]).pointer()));
    _draws.inner = value;
  }
  
  int _drawCounter;
  @override get drawCounter {
    structOnOp((p) => _drawCounter = p.readerAt(_o[.drawCounter]).Int32());
    return _drawCounter;
  }
  @override set drawCounter(int value) {
    _drawCounter = value;
    structOnOp((p) => p.writerAt(_o[.drawCounter]).Int32(value));
  }
  
  double _currentDepth;
  @override get currentDepth {
    structOnOp((p) => _currentDepth = p.readerAt(_o[.currentDepth]).Float32());
    return _currentDepth;
  }
  @override set currentDepth(double value) {
    _currentDepth = value;
    structOnOp((p) => p.writerAt(_o[.currentDepth]).Float32(value));
  }

  @override
  int get wasmByteSize => byteSize;

  RlRenderBatchD({
    super.originalPointer,
    int bufferCount = 0,
    int currentBuffer = 0,
    List<RlVertexBufferD>? vertexBuffer,
    List<RlDrawCallD>? draws,
    int drawCounter = 0,
    double currentDepth = 0,
  }) :
    _bufferCount = bufferCount,
    _currentBuffer = currentBuffer,
    _drawCounter = drawCounter,
    _currentDepth = currentDepth
  {
    _vertexBuffer = .new(
      vertexBuffer ?? [],
      originalPointer == null ? null : RlVertexBufferD.wasmPointer(wasmReader(_o[.vertexBuffer]).pointer())
    );

    _draws = .new(
      draws ?? [],
      originalPointer == null ? null : RlDrawCallD.wasmPointer(wasmReader(_o[.draws]).pointer())
    );
  }

  factory RlRenderBatchD.zero() => .new();

  @override
  RlRenderBatchD setD(RlRenderBatchD o) {
    bufferCount = o.bufferCount;
    currentBuffer = o.currentBuffer;
    vertexBuffer = o.vertexBuffer.map((e) => e.clone()).toList();
    draws = o.draws.map((e) => e.clone()).toList();
    drawCounter = o.drawCounter;
    currentDepth = o.currentDepth;
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Int32(bufferCount);
    writer.Int32(currentBuffer);
    writer.wasmptr(_vertexBuffer.ptr);
    writer.wasmptr(_draws.ptr);
    writer.Int32(drawCounter);
    writer.Float32(currentDepth);

    _vertexBuffer.onPointer((p) => p.writeArray(_vertexBuffer.inner));
    _draws.onPointer((p) => p.writeArray(_draws.inner));
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    bufferCount = reader.Int32();
    currentBuffer = reader.Int32();
    _vertexBuffer.ptr = RlVertexBufferD.wasmPointer(reader.pointer());
    _draws.ptr = RlDrawCallD.wasmPointer(reader.pointer());
    drawCounter = reader.Int32();
    currentDepth = reader.Float32();

    _vertexBuffer.onPointer((p) => vertexBuffer = p.readArray(bufferCount));
    _draws.onPointer((p) => draws = p.readArray(drawCounter));
  }

  @override
  RlRenderBatchD clone() => .new(
    originalPointer: originalPointer,
    bufferCount: bufferCount,
    currentBuffer: currentBuffer,
    vertexBuffer: vertexBuffer.map((e) => e.clone()).toList(),
    draws: draws.map((e) => e.clone()).toList(),
    drawCounter: drawCounter,
    currentDepth: currentDepth,
  );
}