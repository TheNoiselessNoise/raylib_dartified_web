part of '../../../raylib_dartified_web.dart';

enum _MaterialMapOffsets with _WasmOffsets {
  texture,
  color,
  value,
}

class MaterialMapD extends StructDLiteralWeb<MaterialMapD> with MaterialMapBase<
  MaterialMapD,
  TextureD,
  ColorD
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_MaterialMapOffsets> _o = .fromMap({
    .texture: TextureD.byteSize,
    .color:   ColorD.byteSize,
    .value:   WasmSize.Float32,
  });

  static WasmStructPointer<MaterialMapD> wasmPointer(int ptr) => .new(ptr, MaterialMapD.new, byteSize);
  static WasmStructPointerPointer<MaterialMapD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  TextureD texture;
  
  @override
  ColorD color;
  
  @override
  double value;

  @override
  int get wasmByteSize => byteSize;

  MaterialMapD({
    super.originalPointer,
    TextureD? texture,
    ColorD? color,
    this.value = 0,
  }) :
    texture = texture ?? .zero(),
    color = color ?? .zero();

  factory MaterialMapD.zero() => .new();

  @override
  MaterialMapD setD(MaterialMapD o) {
    texture.setD(o.texture); 
    color.setD(o.color); 
    value = o.value;
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.struct(texture);
    writer.struct(color);
    writer.Float32(value);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    reader.struct(texture);
    reader.struct(color);
    value = reader.Float32();
  }

  @override
  MaterialMapD clone() => .new(
    originalPointer: originalPointer,
    texture: texture.clone(),
    color: color.clone(),
    value: value,
  );
}