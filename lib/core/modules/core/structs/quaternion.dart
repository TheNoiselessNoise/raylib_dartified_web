part of '../../../raylib_dartified_web.dart';

enum _QuaternionOffsets with _WasmOffsets {
  x,
  y,
  z,
  w,
}

class QuaternionD extends StructDLiteralWeb<QuaternionD> with QuaternionBase<
  QuaternionD,
  MatrixD,
  Vector3D,
  Vector4D
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_QuaternionOffsets> _o = .fromMap({
    .x: WasmSize.Float32,
    .y: WasmSize.Float32,
    .z: WasmSize.Float32,
    .w: WasmSize.Float32,
  });

  static WasmStructPointer<QuaternionD> wasmPointer(int ptr) => .new(ptr, QuaternionD.new, byteSize);
  static WasmStructPointerPointer<QuaternionD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  double x, y, z, w;

  @override
  int get wasmByteSize => byteSize;

  QuaternionD({
    super.originalPointer,
    this.x = 0,
    this.y = 0,
    this.z = 0,
    this.w = 0,
  });

  factory QuaternionD.zero() => .new();
  factory QuaternionD.one() => .quat(1, 1, 1, 1);

  factory QuaternionD.quat(
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
  QuaternionD setD(QuaternionD o) {
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
  QuaternionD clone() => .new(
    originalPointer: originalPointer,
    x: x,
    y: y,
    z: z,
    w: w,
  );

  factory QuaternionD.identity()
    => RaylibQuaternionFactories.identity() as QuaternionD;

  factory QuaternionD.fromVector3ToVector3(Vector3D from, Vector3D to)
    => RaylibQuaternionFactories.fromVector3ToVector3(from, to) as QuaternionD;

  factory QuaternionD.fromMatrix(MatrixD mat)
    => RaylibQuaternionFactories.fromMatrix(mat) as QuaternionD;

  factory QuaternionD.fromEuler(double pitch, double yaw, double roll)
    => RaylibQuaternionFactories.fromEuler(pitch, yaw, roll) as QuaternionD;

  factory QuaternionD.fromAxisAngle(Vector3D axis, double angle)
    => RaylibQuaternionFactories.fromAxisAngle(axis, angle) as QuaternionD;

  factory QuaternionD.fromVector4(Vector4D v)
    => RaylibQuaternionFactories.fromVector4(v) as QuaternionD;
}