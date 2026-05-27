part of '../../../raylib_dartified_web.dart';

enum _GlyphInfoOffsets with _WasmOffsets {
  value,
  offsetX,
  offsetY,
  advanceX,
  image,
}

class GlyphInfoD extends StructDWeb<GlyphInfoD> with GlyphInfoBase<
  GlyphInfoD,
  ImageD
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_GlyphInfoOffsets> _o = .fromMap({
    .value:    WasmSize.Int32,
    .offsetX:  WasmSize.Int32,
    .offsetY:  WasmSize.Int32,
    .advanceX: WasmSize.Int32,
    .image:    ImageD.byteSize,
  });

  static WasmStructPointer<GlyphInfoD> wasmPointer(int ptr) => .new(ptr, GlyphInfoD.new, byteSize);
  static WasmStructPointerPointer<GlyphInfoD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  int _value;
  @override get value {
    structOnOp((p) => _value = p.readerAt(_o[.value]).Int32());
    return _value;
  }
  @override set value(int value) {
    _value = value;
    structOnOp((p) => p.writerAt(_o[.value]).Int32(value));
  }
  
  int _offsetX;
  @override get offsetX {
    structOnOp((p) => _offsetX = p.readerAt(_o[.offsetX]).Int32());
    return _offsetX;
  }
  @override set offsetX(int value) {
    _offsetX = value;
    structOnOp((p) => p.writerAt(_o[.offsetX]).Int32(value));
  }
  
  int _offsetY;
  @override get offsetY {
    structOnOp((p) => _offsetY = p.readerAt(_o[.offsetY]).Int32());
    return _offsetY;
  }
  @override set offsetY(int value) {
    _offsetY = value;
    structOnOp((p) => p.writerAt(_o[.offsetY]).Int32(value));
  }
  
  int _advanceX;
  @override get advanceX {
    structOnOp((p) => _advanceX = p.readerAt(_o[.advanceX]).Int32());
    return _advanceX;
  }
  @override set advanceX(int value) {
    _advanceX = value;
    structOnOp((p) => p.writerAt(_o[.advanceX]).Int32(value));
  }
  
  ImageD _image;
  @override get image {
    structOnOp((p) => _image.wasmReadFrom(p.readerAt(_o[.image])));
    return _image;
  }
  @override set image(ImageD value) {
    _image = value;
    structOnOp((p) => value.wasmWriteInto(p.writerAt(_o[.image])));
  }

  @override
  int get wasmByteSize => byteSize;

  GlyphInfoD({
    super.originalPointer,
    int value = 0,
    int offsetX = 0,
    int offsetY = 0,
    int advanceX = 0,
    ImageD? image,
  }) :
    _value = value,
    _offsetX = offsetX,
    _offsetY = offsetY,
    _advanceX = advanceX,
    _image = image ?? .zero();

  factory GlyphInfoD.zero() => .new();

  @override
  GlyphInfoD setD(GlyphInfoD o) {
    value = o.value;
    offsetX = o.offsetX;
    offsetY = o.offsetY;
    advanceX = o.advanceX;
    image.setD(o.image);
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Int32(value);
    writer.Int32(offsetX);
    writer.Int32(offsetY);
    writer.Int32(advanceX);
    writer.struct(image);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    value = reader.Int32();
    offsetX = reader.Int32();
    offsetY = reader.Int32();
    advanceX = reader.Int32();
    reader.struct(image);
  }

  @override
  GlyphInfoD clone() => .new(
    originalPointer: originalPointer,
    value: value,
    offsetX: offsetX,
    offsetY: offsetY,
    advanceX: advanceX,
    image: image.clone(),
  );
}