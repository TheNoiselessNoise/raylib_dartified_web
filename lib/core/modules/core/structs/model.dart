part of '../../../raylib_dartified_web.dart';

enum _ModelOffsets with _WasmOffsets {
  transform,
  meshCount,
  materialCount,
  meshes,
  materials,
  meshMaterial,
  skeleton,
  currentPose,
  boneMatrices
}

class ModelD extends StructDWeb<ModelD> with ModelBase<
  ModelD,
  MeshD,
  MatrixD,
  Vector3D,
  QuaternionD,
  Vector4D,
  MaterialD,
  ShaderD,
  MaterialMapD,
  TextureD,
  ColorD,
  TransformD,
  BoneInfoD,
  ModelSkeletonD
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_ModelOffsets> _o = .fromMap({
    .transform:     MatrixD.byteSize,
    .meshCount:     WasmSize.Int32,
    .materialCount: WasmSize.Int32,
    .meshes:        WasmSize.StructPointer,
    .materials:     WasmSize.StructPointer,
    .meshMaterial:  WasmSize.Int32Pointer,
    .skeleton:      ModelSkeletonD.byteSize,
    .currentPose:   WasmSize.StructPointer,
    .boneMatrices:  WasmSize.StructPointer,
  });

  static WasmStructPointer<ModelD> wasmPointer(int ptr) => .new(ptr, ModelD.new, byteSize);
  static WasmStructPointerPointer<ModelD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  MatrixD _transform;
  @override get transform {
    structOnOp((p) => _transform.wasmReadFrom(p.readerAt(_o[.transform])));
    return _transform;
  }
  @override set transform(MatrixD value) {
    _transform = value;
    structOnOp((p) => value.wasmWriteInto(p.writerAt(_o[.transform])));
  }
  
  late WasmLiveListPointerStruct<MeshD> _meshes;
  @override get meshes {
    structOnOp((p) => _meshes.ptr = MeshD.wasmPointer(p.readerAt(_o[.meshes]).pointer()));
    return _meshes;
  }
  @override set meshes(List<MeshD> value) {
    structOnOp((p) => _meshes.ptr = MeshD.wasmPointer(p.readerAt(_o[.meshes]).pointer()));
    _meshes.inner = value;
  }
  
  late WasmLiveListPointerStruct<MaterialD> _materials;
  @override get materials {
    structOnOp((p) => _materials.ptr = MaterialD.wasmPointer(p.readerAt(_o[.materials]).pointer()));
    return _materials;
  }
  @override set materials(List<MaterialD> value) {
    structOnOp((p) => _materials.ptr = MaterialD.wasmPointer(p.readerAt(_o[.materials]).pointer()));
    _materials.inner = value;
  }

  late WasmLiveListPointerInt32 _meshMaterial;
  @override get meshMaterial {
    structOnOp((p) => _meshMaterial.ptr = .new(p.readerAt(_o[.meshMaterial]).pointer()));
    return _meshMaterial;
  }
  @override set meshMaterial(List<int> value) {
    structOnOp((p) => _meshMaterial.ptr = .new(p.readerAt(_o[.meshMaterial]).pointer()));
    _meshMaterial.inner = value;
  }

  ModelSkeletonD _skeleton;
  @override get skeleton {
    structOnOp((p) => _skeleton.wasmReadFrom(p.readerAt(_o[.skeleton])));
    return _skeleton;
  }
  @override set skeleton(ModelSkeletonD value) {
    _skeleton = value;
    structOnOp((p) => value.wasmWriteInto(p.writerAt(_o[.skeleton])));
  }
  
  late WasmLiveListPointerStruct<TransformD> _currentPose;
  @override get currentPose {
    structOnOp((p) => _currentPose.ptr = TransformD.wasmPointer(p.readerAt(_o[.currentPose]).pointer()));
    return _currentPose;
  }
  @override set currentPose(List<TransformD> value) {
    structOnOp((p) => _currentPose.ptr = TransformD.wasmPointer(p.readerAt(_o[.currentPose]).pointer()));
    _currentPose.inner = value;
  }
  
  late WasmLiveListPointerStruct<MatrixD> _boneMatrices;
  @override get boneMatrices {
    structOnOp((p) => _boneMatrices.ptr = MatrixD.wasmPointer(p.readerAt(_o[.boneMatrices]).pointer()));
    return _boneMatrices;
  }
  @override set boneMatrices(List<MatrixD> value) {
    structOnOp((p) => _boneMatrices.ptr = MatrixD.wasmPointer(p.readerAt(_o[.boneMatrices]).pointer()));
    _boneMatrices.inner = value;
  }

  ModelD({
    super.originalPointer,
    MatrixD? transform,
    List<MeshD>? meshes,
    List<MaterialD>? materials,
    List<int>? meshMaterial,
    ModelSkeletonD? skeleton,
    List<TransformD>? currentPose,
    List<MatrixD>? boneMatrices,
  }) :
    _transform = transform ?? .new(),
    _skeleton = skeleton ?? .new()
  {
    _meshes = .new(
      meshes ?? [],
      originalPointer == null ? null : MeshD.wasmPointer(wasmReader(_o[.meshes]).pointer())
    );

    _materials = .new(
      materials ?? [],
      originalPointer == null ? null : MaterialD.wasmPointer(wasmReader(_o[.materials]).pointer())
    );

    _meshMaterial = .new(
      meshMaterial ?? [],
      originalPointer == null ? null : .new(wasmReader(_o[.meshMaterial]).pointer())
    );

    _currentPose = .new(
      currentPose ?? [],
      originalPointer == null ? null : TransformD.wasmPointer(wasmReader(_o[.currentPose]).pointer())
    );

    _boneMatrices = .new(
      boneMatrices ?? [],
      originalPointer == null ? null : MatrixD.wasmPointer(wasmReader(_o[.boneMatrices]).pointer())
    );
  }

  factory ModelD.zero() => .new();

  @override
  ModelD setD(ModelD o) {
    transform.setD(o.transform);
    meshes = .from(o.meshes);
    materials = .from(o.materials);
    meshMaterial = .from(o.meshMaterial);
    currentPose = .from(o.currentPose);
    boneMatrices = .from(o.boneMatrices);
    return this;
  }

  @override
  void structAllocateInto(RaylibTemp temp, WasmStructPointer<ModelD> p, String key) {
    if (meshes.isNotEmpty) _meshes.ptr = temp.Mesh$.val.Array(_meshes.inner, key: '${key}_meshes');
    if (materials.isNotEmpty) _materials.ptr = temp.Material$.val.Array(_materials.inner, key: '${key}_materials');
    if (meshMaterial.isNotEmpty) _meshMaterial.ptr = temp.Int32$.val.Array(_meshMaterial.inner, key: '${key}_meshMaterial');
    if (currentPose.isNotEmpty) _currentPose.ptr = temp.Transform$.val.Array(_currentPose.inner, key: '${key}_currentPose');
    if (boneMatrices.isNotEmpty) _boneMatrices.ptr = temp.Matrix$.val.Array(_boneMatrices.inner, key: '${key}_boneMatrices');
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.struct(_transform);
    writer.Int32(_meshes.length);
    writer.Int32(_materials.length);
    writer.wasmPointer(_meshes.ptr);
    writer.wasmPointer(_materials.ptr);
    writer.wasmPointer(_meshMaterial.ptr);
    writer.struct(_skeleton);
    writer.wasmPointer(_currentPose.ptr);
    writer.wasmPointer(_boneMatrices.ptr);

    _meshes.onPointer((p) => p.writeArray(_meshes.inner));
    _materials.onPointer((p) => p.writeArray(_materials.inner));
    _meshMaterial.onPointer((p) => p.writeArray(_meshMaterial.inner));
    _currentPose.onPointer((p) => p.writeArray(_currentPose.inner));
    _boneMatrices.onPointer((p) => p.writeArray(_boneMatrices.inner));
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    reader.struct(_transform);
    int meshCount = reader.Int32();
    int materialCount = reader.Int32();
    _meshes.ptr = MeshD.wasmPointer(reader.pointer());
    _materials.ptr = MaterialD.wasmPointer(reader.pointer());
    _meshMaterial.ptr = .new(reader.pointer());
    reader.struct(_skeleton);
    _currentPose.ptr = TransformD.wasmPointer(reader.pointer());
    _boneMatrices.ptr = MatrixD.wasmPointer(reader.pointer());

    _meshes.onPointer((p) => _meshes.inner = p.readArray(meshCount, owned: true));
    _materials.onPointer((p) => _materials.inner = p.readArray(materialCount, owned: true));
    _meshMaterial.onPointer((p) => _meshMaterial.inner = p.readArray(meshCount));
    _currentPose.onPointer((p) => _currentPose.inner = p.readArray(_skeleton.boneCount));
    _boneMatrices.onPointer((p) => _boneMatrices.inner = p.readArray(_skeleton.boneCount));
  }

  @override
  ModelD clone() => .new(
    originalPointer: originalPointer,
    transform: transform.clone(),
    meshes: meshes.map((x) => x.clone()).toList(),
    materials: materials.map((x) => x.clone()).toList(),
    meshMaterial: .from(meshMaterial),
    currentPose: currentPose.map((x) => x.clone()).toList(),
    boneMatrices: boneMatrices.map((x) => x.clone()).toList(),
  );
}