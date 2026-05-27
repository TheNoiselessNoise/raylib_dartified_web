part of '../../../raylib_dartified_web.dart';

enum _ShaderOffsets with _WasmOffsets {
  id,
  locs,
}

class ShaderD extends StructDWeb<ShaderD> with ShaderBase<ShaderD> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_ShaderOffsets> _o = .fromMap({
    .id:   WasmSize.Uint32,
    .locs: WasmSize.Int32Pointer,
  });

  static WasmStructPointer<ShaderD> wasmPointer(int ptr) => .new(ptr, ShaderD.new, byteSize);
  static WasmStructPointerPointer<ShaderD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  int _id;
  @override get id {
    structOnOp((p) => _id = p.readerAt(_o[.id]).Uint32());
    return _id;
  }
  @override set id(int value) {
    _id = value;
    structOnOp((p) => p.writerAt(_o[.id]).Uint32(value));
  }

  late WasmLiveListPointerInt32 _locs;
  @override get locs {
    structOnOp((p) => _locs.ptr = .new(p.readerAt(_o[.locs]).pointer()));
    return _locs;
  }
  @override set locs(List<int> value) {
    structOnOp((p) => _locs.ptr = .new(p.readerAt(_o[.locs]).pointer()));
    _locs.inner = value;
  }

  @override
  int get wasmByteSize => byteSize;

  ShaderD({
    super.originalPointer,
    int id = 0,
    List<int>? locs,
  }) :
    _id = id
  {
    _locs = .new(
      locs ?? .filled(shaderLocsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.locs]).pointer())
    );
  }

  factory ShaderD.zero() => .new();

  @override
  ShaderD setD(ShaderD o) {
    id = o.id;
    locs = .from(o.locs);
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Uint32(id);
    writer.wasmptr(_locs.ptr);

    _locs.onPointer((p) => p.writeArray(_locs.inner));
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    id = reader.Uint32();
    _locs.ptr = .new(reader.pointer());

    _locs.onPointer((p) => locs = p.readArray(shaderLocsCount));
  }

  @override
  ShaderD clone() => .new(
    originalPointer: originalPointer,
    id: id,
    locs: .from(locs),
  );
}