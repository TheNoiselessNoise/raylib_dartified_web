part of '../../../raylib_dartified_web.dart';

enum _MeshOffsets with _WasmOffsets {
  vertexCount,
  triangleCount,
  vertices,
  texcoords,
  texcoords2,
  normals,
  tangents,
  colors,
  indices,
  animVertices,
  animNormals,
  boneIds,
  boneWeights,
  boneMatrices,
  boneCount,
  vaoId,
  vboId,
}

class MeshD extends StructDWeb<MeshD> with MeshBase<
  MeshD,
  MatrixD,
  Vector3D,
  QuaternionD,
  Vector4D
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_MeshOffsets> _o = .fromMap({
    .vertexCount:   WasmSize.Int32,
    .triangleCount: WasmSize.Int32,
    .vertices:      WasmSize.Float32Pointer,
    .texcoords:     WasmSize.Float32Pointer,
    .texcoords2:    WasmSize.Float32Pointer,
    .normals:       WasmSize.Float32Pointer,
    .tangents:      WasmSize.Float32Pointer,
    .colors:        WasmSize.Uint8Pointer,
    .indices:       WasmSize.Uint16Pointer,
    .animVertices:  WasmSize.Float32Pointer,
    .animNormals:   WasmSize.Float32Pointer,
    .boneIds:       WasmSize.Uint8Pointer,
    .boneWeights:   WasmSize.Float32Pointer,
    .boneMatrices:  WasmSize.StructPointer,
    .boneCount:     WasmSize.Int32,
    .vaoId:         WasmSize.Uint32,
    .vboId:         WasmSize.Uint32Pointer,
  });

  static WasmStructPointer<MeshD> wasmPointer(int ptr) => .new(ptr, MeshD.new, byteSize);
  static WasmStructPointerPointer<MeshD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  int _vertexCount;
  @override get vertexCount {
    structOnOp((p) => _vertexCount = p.readerAt(_o[.vertexCount]).Int32());
    return _vertexCount;
  }
  @override set vertexCount(int value) {
    _vertexCount = value;
    structOnOp((p) => p.writerAt(_o[.vertexCount]).Int32(value));
  }
  
  int _triangleCount;
  @override get triangleCount {
    structOnOp((p) => _triangleCount = p.readerAt(_o[.triangleCount]).Int32());
    return _triangleCount;
  }
  @override set triangleCount(int value) {
    _triangleCount = value;
    structOnOp((p) => p.writerAt(_o[.triangleCount]).Int32(value));
  }
  
  int _boneCount;
  @override get boneCount {
    structOnOp((p) => _boneCount = p.readerAt(_o[.boneCount]).Int32());
    return _boneCount;
  }
  @override set boneCount(int value) {
    _boneCount = value;
    structOnOp((p) => p.writerAt(_o[.boneCount]).Int32(value));
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

  late WasmLiveListPointerFloat32 _texcoords2;
  @override get texcoords2 {
    structOnOp((p) => _texcoords2.ptr = .new(p.readerAt(_o[.texcoords2]).pointer()));
    return _texcoords2;
  }
  @override set texcoords2(List<double> value) {
    assert(value.length <= texcoords2Count);
    structOnOp((p) => _texcoords2.ptr = .new(p.readerAt(_o[.texcoords2]).pointer()));
    _texcoords2.inner = value;
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

  late WasmLiveListPointerFloat32 _tangents;
  @override get tangents {
    structOnOp((p) => _tangents.ptr = .new(p.readerAt(_o[.tangents]).pointer()));
    return _tangents;
  }
  @override set tangents(List<double> value) {
    assert(value.length <= tangentsCount);
    structOnOp((p) => _tangents.ptr = .new(p.readerAt(_o[.tangents]).pointer()));
    _tangents.inner = value;
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

  late WasmLiveListPointerUint16 _indices;
  @override get indices {
    structOnOp((p) => _indices.ptr = .new(p.readerAt(_o[.indices]).pointer()));
    return _indices;
  }
  @override set indices(List<int> value) {
    assert(value.length <= indicesCount);
    structOnOp((p) => _indices.ptr = .new(p.readerAt(_o[.indices]).pointer()));
    _indices.inner = value;
  }

  late WasmLiveListPointerFloat32 _animVertices;
  @override get animVertices {
    structOnOp((p) => _animVertices.ptr = .new(p.readerAt(_o[.animVertices]).pointer()));
    return _animVertices;
  }
  @override set animVertices(List<double> value) {
    assert(value.length <= animVerticesCount);
    structOnOp((p) => _animVertices.ptr = .new(p.readerAt(_o[.animVertices]).pointer()));
    _animVertices.inner = value;
  }

  late WasmLiveListPointerFloat32 _animNormals;
  @override get animNormals {
    structOnOp((p) => _animNormals.ptr = .new(p.readerAt(_o[.animNormals]).pointer()));
    return _animNormals;
  }
  @override set animNormals(List<double> value) {
    assert(value.length <= animNormalsCount);
    structOnOp((p) => _animNormals.ptr = .new(p.readerAt(_o[.animNormals]).pointer()));
    _animNormals.inner = value;
  }

  late WasmLiveListPointerUint8 _boneIds;
  @override get boneIds {
    structOnOp((p) => _boneIds.ptr = .new(p.readerAt(_o[.boneIds]).pointer()));
    return _boneIds;
  }
  @override set boneIds(List<int> value) {
    assert(value.length <= boneIdsCount);
    structOnOp((p) => _boneIds.ptr = .new(p.readerAt(_o[.boneIds]).pointer()));
    _boneIds.inner = value;
  }

  late WasmLiveListPointerFloat32 _boneWeights;
  @override get boneWeights {
    structOnOp((p) => _boneWeights.ptr = .new(p.readerAt(_o[.boneWeights]).pointer()));
    return _boneWeights;
  }
  @override set boneWeights(List<double> value) {
    assert(value.length <= boneWeightsCount);
    structOnOp((p) => _boneWeights.ptr = .new(p.readerAt(_o[.boneWeights]).pointer()));
    _boneWeights.inner = value;
  }

  late WasmLiveListPointerStruct<MatrixD> _boneMatrices;
  @override get boneMatrices {
    structOnOp((p) => _boneMatrices.ptr = MatrixD.wasmPointer(p.readerAt(_o[.boneMatrices]).pointer()));
    return _boneMatrices;
  }
  @override set boneMatrices(List<MatrixD> value) {
    assert(value.length <= boneMatricesCount);
    structOnOp((p) => _boneMatrices.ptr = MatrixD.wasmPointer(p.readerAt(_o[.boneMatrices]).pointer()));
    _boneMatrices.inner = value;
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
  
  late WasmLiveListPointerUint32 _vboId;
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

  MeshD({
    super.originalPointer,
    int vertexCount = 0,
    int triangleCount = 0,
    int boneCount = 0,
    List<double>? vertices,
    List<double>? texcoords,
    List<double>? texcoords2,
    List<double>? normals,
    List<double>? tangents,
    List<int>? colors,
    List<int>? indices,
    List<double>? animVertices,
    List<double>? animNormals,
    List<int>? boneIds,
    List<double>? boneWeights,
    List<MatrixD>? boneMatrices,
    int vaoId = 0,
    List<int>? vboId,
  }) :
    _vertexCount = vertexCount,
    _triangleCount = triangleCount,
    _boneCount = boneCount,
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

    _texcoords2 = .new(
      texcoords2 ?? .filled(texcoords2Count, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.texcoords2]).pointer())
    );

    _normals = .new(
      normals ?? .filled(normalsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.normals]).pointer())
    );

    _tangents = .new(
      tangents ?? .filled(tangentsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.tangents]).pointer())
    );

    _colors = .new(
      colors ?? .filled(colorsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.colors]).pointer())
    );

    _indices = .new(
      indices ?? .filled(indicesCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.indices]).pointer())
    );

    _animVertices = .new(
      animVertices ?? .filled(animVerticesCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.animVertices]).pointer())
    );

    _animNormals = .new(
      animNormals ?? .filled(animNormalsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.animNormals]).pointer())
    );

    _boneIds = .new(
      boneIds ?? .filled(boneIdsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.boneIds]).pointer())
    );

    _boneWeights = .new(
      boneWeights ?? .filled(boneWeightsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.boneWeights]).pointer())
    );

    _boneMatrices = .new(
      boneMatrices ?? [],
      originalPointer == null ? null : MatrixD.wasmPointer(wasmReader(_o[.boneMatrices]).pointer())
    );

    _vboId = .new(
      vboId ?? .filled(vboIdCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.vboId]).pointer())
    );
  }

  factory MeshD.zero() => .new();

  @override
  MeshD setD(MeshD o) {
    vertexCount = o.vertexCount;
    triangleCount = o.triangleCount;
    boneCount = o.boneCount;
    vertices = .from(o.vertices);
    texcoords = .from(o.texcoords);
    texcoords2 = .from(o.texcoords2);
    normals = .from(o.normals);
    tangents = .from(o.tangents);
    colors = .from(o.colors);
    indices = .from(o.indices);
    animVertices = .from(o.animVertices);
    animNormals = .from(o.animNormals);
    boneIds = .from(o.boneIds);
    boneWeights = .from(o.boneWeights);
    boneMatrices = o.boneMatrices.map((x) => x.clone()).toList();
    vaoId = o.vaoId;
    vboId = .from(o.vboId);
    return this;
  }

  @override
  void structAllocateInto(RaylibTemp temp, WasmStructPointer<MeshD> p, String key) {
    if (vertices.isNotEmpty) _vertices.ptr = temp.Float32$.RawArray(vertices);
    if (texcoords.isNotEmpty) _texcoords.ptr = temp.Float32$.RawArray(texcoords);
    if (texcoords2.isNotEmpty) _texcoords2.ptr = temp.Float32$.RawArray(texcoords2);
    if (normals.isNotEmpty) _normals.ptr = temp.Float32$.RawArray(normals);
    if (tangents.isNotEmpty) _tangents.ptr = temp.Float32$.RawArray(tangents);
    if (colors.isNotEmpty) _colors.ptr = temp.Uint8$.RawArray(colors);
    if (indices.isNotEmpty) _indices.ptr = temp.Uint16$.RawArray(indices);
    if (animVertices.isNotEmpty) _animVertices.ptr = temp.Float32$.RawArray(animVertices);
    if (animNormals.isNotEmpty) _animNormals.ptr = temp.Float32$.RawArray(animNormals);
    if (boneIds.isNotEmpty) _boneIds.ptr = temp.Uint8$.RawArray(boneIds);
    if (boneWeights.isNotEmpty) _boneWeights.ptr = temp.Float32$.RawArray(boneWeights);
    if (boneMatrices.isNotEmpty) _boneMatrices.ptr = temp.Matrix$.RawArray(boneMatrices);
    _vboId.ptr = .nullptr();
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Int32(vertexCount);
    writer.Int32(triangleCount);
    writer.wasmptr(_vertices.ptr);
    writer.wasmptr(_texcoords.ptr);
    writer.wasmptr(_texcoords2.ptr);
    writer.wasmptr(_normals.ptr);
    writer.wasmptr(_tangents.ptr);
    writer.wasmptr(_colors.ptr);
    writer.wasmptr(_indices.ptr);
    writer.wasmptr(_animVertices.ptr);
    writer.wasmptr(_animNormals.ptr);
    writer.wasmptr(_boneIds.ptr);
    writer.wasmptr(_boneWeights.ptr);
    writer.wasmptr(_boneMatrices.ptr);
    writer.Int32(boneCount);
    writer.Uint32(vaoId);
    writer.wasmptr(_vboId.ptr);

    _vertices.onPointer((p) => p.writeArray(_vertices.inner));
    _texcoords.onPointer((p) => p.writeArray(_texcoords.inner));
    _texcoords2.onPointer((p) => p.writeArray(_texcoords2.inner));
    _normals.onPointer((p) => p.writeArray(_normals.inner));
    _tangents.onPointer((p) => p.writeArray(_tangents.inner));
    _colors.onPointer((p) => p.writeArray(_colors.inner));
    _indices.onPointer((p) => p.writeArray(_indices.inner));
    _animVertices.onPointer((p) => p.writeArray(_animVertices.inner));
    _animNormals.onPointer((p) => p.writeArray(_animNormals.inner));
    _boneIds.onPointer((p) => p.writeArray(_boneIds.inner));
    _boneWeights.onPointer((p) => p.writeArray(_boneWeights.inner));
    _boneMatrices.onPointer((p) => p.writeArray(_boneMatrices.inner));
    _vboId.onPointer((p) => p.writeArray(_vboId.inner));
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    vertexCount = reader.Int32();
    triangleCount = reader.Int32();
    _vertices.ptr = reader.Float32Pointer();
    _texcoords.ptr = reader.Float32Pointer();
    _texcoords2.ptr = reader.Float32Pointer();
    _normals.ptr = reader.Float32Pointer();
    _tangents.ptr = reader.Float32Pointer();
    _colors.ptr = reader.Uint8Pointer();
    _indices.ptr = reader.Uint16Pointer();
    _animVertices.ptr = reader.Float32Pointer();
    _animNormals.ptr = reader.Float32Pointer();
    _boneIds.ptr = reader.Uint8Pointer();
    _boneWeights.ptr = reader.Float32Pointer();
    _boneMatrices.ptr = MatrixD.wasmPointer(reader.pointer());
    boneCount = reader.Int32();
    vaoId = reader.Uint32();
    _vboId.ptr = reader.Uint32Pointer();
    
    _vertices.onPointer((p) => vertices = p.readArray(verticesCount));
    _texcoords.onPointer((p) => texcoords = p.readArray(texcoordsCount));
    _texcoords2.onPointer((p) => texcoords2 = p.readArray(texcoords2Count));
    _normals.onPointer((p) => normals = p.readArray(normalsCount));
    _tangents.onPointer((p) => tangents = p.readArray(tangentsCount));
    _colors.onPointer((p) => colors = p.readArray(colorsCount));
    _indices.onPointer((p) => indices = p.readArray(indicesCount));
    _animVertices.onPointer((p) => animVertices = p.readArray(animVerticesCount));
    _animNormals.onPointer((p) => animNormals = p.readArray(animNormalsCount));
    _boneIds.onPointer((p) => boneIds = p.readArray(boneIdsCount));
    _boneWeights.onPointer((p) => boneWeights = p.readArray(boneWeightsCount));
    _boneMatrices.onPointer((p) => boneMatrices = p.readArray(boneMatricesCount));
    _vboId.onPointer((p) => vboId = p.readArray(vboIdCount));
  }

  @override
  MeshD clone() => .new(
    originalPointer: originalPointer,
    vertexCount: vertexCount,
    triangleCount: triangleCount,
    boneCount: boneCount,
    vertices: .from(vertices),
    texcoords: .from(texcoords),
    texcoords2: .from(texcoords2),
    normals: .from(normals),
    tangents: .from(tangents),
    colors: .from(colors),
    indices: .from(indices),
    animVertices: .from(animVertices),
    animNormals: .from(animNormals),
    boneIds: .from(boneIds),
    boneWeights: .from(boneWeights),
    boneMatrices: boneMatrices.map((x) => x.clone()).toList(),
    vaoId: vaoId,
    vboId: .from(vboId),
  );
}