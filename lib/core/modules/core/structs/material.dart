part of '../../../raylib_dartified_web.dart';

enum _MaterialOffsets with _WasmOffsets {
  shader,
  maps,
  params
}

class MaterialD extends StructDWeb<MaterialD> with MaterialBase<
  MaterialD,
  ShaderD,
  MaterialMapD,
  TextureD,
  ColorD
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_MaterialOffsets> _o = .fromMap({
    .shader: ShaderD.byteSize,
    .maps:   WasmSize.StructPointer,
    .params: WasmSize.Float32 * MaterialBase.BASE_paramsCount,
  });

  static WasmStructPointer<MaterialD> wasmPointer(int ptr) => .new(ptr, MaterialD.new, byteSize);
  static WasmStructPointerPointer<MaterialD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  ShaderD _shader;
  @override get shader {
    structOnOp((p) => _shader.wasmReadFrom(p.readerAt(_o[.shader])));
    return _shader;
  }
  @override set shader(ShaderD value) {
    _shader = value;
    structOnOp((p) => value.wasmWriteInto(p.writerAt(_o[.shader])));
  }
  
  late WasmLiveListPointerStruct<MaterialMapD> _maps;
  @override get maps {
    structOnOp((p) => _maps.ptr = MaterialMapD.wasmPointer(p.readerAt(_o[.maps]).pointer()));
    return _maps;
  }
  @override set maps(List<MaterialMapD> value) {
    assert(value.length <= mapsCount);
    structOnOp((p) => _maps.ptr = MaterialMapD.wasmPointer(p.readerAt(_o[.maps]).pointer()));
    _maps.inner = value;
  }

  late WasmLiveListArrayFloat32 _params;
  @override get params {
    structOnOp((p) => _params.ptr = .new(p.readerAt(_o[.params]).pointer()));
    return _params;
  }
  @override set params(List<double> value) {
    assert(value.length <= paramsCount);
    structOnOp((p) => _params.ptr = .new(p.readerAt(_o[.params]).pointer()));
    _params.inner = value;
  }

  @override
  int get wasmByteSize => byteSize;

  MaterialD({
    super.originalPointer,
    ShaderD? shader,
    List<MaterialMapD>? maps,
    List<double>? params,
  }) :
    _shader = shader ?? .zero()
  {
    _maps = .new(
      maps ?? [],
      originalPointer == null ? null : MaterialMapD.wasmPointer(wasmReader(_o[.maps]).pointer())
    );

    _params = .new(
      params ?? .filled(paramsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.params]).pointer())
    );
  }

  factory MaterialD.zero() => .new();

  @override
  MaterialD setD(MaterialD o) {
    shader.setD(o.shader);
    maps = o.maps.map((x) => x.clone()).toList();
    params = .from(o.params);
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.struct(shader);
    writer.wasmptr(_maps.ptr);
    writer.Float32Array(_params.inner);

    _maps.onPointer((p) => p.writeArray(_maps.inner));
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    reader.struct(shader);
    _maps.ptr = MaterialMapD.wasmPointer(reader.pointer());
    params = reader.Float32Array(paramsCount);

    _maps.onPointer((p) => maps = p.readArray(mapsCount));
  }

  @override
  MaterialD clone() => .new(
    originalPointer: originalPointer,
    shader: shader.clone(),
    maps: maps.map((x) => x.clone()).toList(),
    params: .from(params),
  );
}