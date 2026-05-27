part of '../../../raylib_dartified_web.dart';

enum _FontOffsets with _WasmOffsets {
  baseSize,
  glyphCount,
  glyphPadding,
  texture,
  recs,
  glyphs,
}

class FontD extends StructDWeb<FontD> with FontBase<
  FontD,
  TextureD,
  RectangleD,
  GlyphInfoD,
  ImageD
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_FontOffsets> _o = .fromMap({
    .baseSize:     WasmSize.Int32,
    .glyphCount:   WasmSize.Int32,
    .glyphPadding: WasmSize.Int32,
    .texture:      TextureD.byteSize,
    .recs:         WasmSize.StructPointer,
    .glyphs:       WasmSize.StructPointer,
  });

  static WasmStructPointer<FontD> wasmPointer(int ptr) => .new(ptr, FontD.new, byteSize);
  static WasmStructPointerPointer<FontD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  int _baseSize;
  @override get baseSize {
    structOnOp((p) => _baseSize = p.readerAt(_o[.baseSize]).Int32());
    return _baseSize;
  }
  @override set baseSize(int value) {
    _baseSize = value;
    structOnOp((p) => p.writerAt(_o[.baseSize]).Int32(value));
  }

  int _glyphCount;
  @override get glyphCount {
    structOnOp((p) => _glyphCount = p.readerAt(_o[.glyphCount]).Int32());
    return _glyphCount;
  }
  @override set glyphCount(int value) {
    _glyphCount = value;
    structOnOp((p) => p.writerAt(_o[.glyphCount]).Int32(value));
  }

  int _glyphPadding;
  @override get glyphPadding {
    structOnOp((p) => _glyphPadding = p.readerAt(_o[.glyphPadding]).Int32());
    return _glyphPadding;
  }
  @override set glyphPadding(int value) {
    _glyphPadding = value;
    structOnOp((p) => p.writerAt(_o[.glyphPadding]).Int32(value));
  }

  TextureD _texture;
  @override get texture {
    structOnOp((p) => _texture.wasmReadFrom(p.readerAt(_o[.texture])));
    return _texture;
  }
  @override set texture(TextureD value) {
    _texture = value;
    structOnOp((p) => value.wasmWriteInto(p.writerAt(_o[.texture])));
  }

  late WasmLiveListPointerStruct<RectangleD> _recs;
  @override get recs {
    structOnOp((p) => _recs.ptr = RectangleD.wasmPointer(p.readerAt(_o[.recs]).pointer()));
    return _recs;
  }
  @override set recs(List<RectangleD> value) {
    assert(value.length <= glyphCount);
    structOnOp((p) => _recs.ptr = RectangleD.wasmPointer(p.readerAt(_o[.recs]).pointer()));
    _recs.inner = value;
  }

  late WasmLiveListPointerStruct<GlyphInfoD> _glyphs;
  @override get glyphs {
    structOnOp((p) => _glyphs.ptr = GlyphInfoD.wasmPointer(p.readerAt(_o[.glyphs]).pointer()));
    return _glyphs;
  }
  @override set glyphs(List<GlyphInfoD> value) {
    assert(value.length <= glyphCount);
    structOnOp((p) => _glyphs.ptr = GlyphInfoD.wasmPointer(p.readerAt(_o[.glyphs]).pointer()));
    _glyphs.inner = value;
  }

  @override
  int get wasmByteSize => byteSize;

  FontD({
    super.originalPointer,
    int baseSize = 0,
    int glyphCount = 0,
    int glyphPadding = 0,
    TextureD? texture,
    List<RectangleD>? recs,
    List<GlyphInfoD>? glyphs,
  }) :
    _baseSize = baseSize,
    _glyphCount = glyphCount,
    _glyphPadding = glyphPadding,
    _texture = texture ?? .new()
  {
    _recs = .new(
      recs ?? [],
      originalPointer == null ? null : RectangleD.wasmPointer(wasmReader(_o[.recs]).pointer())
    );

    _glyphs = .new(
      glyphs ?? [],
      originalPointer == null ? null : GlyphInfoD.wasmPointer(wasmReader(_o[.glyphs]).pointer())
    );
  }

  factory FontD.zero() => .new();

  @override
  FontD setD(FontD o) {
    baseSize = o.baseSize;
    glyphCount = o.glyphCount;
    glyphPadding = o.glyphPadding;
    texture.setD(o.texture);
    recs = .generate(o.glyphCount, (i) => o.recs[i]);
    glyphs = .generate(o.glyphCount, (i) => o.glyphs[i]);
    return this;
  }

  @override
  void structAllocateInto(RaylibTemp temp, WasmStructPointer<FontD> p, String key) {
    if (recs.isNotEmpty) _recs.ptr = temp.Rectangle$.Raw(recs.length);
    if (glyphs.isNotEmpty) _glyphs.ptr = temp.GlyphInfo$.Raw(glyphs.length);
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Int32(baseSize);
    writer.Int32(glyphCount);
    writer.Int32(glyphPadding);
    writer.struct(texture);
    writer.wasmptr(_recs.ptr);
    writer.wasmptr(_glyphs.ptr);

    _recs.onPointer((p) => p.writeArray(_recs.inner));
    _glyphs.onPointer((p) => p.writeArray(_glyphs.inner));
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    baseSize = reader.Int32();
    glyphCount = reader.Int32();
    glyphPadding = reader.Int32();
    reader.struct(texture);
    _recs.ptr = RectangleD.wasmPointer(reader.pointer());
    _glyphs.ptr = GlyphInfoD.wasmPointer(reader.pointer());

    _recs.onPointer((p) => recs = p.readArray(glyphCount));
    _glyphs.onPointer((p) => glyphs = p.readArray(glyphCount));
  }

  @override
  FontD clone() => .new(
    originalPointer: originalPointer,
    baseSize: baseSize,
    glyphCount: glyphCount,
    glyphPadding: glyphPadding,
    texture: texture.clone(),
    recs: recs.map((x) => x.clone()).toList(),
    glyphs: glyphs.map((x) => x.clone()).toList(),
  );
}