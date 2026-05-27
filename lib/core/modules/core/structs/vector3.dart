part of '../../../raylib_dartified_web.dart';

enum _Vector3Offsets with _WasmOffsets {
  x,
  y,
  z,
}

class Vector3D extends StructDLiteralWeb<Vector3D> with Vector3Base<
  Vector3D,
  MatrixD,
  QuaternionD,
  Vector4D
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_Vector3Offsets> _o = .fromMap({
    .x: WasmSize.Float32,
    .y: WasmSize.Float32,
    .z: WasmSize.Float32,
  });

  static WasmStructPointer<Vector3D> wasmPointer(int ptr) => .new(ptr, Vector3D.new, byteSize);
  static WasmStructPointerPointer<Vector3D> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  double x, y, z;

  @override
  int get wasmByteSize => byteSize;

  Vector3D({
    super.originalPointer,
    this.x = 0,
    this.y = 0,
    this.z = 0,
  });

  factory Vector3D.zero() => .new();
  factory Vector3D.one() => .vec3(1, 1, 1);

  factory Vector3D.vec3(
    num x,
    num y,
    num z,
  ) => .new(
    x: x.toDouble(),
    y: y.toDouble(),
    z: z.toDouble(),
  );

  @override
  Vector3D setD(Vector3D o) {
    return set(o.x, o.y, o.z);
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Float32(x);
    writer.Float32(y);
    writer.Float32(z);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    x = reader.Float32();
    y = reader.Float32();
    z = reader.Float32();
  }

  @override
  Vector3D clone() => .new(
    originalPointer: originalPointer,
    x: x,
    y: y,
    z: z,
  );

  factory Vector3D.vec3Normalized(num x, num y, num z)
    => RaylibVector3Factories.normalized(x, y, z) as Vector3D;

  factory Vector3D.perpendicular(Vector3D o)
    => RaylibVector3Factories.perpendicular(o) as Vector3D;

  factory Vector3D.barycenter(Vector3D p, Vector3D a, Vector3D b, Vector3D c)
    => RaylibVector3Factories.barycenter(p, a, b, c) as Vector3D;
}