part of '../../../raylib_dartified_web.dart';

enum _RlVertexBufferOffsets with _WasmOffsets {
  elementCount,
  vertices,
  texcoords,
  normals,
  colors,
  indices,
  vaoId,
  vboId,
}

class RlVertexBufferD extends StructDWeb<RlVertexBufferD> with RlVertexBufferBase<RlVertexBufferD> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_RlVertexBufferOffsets> _o = .fromMap({
    .elementCount: WasmSize.Int32,
    .vertices:     WasmSize.Float32Pointer,
    .texcoords:    WasmSize.Float32Pointer,
    .normals:      WasmSize.Float32Pointer,
    .colors:       WasmSize.Uint8Pointer,
    .indices:      WasmSize.Uint32Pointer,
    .vaoId:        WasmSize.Uint32,
    .vboId:        WasmSize.Uint32 * RlVertexBufferBase.BASE_vboIdCount,
  });

  static WasmStructPointer<RlVertexBufferD> wasmPointer(int ptr) => .new(ptr, RlVertexBufferD.new, byteSize);
  static WasmStructPointerPointer<RlVertexBufferD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  int _elementCount;
  @override get elementCount {
    structOnOp((p) => _elementCount = p.readerAt(_o[.elementCount]).Int32());
    return _elementCount;
  }
  @override set elementCount(int value) {
    _elementCount = value;
    structOnOp((p) => p.writerAt(_o[.elementCount]).Int32(value));
  }
  
  late WasmLiveListPointerFloat32 _vertices;
  @override get vertices {
    structOnOp((p) => _vertices.ptr = .new(p.readerAt(_o[.vertices]).pointer()));
    return _vertices;
  }
  @override set vertices(List<double> value) {
    assert(value.length <= verticesCount);
    structOnOp((p) => _vertices.ptr = .new(p.readerAt(_o[.vertices]).pointer()));
    _vertices.inner = value;
  }

  late WasmLiveListPointerFloat32 _texcoords;
  @override get texcoords {
    structOnOp((p) => _texcoords.ptr = .new(p.readerAt(_o[.texcoords]).pointer()));
    return _texcoords;
  }
  @override set texcoords(List<double> value) {
    assert(value.length <= texcoordsCount);
    structOnOp((p) => _texcoords.ptr = .new(p.readerAt(_o[.texcoords]).pointer()));
    _texcoords.inner = value;
  }

  late WasmLiveListPointerFloat32 _normals;
  @override get normals {
    structOnOp((p) => _normals.ptr = .new(p.readerAt(_o[.normals]).pointer()));
    return _normals;
  }
  @override set normals(List<double> value) {
    assert(value.length <= normalsCount);
    structOnOp((p) => _normals.ptr = .new(p.readerAt(_o[.normals]).pointer()));
    _normals.inner = value;
  }

  late WasmLiveListPointerUint8 _colors;
  @override get colors {
    structOnOp((p) => _colors.ptr = .new(p.readerAt(_o[.colors]).pointer()));
    return _colors;
  }
  @override set colors(List<int> value) {
    assert(value.length <= colorsCount);
    structOnOp((p) => _colors.ptr = .new(p.readerAt(_o[.colors]).pointer()));
    _colors.inner = value;
  }
  
  late WasmLiveListPointerUint32 _indices;
  @override get indices {
    structOnOp((p) => _indices.ptr = .new(p.readerAt(_o[.indices]).pointer()));
    return _indices;
  }
  @override set indices(List<int> value) {
    assert(value.length <= indicesCount);
    structOnOp((p) => _indices.ptr = .new(p.readerAt(_o[.indices]).pointer()));
    _indices.inner = value;
  }

  int _vaoId;
  @override get vaoId {
    structOnOp((p) => _vaoId = p.readerAt(_o[.vaoId]).Uint32());
    return _vaoId;
  }
  @override set vaoId(int value) {
    _vaoId = value;
    structOnOp((p) => p.writerAt(_o[.vaoId]).Uint32(value));
  }
  
  late WasmLiveListArrayUint32 _vboId;
  @override get vboId {
    structOnOp((p) => _vboId.ptr = .new(p.readerAt(_o[.vboId]).pointer()));
    return _vboId;
  }
  @override set vboId(List<int> value) {
    assert(value.length <= vboIdCount);
    structOnOp((p) => _vboId.ptr = .new(p.readerAt(_o[.vboId]).pointer()));
    _vboId.inner = value;
  }

  @override
  int get wasmByteSize => byteSize;

  RlVertexBufferD({
    super.originalPointer,
    int elementCount = 0,
    List<double>? vertices,
    List<double>? texcoords,
    List<double>? normals,
    List<int>? colors,
    List<int>? indices,
    int vaoId = 0,
    List<int>? vboId,
  }) :
    _elementCount = elementCount,
    _vaoId = vaoId
  {
    _vertices = .new(
      vertices ?? .filled(verticesCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.vertices]).pointer())
    );

    _texcoords = .new(
      texcoords ?? .filled(texcoordsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.texcoords]).pointer())
    );

    _normals = .new(
      normals ?? .filled(normalsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.normals]).pointer())
    );

    _colors = .new(
      colors ?? .filled(colorsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.colors]).pointer())
    );

    _indices = .new(
      indices ?? .filled(indicesCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.indices]).pointer())
    );

    _vboId = .new(
      vboId ?? .filled(vboIdCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.vboId]).pointer())
    );
  }

  factory RlVertexBufferD.zero() => .new();

  @override
  RlVertexBufferD setD(RlVertexBufferD o) {
    elementCount = o.elementCount;
    vertices = .from(o.vertices);
    texcoords = .from(o.texcoords);
    normals = .from(o.normals);
    colors = .from(o.colors);
    indices = .from(o.indices);
    vaoId = o.vaoId;
    vboId = .from(o.vboId);
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Int32(elementCount);
    writer.wasmptr(_vertices.ptr);
    writer.wasmptr(_texcoords.ptr);
    writer.wasmptr(_normals.ptr);
    writer.wasmptr(_colors.ptr);
    writer.wasmptr(_indices.ptr);
    writer.Uint32(vaoId);
    writer.Uint32Array(_vboId.inner);

    _vertices.onPointer((p) => p.writeArray(_vertices.inner));
    _texcoords.onPointer((p) => p.writeArray(_texcoords.inner));
    _normals.onPointer((p) => p.writeArray(_normals.inner));
    _colors.onPointer((p) => p.writeArray(_colors.inner));
    _indices.onPointer((p) => p.writeArray(_indices.inner));
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    elementCount = reader.Int32();
    _vertices.ptr = reader.Float32Pointer();
    _texcoords.ptr = reader.Float32Pointer();
    _normals.ptr = reader.Float32Pointer();
    _colors.ptr = reader.Uint8Pointer();
    _indices.ptr = reader.Uint32Pointer();
    vaoId = reader.Uint32();
    vboId = reader.Uint32Array(vboIdCount);

    _vertices.onPointer((p) => vertices = p.readArray(verticesCount));
    _texcoords.onPointer((p) => texcoords = p.readArray(texcoordsCount));
    _normals.onPointer((p) => normals = p.readArray(normalsCount));
    _colors.onPointer((p) => colors = p.readArray(colorsCount));
    _indices.onPointer((p) => indices = p.readArray(indicesCount));
  }

  @override
  RlVertexBufferD clone() => .new(
    originalPointer: originalPointer,
    elementCount: elementCount,
    vertices: .from(vertices),
    texcoords: .from(texcoords),
    normals: .from(normals),
    colors: .from(colors),
    indices: .from(indices),
    vaoId: vaoId,
    vboId: .from(vboId),
  );
}