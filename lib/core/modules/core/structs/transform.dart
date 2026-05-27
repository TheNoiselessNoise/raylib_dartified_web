part of '../../../raylib_dartified_web.dart';

enum _TransformOffsets with _WasmOffsets {
  translation,
  rotation,
  scale,
}

class TransformD extends StructDLiteralWeb<TransformD> with TransformBase<
  TransformD,
  Vector3D,
  MatrixD,
  QuaternionD,
  Vector4D
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_TransformOffsets> _o = .fromMap({
    .translation: Vector3D.byteSize,
    .rotation: QuaternionD.byteSize,
    .scale: Vector3D.byteSize,
  });

  static WasmStructPointer<TransformD> wasmPointer(int ptr) => .new(ptr, TransformD.new, byteSize);
  static WasmStructPointerPointer<TransformD> wasmPointerPointer(int ptr) => .new(ptr, TransformD.wasmPointer);

  @override
  Vector3D translation;
  
  @override
  QuaternionD rotation;
  
  @override
  Vector3D scale;

  @override
  int get wasmByteSize => byteSize;

  TransformD({
    super.originalPointer,
    Vector3D? translation,
    QuaternionD? rotation,
    Vector3D? scale,
  }) :
    translation = translation ?? .zero(),
    rotation = rotation ?? .zero(),
    scale = scale ?? .zero();

  factory TransformD.zero() => .new();

  @override
  TransformD setD(TransformD o) {
    translation.setD(o.translation);
    rotation.setD(o.rotation);
    scale.setD(o.scale);
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.struct(translation);
    writer.struct(rotation);
    writer.struct(scale);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    reader.struct(translation);
    reader.struct(rotation);
    reader.struct(scale);
  }

  @override
  TransformD clone() => .new(
    originalPointer: originalPointer,
    translation: translation.clone(),
    rotation: rotation.clone(),
    scale: scale,
  );
}