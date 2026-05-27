part of '../../../raylib_dartified_web.dart';

enum _Vector2Offsets with _WasmOffsets {
  x,
  y,
}

class Vector2D extends StructDLiteralWeb<Vector2D> with Vector2Base<
  Vector2D,
  MatrixD,
  Vector3D,
  QuaternionD,
  Vector4D
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_Vector2Offsets> _o = .fromMap({
    .x: WasmSize.Float32,
    .y: WasmSize.Float32,
  });

  static WasmStructPointer<Vector2D> wasmPointer(int ptr) => .new(ptr, Vector2D.new, byteSize);
  static WasmStructPointerPointer<Vector2D> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  double x, y;

  @override
  int get wasmByteSize => byteSize;

  Vector2D({
    super.originalPointer,
    this.x = 0,
    this.y = 0,
  });

  factory Vector2D.zero() => .new();
  factory Vector2D.one() => .vec2(1, 1);

  factory Vector2D.vec2(
    num x,
    num y,
  ) => .new(
    x: x.toDouble(),
    y: y.toDouble(),
  );

  @override
  Vector2D setD(Vector2D o) {
    return set(o.x, o.y);
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Float32(x);
    writer.Float32(y);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    x = reader.Float32();
    y = reader.Float32();
  }

  @override
  Vector2D clone() => .new(
    originalPointer: originalPointer,
    x: x,
    y: y,
  );
}