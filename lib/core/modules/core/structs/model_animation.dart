part of '../../../raylib_dartified_web.dart';

enum _ModelAnimationOffsets with _WasmOffsets {
  name,
  boneCount,
  keyframeCount,
  keyframePoses,
}

class ModelAnimationD extends StructDWeb<ModelAnimationD> with ModelAnimationBase<
  ModelAnimationD,
  TransformD,
  Vector3D,
  MatrixD,
  QuaternionD,
  Vector4D
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_ModelAnimationOffsets> _o = .fromMap({
    .name:          WasmSize.Char * ModelAnimationBase.BASE_nameLength,
    .boneCount:     WasmSize.Int32,
    .keyframeCount: WasmSize.Int32,
    .keyframePoses: WasmSize.Pointer,
  });

  static WasmStructPointer<ModelAnimationD> wasmPointer(int ptr) => .new(ptr, ModelAnimationD.new, byteSize);
  static WasmStructPointerPointer<ModelAnimationD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

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

  int _boneCount;
  @override get boneCount {
    structOnOp((p) => _boneCount = p.readerAt(_o[.boneCount]).Int32());
    return _boneCount;
  }
  @override set boneCount(int value) {
    _boneCount = value;
    structOnOp((p) => p.writerAt(_o[.boneCount]).Int32(_boneCount));
  }

  late WasmLiveListPointerPointerStruct<TransformD> _keyframePoses;
  @override get keyframePoses {
    structOnOp((p) => _keyframePoses.ptr = TransformD.wasmPointerPointer(p.readerAt(_o[.keyframePoses]).pointer()));
    return _keyframePoses;
  }
  @override set keyframePoses(List<List<TransformD>> value) {
    structOnOp((p) {
      _keyframePoses.ptr = TransformD.wasmPointerPointer(p.readerAt(_o[.keyframePoses]).pointer());
      p.writerAt(_o[.keyframeCount]).Int32(value.length);
    });

    _keyframePoses.inner = .generate(value.length, (i) {
      return .new(value[i], _keyframePoses.innerPointer(i));
    });
  }

  ModelAnimationD({
    super.originalPointer,
    List<List<TransformD>>? keyframePoses,
    String name = '',
  }) :
    _name = name,
    _boneCount = keyframePoses?.firstOrNull?.length ?? 0
  {
    _keyframePoses = .fromList(
      keyframePoses ?? [],
      originalPointer == null ? null : TransformD.wasmPointerPointer(wasmReader(_o[.keyframePoses]).pointer())
    );
  }

  factory ModelAnimationD.zero() => .new();

  @override
  ModelAnimationD setD(ModelAnimationD o) {
    keyframePoses = .from(o.keyframePoses); 
    name = o.name;
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.charArray(name, nameLength);
    writer.Int32(_boneCount);
    writer.Int32(keyframeCount);
    writer.wasmPointer(_keyframePoses.ptr);

    _keyframePoses.onPointer((p) => p.writeMatrix(_keyframePoses.inner));
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    name = reader.charArray(nameLength);
    boneCount = reader.Int32();
    final frameCount = reader.Int32();
    _keyframePoses.ptr = TransformD.wasmPointerPointer(reader.pointer());
    
    _keyframePoses.onPointer((p) => keyframePoses = p.readMatrix(frameCount, boneCount));
  }

  @override
  ModelAnimationD clone() => .new(
    originalPointer: originalPointer,
    keyframePoses: keyframePoses.map((frame) => 
      frame.map((transform) => transform.clone()).toList()
    ).toList(),
    name: name,
  );
}