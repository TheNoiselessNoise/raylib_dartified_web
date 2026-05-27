part of '../../../raylib_dartified_web.dart';

enum _MatrixOffsets with _WasmOffsets {
  m0, m4, m8, m12,
  m1, m5, m9, m13,
  m2, m6, m10, m14,
  m3, m7, m11, m15,
}
  
class MatrixD extends StructDLiteralWeb<MatrixD> with MatrixBase<
  MatrixD,
  Vector3D,
  QuaternionD,
  Vector4D
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_MatrixOffsets> _o = .fromMap({
    .m0: WasmSize.Float32, .m4: WasmSize.Float32, .m8: WasmSize.Float32, .m12: WasmSize.Float32,
    .m1: WasmSize.Float32, .m5: WasmSize.Float32, .m9: WasmSize.Float32, .m13: WasmSize.Float32,
    .m2: WasmSize.Float32, .m6: WasmSize.Float32, .m10: WasmSize.Float32, .m14: WasmSize.Float32,
    .m3: WasmSize.Float32, .m7: WasmSize.Float32, .m11: WasmSize.Float32, .m15: WasmSize.Float32,
  });

  static WasmStructPointer<MatrixD> wasmPointer(int ptr) => .new(ptr, MatrixD.new, byteSize);
  static WasmStructPointerPointer<MatrixD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  double
    m0, m1, m2, m3,
    m4, m5, m6, m7,
    m8, m9, m10, m11,
    m12, m13, m14, m15;

  @override
  int get wasmByteSize => byteSize;

  MatrixD({
    super.originalPointer,
    this.m0 = 0, this.m1 = 0, this.m2 = 0, this.m3 = 0,
    this.m4 = 0, this.m5 = 0, this.m6 = 0, this.m7 = 0,
    this.m8 = 0, this.m9 = 0, this.m10 = 0, this.m11 = 0,
    this.m12 = 0, this.m13 = 0, this.m14 = 0, this.m15 = 0,
  });

  factory MatrixD.zero() => .new();

  static double _d(num x) => x.toDouble();

  factory MatrixD.mat4(
    num m0, num m1, num m2, num m3,
    num m4, num m5, num m6, num m7,
    num m8, num m9, num m10, num m11,
    num m12, num m13, num m14, num m15,
  ) {
    return .new(
      m0:  _d(m0),   m1: _d(m1),   m2: _d(m2),   m3: _d(m3),
      m4:  _d(m4),   m5: _d(m5),   m6: _d(m6),   m7: _d(m7),
      m8:  _d(m8),   m9: _d(m9),  m10: _d(m10), m11: _d(m11),
      m12: _d(m12), m13: _d(m13), m14: _d(m14), m15: _d(m15),
    );
  }

  @override
  MatrixD setD(MatrixD o) {
    return set(
      o.m0, o.m1, o.m2, o.m3,
      o.m4, o.m5, o.m6, o.m7,
      o.m8, o.m9, o.m10, o.m11,
      o.m12, o.m13, o.m14, o.m15,
    );
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Float32(m0); writer.Float32(m4); writer.Float32(m8); writer.Float32(m12); 
    writer.Float32(m1); writer.Float32(m5); writer.Float32(m9); writer.Float32(m13); 
    writer.Float32(m2); writer.Float32(m6); writer.Float32(m10); writer.Float32(m14); 
    writer.Float32(m3); writer.Float32(m7); writer.Float32(m11); writer.Float32(m15); 
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    m0 = reader.Float32(); m4 = reader.Float32(); m8 = reader.Float32(); m12 = reader.Float32(); 
    m1 = reader.Float32(); m5 = reader.Float32(); m9 = reader.Float32(); m13 = reader.Float32(); 
    m2 = reader.Float32(); m6 = reader.Float32(); m10 = reader.Float32(); m14 = reader.Float32(); 
    m3 = reader.Float32(); m7 = reader.Float32(); m11 = reader.Float32(); m15 = reader.Float32(); 
  }

  @override
  MatrixD clone() => .new(
    originalPointer: originalPointer,
    m0: m0, m1: m1, m2: m2, m3: m3,
    m4: m4, m5: m5, m6: m6, m7: m7,
    m8: m8, m9: m9, m10: m10, m11: m11,
    m12: m12, m13: m13, m14: m14, m15: m15,
  );

  factory MatrixD.identity()
    => RaylibMatrixFactories.identity() as MatrixD;

  factory MatrixD.lookAt(Vector3D eye, Vector3D target, Vector3D up)
    => RaylibMatrixFactories.lookAt(eye, target, up) as MatrixD;

  factory MatrixD.scale(double x, double y, double z)
    => RaylibMatrixFactories.scale(x, y, z) as MatrixD;

  factory MatrixD.translate(num x, num y, num z)
    => RaylibMatrixFactories.translate(x, y, z) as MatrixD;
  
  factory MatrixD.translateVector3(Vector3D v)
    => RaylibMatrixFactories.translateVector3(v) as MatrixD;

  factory MatrixD.rotateAngle(Vector3D axis, double angle)
    => RaylibMatrixFactories.rotateAngle(axis, angle) as MatrixD;

  factory MatrixD.rotateXYZ(Vector3D angle)
    => RaylibMatrixFactories.rotateXYZ(angle) as MatrixD;

  factory MatrixD.rotateZYX(Vector3D angle)
    => RaylibMatrixFactories.rotateZYX(angle) as MatrixD;

  factory MatrixD.frustum(double left, double right, double bottom, double top, double nearPlane, double farPlane)
    => RaylibMatrixFactories.frustum(left, right, bottom, top, nearPlane, farPlane) as MatrixD;

  factory MatrixD.perspective(double fovY, double aspect, double nearPlane, double farPlane)
    => RaylibMatrixFactories.perspective(fovY, aspect, nearPlane, farPlane) as MatrixD;

  factory MatrixD.ortho(double left, double right, double bottom, double top, double nearPlane, double farPlane)
    => RaylibMatrixFactories.ortho(left, right, bottom, top, nearPlane, farPlane) as MatrixD;

  factory MatrixD.rotateX(double angle)
    => RaylibMatrixFactories.rotateX(angle) as MatrixD;

  factory MatrixD.rotateY(double angle)
    => RaylibMatrixFactories.rotateY(angle) as MatrixD;

  factory MatrixD.rotateZ(double angle)
    => RaylibMatrixFactories.rotateZ(angle) as MatrixD;

  factory MatrixD.fromQuaternion(QuaternionD q)
    => RaylibMatrixFactories.fromQuaternion(q) as MatrixD;
}