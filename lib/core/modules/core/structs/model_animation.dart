part of '../../../raylib_dartified_web.dart';

enum _ModelAnimationOffsets with _WasmOffsets {
  boneCount,
  frameCount,
  bones,
  framePoses,
  name,
}

class ModelAnimationD extends StructDWeb<ModelAnimationD> with ModelAnimationBase<
  ModelAnimationD,
  BoneInfoD,
  TransformD,
  Vector3D,
  MatrixD,
  QuaternionD,
  Vector4D
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_ModelAnimationOffsets> _o = .fromMap({
    .boneCount:  WasmSize.Int32,
    .frameCount: WasmSize.Int32,
    .bones:      WasmSize.StructPointer,
    .framePoses: WasmSize.AnyPointer,
    .name:       WasmSize.Char * ModelAnimationBase.BASE_nameLength,
  });

  static WasmStructPointer<ModelAnimationD> wasmPointer(int ptr) => .new(ptr, ModelAnimationD.new, byteSize);
  static WasmStructPointerPointer<ModelAnimationD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

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
  
  late WasmLiveListPointerPointerStruct<TransformD> _framePoses;
  @override get framePoses {
    structOnOp((p) => _framePoses.ptr = TransformD.wasmPointerPointer(p.readerAt(_o[.framePoses]).pointer()));
    return _framePoses;
  }
  @override set framePoses(List<List<TransformD>> value) {
    structOnOp((p) {
      _framePoses.ptr = TransformD.wasmPointerPointer(p.readerAt(_o[.framePoses]).pointer());
      p.writerAt(_o[.frameCount]).Int32(value.length);
    });

    _framePoses.inner = .generate(value.length, (i) {
      return .new(value[i], _framePoses.innerPointer(i));
    });
  }

  String _name;
  @override get name {
    structOnOp((p) => _name = p.readerAt(_o[.name]).string());
    return _name;
  }
  @override set name(String value) {
    assert(value.length <= nameLength);
    _name = value;
    structOnOp((p) => p.writerAt(_o[.name]).charArray(value, nameLength));
  }

  @override
  int get wasmByteSize => byteSize;

  ModelAnimationD({
    super.originalPointer,
    List<BoneInfoD>? bones,
    List<List<TransformD>>? framePoses,
    String name = '',
  }) :
    _name = name
  {
    _framePoses = .fromList(
      framePoses ?? [],
      originalPointer == null ? null : TransformD.wasmPointerPointer(wasmReader(_o[.framePoses]).pointer())
    );

    _bones = .new(
      bones ?? [],
      originalPointer == null ? null : BoneInfoD.wasmPointer(wasmReader(_o[.bones]).pointer())
    );
  }

  factory ModelAnimationD.zero() => .new();

  @override
  ModelAnimationD setD(ModelAnimationD o) {
    bones = .from(o.bones); 
    framePoses = .from(o.framePoses); 
    name = o.name;
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Int32(bones.length);
    writer.Int32(frameCount);
    writer.wasmptr(_bones.ptr);
    writer.wasmptr(_framePoses.ptr);
    writer.charArray(name, nameLength);

    _bones.onPointer((p) => p.writeArray(_bones.inner));
    _framePoses.onPointer((p) => p.writeMatrix(_framePoses.inner));
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    final boneCount = reader.Int32();
    final frameCount = reader.Int32();
    _bones.ptr = BoneInfoD.wasmPointer(reader.pointer());
    _framePoses.ptr = TransformD.wasmPointerPointer(reader.pointer());
    name = reader.charArray(nameLength);
    
    _bones.onPointer((p) => bones = p.readArray(boneCount));
    _framePoses.onPointer((p) => framePoses = p.readMatrix(frameCount, boneCount));
  }

  @override
  ModelAnimationD clone() => .new(
    originalPointer: originalPointer,
    bones: bones.map((x) => x.clone()).toList(),
    framePoses: framePoses.map((frame) => 
      frame.map((transform) => transform.clone()).toList()
    ).toList(),
    name: name,
  );
}