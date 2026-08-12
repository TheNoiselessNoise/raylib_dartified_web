part of '../../../raylib_dartified_web.dart';

enum _ModelSkeletonOffsets with _WasmOffsets {
  boneCount,
  bones,
  bindPose
}

class ModelSkeletonD extends StructDWeb<ModelSkeletonD> with ModelSkeletonBase<
  ModelSkeletonD,
  BoneInfoD,
  TransformD,
  Vector3D,
  MatrixD,
  QuaternionD,
  Vector4D
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_ModelSkeletonOffsets> _o = .fromMap({
    .boneCount: WasmSize.Int32,
    .bones:     WasmSize.StructPointer,
    .bindPose:  WasmSize.StructPointer,
  });

  static WasmStructPointer<ModelSkeletonD> wasmPointer(int ptr) => .new(ptr, ModelSkeletonD.new, byteSize);
  static WasmStructPointerPointer<ModelSkeletonD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  int _boneCount;
  @override get boneCount {
    structOnOp((p) => _boneCount = p.readerAt(_o[.boneCount]).Int32());
    return _boneCount;
  }
  @override set boneCount(int value) {
    _boneCount = value;
    structOnOp((p) => p.writerAt(_o[.boneCount]).Int32(_boneCount));
  }

  late WasmLiveListPointerStruct<BoneInfoD> _bones;
  @override get bones {
    structOnOp((p) => _bones.ptr = BoneInfoD.wasmPointer(p.readerAt(_o[.bones]).pointer()));
    return _bones;
  }
  @override set bones(List<BoneInfoD> value) {
    structOnOp((p) {
      _bones.ptr = BoneInfoD.wasmPointer(p.readerAt(_o[.bones]).pointer());
      p.writerAt(_o[.boneCount]).Int32(value.length);
    });
    _bones.inner = value;
  }

  late WasmLiveListPointerStruct<TransformD> _bindPose;
  @override get bindPose {
    structOnOp((p) => _bindPose.ptr = TransformD.wasmPointer(p.readerAt(_o[.bindPose]).pointer()));
    return _bindPose;
  }
  @override set bindPose(List<TransformD> value) {
    structOnOp((p) {
      _bindPose.ptr = TransformD.wasmPointer(p.readerAt(_o[.bindPose]).pointer());
      p.writerAt(_o[.boneCount]).Int32(value.length);
    });
    _bindPose.inner = value;
  }

  ModelSkeletonD({
    super.originalPointer,
    List<BoneInfoD>? bones,
    List<TransformD>? bindPose,
  }) : _boneCount = bones?.length ?? 0 {
    _bones = .new(
      bones ?? [],
      originalPointer == null ? null : BoneInfoD.wasmPointer(wasmReader(_o[.bones]).pointer())
    );

    _bindPose = .new(
      bindPose ?? [],
      originalPointer == null ? null : TransformD.wasmPointer(wasmReader(_o[.bindPose]).pointer())
    );
  }

  factory ModelSkeletonD.zero() => .new();

  @override
  ModelSkeletonD setD(ModelSkeletonD o) {
    boneCount = o.boneCount;
    bones = .from(o.bones);
    bindPose = .from(o.bindPose); 
    return this;
  }

  @override
  void structAllocateInto(RaylibTemp temp, WasmStructPointer<ModelSkeletonD> p, String key) {
    if (bones.isNotEmpty) _bones.ptr = temp.BoneInfo$.val.Array(_bones.inner, key: '${key}_bones');
    if (bindPose.isNotEmpty) _bindPose.ptr = temp.Transform$.val.Array(_bindPose.inner, key: '${key}_bindPose');
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Int32(_boneCount);
    writer.wasmPointer(_bones.ptr);
    writer.wasmPointer(_bindPose.ptr);

    _bones.onPointer((p) => p.writeArray(_bones.inner));
    _bindPose.onPointer((p) => p.writeArray(_bindPose.inner));
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    _boneCount = reader.Int32();
    _bones.ptr = BoneInfoD.wasmPointer(reader.pointer());
    _bindPose.ptr = TransformD.wasmPointer(reader.pointer());
    
    _bones.onPointer((p) => _bones.inner = p.readArray(_boneCount));
    _bindPose.onPointer((p) => _bindPose.inner = p.readArray(_boneCount));
  }

  @override
  ModelSkeletonD clone() => .new(
    originalPointer: originalPointer,
    bones: bones.map((x) => x.clone()).toList(),
    bindPose: bindPose.map((x) => x.clone()).toList(),
  );
}