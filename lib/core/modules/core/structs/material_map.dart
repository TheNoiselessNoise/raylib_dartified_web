part of '../../../raylib_dartified_web.dart';

enum _MaterialMapOffsets with _WasmOffsets {
  texture,
  color,
  value,
}

class MaterialMapD extends StructDWeb<MaterialMapD> with MaterialMapBase<
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

  TextureD _texture;
  @override get texture {
    structOnOp((p) => _texture.wasmReadFrom(p.readerAt(_o[.texture])));
    return _texture;
  }
  @override set texture(TextureD value) {
    _texture = value;
    structOnOp((p) => value.wasmWriteInto(p.writerAt(_o[.texture])));
  }

  ColorD _color;
  @override get color {
    structOnOp((p) => _color.wasmReadFrom(p.readerAt(_o[.color])));
    return _color;
  }
  @override set color(ColorD value) {
    _color = value;
    structOnOp((p) => value.wasmWriteInto(p.writerAt(_o[.color])));
  }

  double _value;
  @override get value {
    structOnOp((p) => _value = p.readerAt(_o[.value]).Float32());
    return _value;
  }
  @override set value(double value) {
    _value = value;
    structOnOp((p) => p.writerAt(_o[.value]).Float32(value));
  }
  
  MaterialMapD({
    super.originalPointer,
    TextureD? texture,
    ColorD? color,
    double value = 0,
  }) :
    _texture = texture ?? .zero(),
    _color = color ?? .zero(),
    _value = value;

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