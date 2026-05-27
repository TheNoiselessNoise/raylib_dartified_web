part of '../../../raylib_dartified_web.dart';

enum _RlDrawCallOffsets with _WasmOffsets {
  mode,
  vertexCount,
  vertexAlignment,
  textureId,
}

class RlDrawCallD extends StructDWeb<RlDrawCallD> with RlDrawCallBase<RlDrawCallD> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_RlDrawCallOffsets> _o = .fromMap({
    .mode:            WasmSize.Int32,
    .vertexCount:     WasmSize.Int32,
    .vertexAlignment: WasmSize.Int32,
    .textureId:       WasmSize.Uint32,
  });

  static WasmStructPointer<RlDrawCallD> wasmPointer(int ptr) => .new(ptr, RlDrawCallD.new, byteSize);
  static WasmStructPointerPointer<RlDrawCallD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  int _mode;
  @override get mode {
    structOnOp((p) => _mode = p.readerAt(_o[.mode]).Int32());
    return _mode;
  }
  @override set mode(int value) {
    _mode = value;
    structOnOp((p) => p.writerAt(_o[.mode]).Int32(value));
  }
  
  int _vertexCount;
  @override get vertexCount {
    structOnOp((p) => _vertexCount = p.readerAt(_o[.vertexCount]).Int32());
    return _vertexCount;
  }
  @override set vertexCount(int value) {
    _vertexCount = value;
    structOnOp((p) => p.writerAt(_o[.vertexCount]).Int32(value));
  }
  
  int _vertexAlignment;
  @override get vertexAlignment {
    structOnOp((p) => _vertexAlignment = p.readerAt(_o[.vertexAlignment]).Int32());
    return _vertexAlignment;
  }
  @override set vertexAlignment(int value) {
    _vertexAlignment = value;
    structOnOp((p) => p.writerAt(_o[.vertexAlignment]).Int32(value));
  }
  
  int _textureId;
  @override get textureId {
    structOnOp((p) => _textureId = p.readerAt(_o[.textureId]).Uint32());
    return _textureId;
  }
  @override set textureId(int value) {
    _textureId = value;
    structOnOp((p) => p.writerAt(_o[.textureId]).Uint32(value));
  }

  @override
  int get wasmByteSize => byteSize;

  RlDrawCallD({
    super.originalPointer,
    int mode = 0,
    int vertexCount = 0,
    int vertexAlignment = 0,
    int textureId = 0,
  }) :
    _mode = mode,
    _vertexCount = vertexCount,
    _vertexAlignment = vertexAlignment,
    _textureId = textureId;

  factory RlDrawCallD.zero() => .new();

  @override
  RlDrawCallD setD(RlDrawCallD o) {
    mode = o.mode;
    vertexCount = o.vertexCount;
    vertexAlignment = o.vertexAlignment;
    textureId = o.textureId;
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Int32(mode);
    writer.Int32(vertexCount);
    writer.Int32(vertexAlignment);
    writer.Uint32(textureId);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    mode = reader.Int32();
    vertexCount = reader.Int32();
    vertexAlignment = reader.Int32();
    textureId = reader.Uint32();
  }

  @override
  RlDrawCallD clone() => .new(
    originalPointer: originalPointer,
    mode: mode,
    vertexCount: vertexCount,
    vertexAlignment: vertexAlignment,
    textureId: textureId,
  );
}