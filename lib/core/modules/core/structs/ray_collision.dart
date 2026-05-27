part of '../../../raylib_dartified_web.dart';

enum _RayCollisionOffsets with _WasmOffsets {
  hit,
  distance,
  point,
  normal,
}

class RayCollisionD extends StructDLiteralWeb<RayCollisionD> with RayCollisionBase<
  RayCollisionD,
  Vector3D,
  MatrixD,
  QuaternionD,
  Vector4D
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_RayCollisionOffsets> _o = .fromMap({
    .hit:      WasmSize.Boolean,
    .distance: WasmSize.Float32,
    .point:    Vector3D.byteSize,
    .normal:   Vector3D.byteSize,
  });

  static WasmStructPointer<RayCollisionD> wasmPointer(int ptr) => .new(ptr, RayCollisionD.new, byteSize);
  static WasmStructPointerPointer<RayCollisionD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  bool hit;
  
  @override
  double distance;
  
  @override
  Vector3D point;
  
  @override
  Vector3D normal;

  @override
  int get wasmByteSize => byteSize;

  RayCollisionD({
    super.originalPointer,
    this.hit = false,
    this.distance = 0,
    Vector3D? point,
    Vector3D? normal
  }) :
    point = point ?? .zero(),
    normal = normal ?? .zero();

  factory RayCollisionD.zero() => .new();

  @override
  RayCollisionD setD(RayCollisionD o) {
    hit = o.hit;
    distance = o.distance;
    point.setD(o.point);
    normal.setD(o.normal);
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.boolean(hit);
    writer.Float32(distance);
    writer.struct(point);
    writer.struct(normal);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    hit = reader.boolean();
    distance = reader.Float32();
    reader.struct(point);
    reader.struct(normal);
  }

  @override
  RayCollisionD clone() => .new(
    originalPointer: originalPointer,
    hit: hit,
    distance: distance,
    point: point.clone(),
    normal: normal.clone()
  );
}