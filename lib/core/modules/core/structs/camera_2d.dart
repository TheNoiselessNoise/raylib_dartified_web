part of '../../../raylib_dartified_web.dart';

enum _Camera2DOffsets with _WasmOffsets {
  offset,
  target,
  rotation,
  zoom,
}

class Camera2DD extends StructDLiteralWeb<Camera2DD> with Camera2DBase<
  Camera2DD,
  Vector2D,
  MatrixD,
  Vector3D,
  QuaternionD,
  Vector4D
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_Camera2DOffsets> _o = .fromMap({
    .offset:   Vector2D.byteSize,
    .target:   Vector2D.byteSize,
    .rotation: WasmSize.Float32,
    .zoom:     WasmSize.Float32,
  });

  static WasmStructPointer<Camera2DD> wasmPointer(int ptr) => .new(ptr, Camera2DD.new, byteSize);
  static WasmStructPointerPointer<Camera2DD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  Vector2D offset;

  @override
  Vector2D target;

  @override
  double rotation;

  @override
  double zoom;

  @override
  int get wasmByteSize => byteSize;

  Camera2DD({
    super.originalPointer,
    Vector2D? offset,
    Vector2D? target,
    this.rotation = 0,
    this.zoom = 0,
  }) :
    offset = offset ?? .zero(),
    target = target ?? .zero();

  factory Camera2DD.zero() => .new();

  @override
  Camera2DD setD(Camera2DD o) {
    offset.setD(o.offset);
    target.setD(o.target);
    rotation = o.rotation;
    zoom = o.zoom;
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.struct(offset);
    writer.struct(target);
    writer.Float32(rotation);
    writer.Float32(zoom);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    reader.struct(offset);
    reader.struct(target);
    rotation = reader.Float32();
    zoom = reader.Float32();
  }
  
  @override
  Camera2DD clone() => .new(
    originalPointer: originalPointer,
    offset: offset.clone(),
    target: target.clone(),
    rotation: rotation,
    zoom: zoom,
  );
}