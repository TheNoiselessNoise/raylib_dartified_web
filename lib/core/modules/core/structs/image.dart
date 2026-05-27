part of '../../../raylib_dartified_web.dart';

enum _ImageOffsets with _WasmOffsets {
  data,
  width,
  height,
  mipmaps,
  format,
}

class ImageD extends StructDWeb<ImageD> with ImageBase<ImageD> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_ImageOffsets> _o = .fromMap({
    .data:    WasmSize.AnyPointer,
    .width:   WasmSize.Int32,
    .height:  WasmSize.Int32,
    .mipmaps: WasmSize.Int32,
    .format:  WasmSize.Int32,
  });

  static WasmStructPointer<ImageD> wasmPointer(int ptr) => .new(ptr, ImageD.new, byteSize);
  static WasmStructPointerPointer<ImageD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  late Uint8List _data;
  WasmUint8Pointer _dataPtr = .nullptr();
  @override get data {
    structOnOp((p) => _dataPtr = p.readerAt(_o[.data]).Uint8Pointer());
    if (_dataPtr.isNotNull) _data = _dataPtr.view(dataLength);
    return _data;
  }
  @override set data(Uint8List value) {
    assert(value.length <= dataLength);
    _data = value;
    structOnOp((p) => _dataPtr = p.readerAt(_o[.data]).Uint8Pointer());
    if (_dataPtr.isNotNull) _dataPtr.setAll(value);
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
  int frameCount = 1; // normal image has only 1 frame

  @override
  int get wasmByteSize => byteSize;

  ImageD({
    super.originalPointer,
    Uint8List? data,
    int width = 0,
    int height = 0,
    int mipmaps = 0,
    PixelFormat format = .PIXELFORMAT_NONE,
  }) :
    _width = width,
    _height = height,
    _mipmaps = mipmaps,
    _format = format 
  {
    _data = data ?? Uint8List(dataLength);
  }

  factory ImageD.zero() => .new();

  // NOTE: for GIFs
  @override
  void structUpdateFrameCount(int frameCount) => structOnOp((p) {
    if (this.frameCount != frameCount) {
      this.frameCount = frameCount;
      structSyncFromMemory();
    }
  });

  @override
  ImageD setD(ImageD o) {
    width = o.width;
    height = o.height;
    mipmaps = o.mipmaps;
    format = o.format;
    data = .fromList(o.data);
    return this;
  }

  @override
  void structAllocateInto(RaylibTemp temp, WasmStructPointer<ImageD> p, String key) {
    _dataPtr = temp.Uint8$.RawArray(data);
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.wasmptr(_dataPtr);
    writer.Int32(width);
    writer.Int32(height);
    writer.Int32(mipmaps);
    writer.Int32(format.value);
    
    if (_dataPtr.isNotNull) _dataPtr.setAll(data);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    _dataPtr = reader.Uint8Pointer();
    width = reader.Int32();
    height = reader.Int32();
    mipmaps = reader.Int32();
    format = .fromValue(reader.Int32());
    
    if (_dataPtr.isNotNull) data = _dataPtr.view(dataLength);
  }

  @override
  ImageD clone() => .new(
    originalPointer: originalPointer,
    width: width,
    height: height,
    mipmaps: mipmaps,
    format: format,
    data: .fromList(data),
  );
}