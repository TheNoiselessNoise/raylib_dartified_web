part of '../../../raylib_dartified_web.dart';

enum _BoundingBoxOffsets with _WasmOffsets {
  min,
  max,
}

class BoundingBoxD extends StructDLiteralWeb<BoundingBoxD> with BoundingBoxBase<
  BoundingBoxD,
  Vector3D,
  MatrixD,
  QuaternionD,
  Vector4D
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_BoundingBoxOffsets> _o = .fromMap({
    .min: Vector3D.byteSize,
    .max: Vector3D.byteSize,
  });

  static WasmStructPointer<BoundingBoxD> wasmPointer(int ptr) => .new(ptr, BoundingBoxD.new, byteSize);
  static WasmStructPointerPointer<BoundingBoxD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  Vector3D min;

  @override
  Vector3D max;

  @override
  int get wasmByteSize => byteSize;

  BoundingBoxD({
    super.originalPointer,
    Vector3D? min,
    Vector3D? max,
  }) :
    min = min ?? .zero(),
    max = max ?? .zero();

  factory BoundingBoxD.zero() => .new();

  factory BoundingBoxD.bbox(
    Vector3D min,
    Vector3D max,
  ) => .new(min: min, max: max);

  @override
  BoundingBoxD setD(BoundingBoxD o) {
    min.setD(o.min);
    max.setD(o.max);
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.struct(min);
    writer.struct(max);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    reader.struct(min);
    reader.struct(max);
  }
  
  @override
  BoundingBoxD clone() => .new(
    originalPointer: originalPointer,
    min: min.clone(),
    max: max.clone(),
  );
}