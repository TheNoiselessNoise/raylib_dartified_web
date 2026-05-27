part of '../../../raylib_dartified_web.dart';

enum _TextureOffsets with _WasmOffsets {
  id,
  width,
  height,
  mipmaps,
  format,
}

class TextureD extends StructDWeb<TextureD> with TextureBase<TextureD> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_TextureOffsets> _o = .fromMap({
    .id:      WasmSize.Uint32,
    .width:   WasmSize.Int32,
    .height:  WasmSize.Int32,
    .mipmaps: WasmSize.Int32,
    .format:  WasmSize.Int32,
  });

  static WasmStructPointer<TextureD> wasmPointer(int ptr) => .new(ptr, TextureD.new, byteSize);
  static WasmStructPointerPointer<TextureD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  int _id;
  @override get id {
    structOnOp((p) => _id = p.readerAt(_o[.id]).Uint32());
    return _id;
  }
  @override set id(int value) {
    _id = value;
    structOnOp((p) => p.writerAt(_o[.id]).Uint32(value));
  }

  int _width;
  @override get width {
    structOnOp((p) => _width = p.readerAt(_o[.width]).Int32());
    return _width;
  }
  @override set width(int value) {
    _width = value;
    structOnOp((p) => p.writerAt(_o[.width]).Int32(value));
  }

  int _height;
  @override get height {
    structOnOp((p) => _height = p.readerAt(_o[.height]).Int32());
    return _height;
  }
  @override set height(int value) {
    _height = value;
    structOnOp((p) => p.writerAt(_o[.height]).Int32(value));
  }

  int _mipmaps;
  @override get mipmaps {
    structOnOp((p) => _mipmaps = p.readerAt(_o[.mipmaps]).Int32());
    return _mipmaps;
  }
  @override set mipmaps(int value) {
    _mipmaps = value;
    structOnOp((p) => p.writerAt(_o[.mipmaps]).Int32(value));
  }

  PixelFormat _format;
  @override get format {
    structOnOp((p) => _format = .fromValue(p.readerAt(_o[.format]).Int32()));
    return _format;
  }
  @override set format(PixelFormat value) {
    _format = value;
    structOnOp((p) => p.writerAt(_o[.format]).Int32(value.value));
  }

  @override
  int get wasmByteSize => byteSize;

  TextureD({
    super.originalPointer,
    int id = 0,
    int width = 0,
    int height = 0,
    int mipmaps = 0,
    PixelFormat format = .PIXELFORMAT_NONE,
  }) :
    _id = id,
    _width = width,
    _height = height,
    _mipmaps = mipmaps,
    _format = format;

  factory TextureD.zero() => .new();

  @override
  TextureD setD(TextureD o) {
    id = o.id;
    width = o.width;
    height = o.height;
    mipmaps = o.mipmaps;
    format = o.format;
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Uint32(id);
    writer.Int32(width);
    writer.Int32(height);
    writer.Int32(mipmaps);
    writer.Int32(format.value);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    id = reader.Uint32();
    width = reader.Int32();
    height = reader.Int32();
    mipmaps = reader.Int32();
    format = .fromValue(reader.Int32());
  }

  @override
  TextureD clone() => .new(
    originalPointer: originalPointer,
    id: id,
    width: width,
    height: height,
    mipmaps: mipmaps,
    format: format,
  );
}