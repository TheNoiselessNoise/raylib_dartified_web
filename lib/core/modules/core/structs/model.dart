part of '../../../raylib_dartified_web.dart';

enum _ModelOffsets with _WasmOffsets {
  transform,
  meshCount,
  materialCount,
  meshes,
  materials,
  meshMaterial,
  boneCount,
  bones,
  bindPose,
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
  BoneInfoD
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_ModelOffsets> _o = .fromMap({
    .transform:     MatrixD.byteSize,
    .meshCount:     WasmSize.Int32,
    .materialCount: WasmSize.Int32,
    .meshes:        WasmSize.StructPointer,
    .materials:     WasmSize.StructPointer,
    .meshMaterial:  WasmSize.Int32Pointer,
    .boneCount:     WasmSize.Int32,
    .bones:         WasmSize.StructPointer,
    .bindPose:      WasmSize.StructPointer,
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

  late WasmLiveListPointerStruct<BoneInfoD> _bones;
  @override get bones {
    structOnOp((p) => _bones.ptr = BoneInfoD.wasmPointer(p.readerAt(_o[.bones]).pointer()));
    return _bones;
  }
  @override set bones(List<BoneInfoD> value) {
    structOnOp((p) => _bones.ptr = BoneInfoD.wasmPointer(p.readerAt(_o[.bones]).pointer()));
    _bones.inner = value;
  }

  late WasmLiveListPointerStruct<TransformD> _bindPose;
  @override get bindPose {
    structOnOp((p) => _bindPose.ptr = TransformD.wasmPointer(p.readerAt(_o[.bindPose]).pointer()));
    return _bindPose;
  }
  @override set bindPose(List<TransformD> value) {
    structOnOp((p) => _bindPose.ptr = TransformD.wasmPointer(p.readerAt(_o[.bindPose]).pointer()));
    _bindPose.inner = value;
  }
  
  @override
  int get wasmByteSize => byteSize;

  ModelD({
    super.originalPointer,
    MatrixD? transform,
    List<MeshD>? meshes,
    List<MaterialD>? materials,
    List<int>? meshMaterial,
    List<BoneInfoD>? bones,
    List<TransformD>? bindPose,
  }) :
    _transform = transform ?? .new()
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

    _bones = .new(
      bones ?? [],
      originalPointer == null ? null : BoneInfoD.wasmPointer(wasmReader(_o[.bones]).pointer())
    );

    _bindPose = .new(
      bindPose ?? [],
      originalPointer == null ? null : TransformD.wasmPointer(wasmReader(_o[.bindPose]).pointer())
    );
  }

  factory ModelD.zero() => .new();

  @override
  ModelD setD(ModelD o) {
    transform.setD(o.transform);
    meshes = .from(o.meshes);
    materials = .from(o.materials);
    meshMaterial = .from(o.meshMaterial);
    bones = .from(o.bones);
    bindPose = .from(o.bindPose);
    return this;
  }

  @override
  void structAllocateInto(RaylibTemp temp, WasmStructPointer<ModelD> p, String key) {
    if (meshes.isNotEmpty) _meshes.ptr = temp.Mesh$.Array(meshes, key: '${key}_meshes');
    if (materials.isNotEmpty) _materials.ptr = temp.Material$.Array(materials, key: '${key}_materials');
    if (meshMaterial.isNotEmpty) _meshMaterial.ptr = temp.Int32$.Array(meshMaterial, key: '${key}_meshMaterial');
    if (bones.isNotEmpty) _bones.ptr = temp.BoneInfo$.Array(bones, key: '${key}_bones');
    if (bindPose.isNotEmpty) _bindPose.ptr = temp.Transform$.Array(bindPose, key: '${key}_bindPose');
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.struct(transform);
    writer.Int32(meshes.length);
    writer.Int32(materials.length);
    writer.wasmptr(_meshes.ptr);
    writer.wasmptr(_materials.ptr);
    writer.wasmptr(_meshMaterial.ptr);
    writer.Int32(bones.length);
    writer.wasmptr(_bones.ptr);
    writer.wasmptr(_bindPose.ptr);

    _meshes.onPointer((p) => p.writeArray(_meshes.inner));
    _materials.onPointer((p) => p.writeArray(_materials.inner));
    _meshMaterial.onPointer((p) => p.writeArray(_meshMaterial.inner));
    _bones.onPointer((p) => p.writeArray(_bones.inner));
    _bindPose.onPointer((p) => p.writeArray(_bindPose.inner));
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    reader.struct(transform);
    int meshCount = reader.Int32();
    int materialCount = reader.Int32();
    _meshes.ptr = MeshD.wasmPointer(reader.pointer());
    _materials.ptr = MaterialD.wasmPointer(reader.pointer());
    _meshMaterial.ptr = .new(reader.pointer());
    int boneCount = reader.Int32();
    _bones.ptr = BoneInfoD.wasmPointer(reader.pointer());
    _bindPose.ptr = TransformD.wasmPointer(reader.pointer());

    _meshes.onPointer((p) => meshes = p.readArray(meshCount, owned: true));
    _materials.onPointer((p) => materials = p.readArray(materialCount, owned: true));
    _meshMaterial.onPointer((p) => meshMaterial = p.readArray(meshCount));
    _bones.onPointer((p) => bones = p.readArray(boneCount));
    _bindPose.onPointer((p) => bindPose = p.readArray(boneCount));
  }

  @override
  ModelD clone() => .new(
    originalPointer: originalPointer,
    transform: transform.clone(),
    meshes: meshes.map((x) => x.clone()).toList(),
    materials: materials.map((x) => x.clone()).toList(),
    meshMaterial: .from(meshMaterial),
    bones: bones.map((x) => x.clone()).toList(),
    bindPose: bindPose.map((x) => x.clone()).toList(),
  );
}