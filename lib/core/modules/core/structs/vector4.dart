part of '../../../raylib_dartified_web.dart';

enum _Vector4Offsets with _WasmOffsets {
  x,
  y,
  z,
  w,
}

class Vector4D extends StructDLiteralWeb<Vector4D> with Vector4Base<
  Vector4D,
  QuaternionD,
  MatrixD,
  Vector3D
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_Vector4Offsets> _o = .fromMap({
    .x: WasmSize.Float32,
    .y: WasmSize.Float32,
    .z: WasmSize.Float32,
    .w: WasmSize.Float32,
  });

  static WasmStructPointer<Vector4D> wasmPointer(int ptr) => .new(ptr, Vector4D.new, byteSize);
  static WasmStructPointerPointer<Vector4D> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  double x, y, z, w;

  @override
  int get wasmByteSize => byteSize;

  Vector4D({
    super.originalPointer,
    this.x = 0,
    this.y = 0,
    this.z = 0,
    this.w = 0,
  });

  factory Vector4D.zero() => .new();
  factory Vector4D.one() => .vec4(1, 1, 1, 1);

  factory Vector4D.vec4(
    num x,
    num y,
    num z,
    num w,
  ) => .new(
    x: x.toDouble(),
    y: y.toDouble(),
    z: z.toDouble(),
    w: w.toDouble(),
  );

  @override
  Vector4D setD(Vector4D o) {
    return set(o.x, o.y, o.z, o.w);
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Float32(x);
    writer.Float32(y);
    writer.Float32(z);
    writer.Float32(w);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    x = reader.Float32();
    y = reader.Float32();
    z = reader.Float32();
    w = reader.Float32();
  }

  @override
  Vector4D clone() => .new(
    originalPointer: originalPointer,
    x: x,
    y: y,
    z: z,
    w: w,
  );

  factory Vector4D.colorNormalize(ColorD color)
    => RaylibVector4Factories.colorNormalize(color) as Vector4D;

  factory Vector4D.fromAxisAngle(Vector3D axis, double angle)
    => RaylibVector4Factories.fromAxisAngle(axis, angle) as Vector4D;

  factory Vector4D.fromQuaternion(QuaternionD q)
    => RaylibVector4Factories.fromQuaternion(q) as Vector4D;
}