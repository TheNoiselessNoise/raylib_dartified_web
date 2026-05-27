part of '../../../raylib_dartified_web.dart';

enum _RenderTextureOffsets with _WasmOffsets {
  id,
  texture,
  depth,
}

class RenderTextureD extends StructDLiteralWeb<RenderTextureD> with RenderTextureBase<
  RenderTextureD,
  TextureD
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_RenderTextureOffsets> _o = .fromMap({
    .id:      WasmSize.Uint32,
    .texture: TextureD.byteSize,
    .depth:   TextureD.byteSize,
  });

  static WasmStructPointer<RenderTextureD> wasmPointer(int ptr) => .new(ptr, RenderTextureD.new, byteSize);
  static WasmStructPointerPointer<RenderTextureD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  int id;

  @override
  TextureD texture;
  
  @override
  TextureD depth;

  @override
  int get wasmByteSize => byteSize;

  RenderTextureD({
    super.originalPointer,
    this.id = 0,
    TextureD? texture,
    TextureD? depth,
  }) :
    texture = texture ?? .new(),
    depth = depth ?? .new();

  factory RenderTextureD.zero() => .new();

  @override
  RenderTextureD setD(RenderTextureD o) {
    id = o.id;
    texture = o.texture;
    depth = o.texture;
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Uint32(id);
    writer.struct(texture);
    writer.struct(depth);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    id = reader.Uint32();
    reader.struct(texture);
    reader.struct(depth);
  }

  @override
  RenderTextureD clone() => .new(
    originalPointer: originalPointer,
    id: id,
    texture: texture.clone(),
    depth: depth.clone(),
  );
}