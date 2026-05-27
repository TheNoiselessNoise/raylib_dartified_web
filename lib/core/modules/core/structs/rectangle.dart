part of '../../../raylib_dartified_web.dart';

enum _RectangleOffsets with _WasmOffsets {
  x,
  y,
  width,
  height,
}

class RectangleD extends StructDLiteralWeb<RectangleD> with RectangleBase<RectangleD> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_RectangleOffsets> _o = .fromMap({
    .x:      WasmSize.Float32,
    .y:      WasmSize.Float32,
    .width:  WasmSize.Float32,
    .height: WasmSize.Float32,
  });

  static WasmStructPointer<RectangleD> wasmPointer(int ptr) => .new(ptr, RectangleD.new, byteSize);
  static WasmStructPointerPointer<RectangleD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  double x, y, width, height;

  @override
  int get wasmByteSize => byteSize;

  RectangleD({
    super.originalPointer,
    this.x = 0,
    this.y = 0,
    this.width = 0,
    this.height = 0,
  });

  factory RectangleD.zero() => .new();

  factory RectangleD.rect(
    num x,
    num y,
    num width,
    num height
  ) => .new(
    x: x.toDouble(),
    y: y.toDouble(),
    width: width.toDouble(),
    height: height.toDouble(),
  );

  @override
  RectangleD setD(RectangleD o) {
    return set(o.x, o.y, o.width, o.height);
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Float32(x);
    writer.Float32(y);
    writer.Float32(width);
    writer.Float32(height);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    x = reader.Float32();
    y = reader.Float32();
    width = reader.Float32();
    height = reader.Float32();
  }

  @override
  RectangleD clone() => .new(
    originalPointer: originalPointer,
    x: x,
    y: y,
    width: width,
    height: height,
  );
}