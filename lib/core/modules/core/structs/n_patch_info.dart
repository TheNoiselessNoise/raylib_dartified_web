part of '../../../raylib_dartified_web.dart';

enum _NPatchInfoOffsets with _WasmOffsets {
  source,
  left,
  top,
  right,
  bottom,
  layout,
}

class NPatchInfoD extends StructDLiteralWeb<NPatchInfoD> with NPatchInfoBase<
  NPatchInfoD,
  RectangleD
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_NPatchInfoOffsets> _o = .fromMap({
    .source: RectangleD.byteSize,
    .left:   WasmSize.Int32,
    .top:    WasmSize.Int32,
    .right:  WasmSize.Int32,
    .bottom: WasmSize.Int32,
    .layout: WasmSize.Int32,
  });

  static WasmStructPointer<NPatchInfoD> wasmPointer(int ptr) => .new(ptr, NPatchInfoD.new, byteSize);
  static WasmStructPointerPointer<NPatchInfoD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  RectangleD source;
  
  @override
  int left;
  
  @override
  int top;
  
  @override
  int right;
  
  @override
  int bottom;
  
  @override
  NPatchLayout layout;

  @override
  int get wasmByteSize => byteSize;

  NPatchInfoD({
    super.originalPointer,
    RectangleD? source,
    this.left = 0,
    this.top = 0,
    this.right = 0,
    this.bottom = 0,
    this.layout = .NPATCH_NINE_PATCH,
  }) :
    source = source ?? .new();

  factory NPatchInfoD.zero() => .new();

  @override
  NPatchInfoD setD(NPatchInfoD o) {
    source.setD(o.source);
    left = o.left;
    top = o.top;
    right = o.right;
    bottom = o.bottom;
    layout = o.layout;
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.struct(source);
    writer.Int32(left);
    writer.Int32(top);
    writer.Int32(right);
    writer.Int32(bottom);
    writer.Int32(layout.value);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    reader.struct(source);
    left = reader.Int32();
    top = reader.Int32();
    right = reader.Int32();
    bottom = reader.Int32();
    layout = .fromValue(reader.Int32());
  }

  @override
  NPatchInfoD clone() => .new(
    originalPointer: originalPointer,
    source: source.clone(),
    left: left,
    top: top,
    right: right,
    bottom: bottom,
    layout: layout,
  );
}