part of '../../../raylib_dartified_web.dart';

enum _BoneInfoOffsets with _WasmOffsets {
  name,
  parent,
}

class BoneInfoD extends StructDLiteralWeb<BoneInfoD> with BoneInfoBase<BoneInfoD> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_BoneInfoOffsets> _o = .fromMap({
    .name:   WasmSize.Char * BoneInfoBase.BASE_nameLength,
    .parent: WasmSize.Int32,
  });

  static WasmStructPointer<BoneInfoD> wasmPointer(int ptr) => .new(ptr, BoneInfoD.new, byteSize);
  static WasmStructPointerPointer<BoneInfoD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  String name;

  @override
  int parent;

  @override
  int get wasmByteSize => byteSize;

  BoneInfoD({
    super.originalPointer,
    this.name = '',
    this.parent = 0,
  });

  factory BoneInfoD.zero() => .new();

  @override
  BoneInfoD setD(BoneInfoD o) {
    name = o.name;
    parent = o.parent;
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    assert(name.length <= nameLength);
    writer.charArray(name, nameLength);
    writer.Int32(parent);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    name = reader.charArray(nameLength);
    parent = reader.Int32();
  }

  @override
  BoneInfoD clone() => .new(
    originalPointer: originalPointer,
    name: name,
    parent: parent,
  );
}