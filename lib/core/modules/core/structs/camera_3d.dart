part of '../../../raylib_dartified_web.dart';

enum _Camera3DOffsets with _WasmOffsets {
  position,
  target,
  up,
  fovy,
  projection,
}

class Camera3DD extends StructDLiteralWeb<Camera3DD> with Camera3DBase<
  Camera3DD,
  Vector3D,
  MatrixD,
  QuaternionD,
  Vector4D
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_Camera3DOffsets> _o = .fromMap({
    .position:   Vector3D.byteSize,
    .target:     Vector3D.byteSize,
    .up:         Vector3D.byteSize,
    .fovy:       WasmSize.Float32,
    .projection: WasmSize.Int32,
  });

  static WasmStructPointer<Camera3DD> wasmPointer(int ptr) => .new(ptr, Camera3DD.new, byteSize);
  static WasmStructPointerPointer<Camera3DD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  Vector3D position;
  
  @override
  Vector3D target;
  
  @override
  Vector3D up;
  
  @override
  double fovy;
  
  @override
  CameraProjection projection;

  @override
  int get wasmByteSize => byteSize;

  Camera3DD({
    super.originalPointer,
    Vector3D? position,
    Vector3D? target,
    Vector3D? up,
    this.fovy = 45,
    this.projection = .CAMERA_PERSPECTIVE,
  }) :
    position = position ?? .zero(),
    target = target ?? .zero(),
    up = up ?? .zero();

  factory Camera3DD.zero() => .new();

  @override
  Camera3DD setD(Camera3DD o) {
    position.setD(o.position);
    target.setD(o.target);
    up.setD(o.up);
    fovy = o.fovy;
    projection = o.projection;
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.struct(position);
    writer.struct(target);
    writer.struct(up);
    writer.Float32(fovy);
    writer.Int32(projection.value);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    reader.struct(position);
    reader.struct(target);
    reader.struct(up);
    fovy = reader.Float32();
    projection = .fromValue(reader.Int32());
  }

  @override
  Camera3DD clone() => .new(
    originalPointer: originalPointer,
    position: position.clone(),
    target: target.clone(),
    up: up.clone(),
    fovy: fovy,
    projection: projection,
  );
}