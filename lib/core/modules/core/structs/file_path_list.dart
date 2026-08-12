part of '../../../raylib_dartified_web.dart';

enum _FilePathListOffsets with _WasmOffsets {
  count,
  paths,
}

class FilePathListD extends StructDViewWeb<FilePathListD> with FilePathListBase<FilePathListD> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_FilePathListOffsets> _o = .fromMap({
    .count: WasmSize.Uint32,
    .paths: WasmSize.Pointer,
  });
  
  static WasmStructPointer<FilePathListD> wasmPointer(int ptr) => .new(ptr, FilePathListD.new, byteSize);
  static WasmStructPointerPointer<FilePathListD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  FilePathListD({super.originalPointer});

  int? _cachedCount;
  List<String> _cachedPaths = [];

  int _count = 0;
  
  @override
  int get count => _count;

  @override
  List<String> get paths => _cachedPaths;

  @override
  void wasmReadFrom(WasmReader reader) {
    _count = reader.Uint32();
    if (_cachedCount != count) {
      _cachedCount = count;
      _cachedPaths = WasmStringPointerPointer(reader.pointer()).readStrings(count);
    }
  }

  @override
  FilePathListD clone() => .new(originalPointer: getOriginalPointer());
}