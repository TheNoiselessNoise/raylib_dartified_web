part of '../../../raylib_dartified_web.dart';

enum _RayOffsets with _WasmOffsets {
  position,
  direction,
}

class RayD extends StructDLiteralWeb<RayD> with RayBase<
  RayD,
  Vector3D,
  MatrixD,
  QuaternionD,
  Vector4D
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_RayOffsets> _o = .fromMap({
    .position:  Vector3D.byteSize,
    .direction: Vector3D.byteSize,
  });

  static WasmStructPointer<RayD> wasmPointer(int ptr) => .new(ptr, RayD.new, byteSize);
  static WasmStructPointerPointer<RayD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  Vector3D position;
  
  @override
  Vector3D direction;

  @override
  int get wasmByteSize => byteSize;

  RayD({
    super.originalPointer,
    Vector3D? position,
    Vector3D? direction
  }) :
    position = position ?? .zero(),
    direction = direction ?? .zero();

  factory RayD.zero() => .new();

  @override
  RayD setD(RayD o) {
    position.setD(o.position);
    direction.setD(o.direction);
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.struct(position);
    writer.struct(direction);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    reader.struct(position);
    reader.struct(direction);
  }

  @override
  RayD clone() => .new(
    originalPointer: originalPointer,
    position: position.clone(),
    direction: direction.clone(),
  );
}