part of '../raylib_dartified_web.dart';

abstract class WasmPointer<T> {
  // final _reader = WasmReader();
  // final _writer = WasmWriter();

  final int address;

  WasmPointer(this.address);

  WasmReader readerAt([int offset = 0]) => .new(address + offset);
  WasmWriter writerAt([int offset = 0]) => .new(address + offset);

  bool get isNull => address == 0;
  bool get isNotNull => address != 0;
  JSNumber get toJS => address.toJS;

  T get ref;

  set ref(T v) => throw StateError("You can't mutate the nullptr!");

  T operator [](int index) => throw StateError("You can't access the nullptr!");

  void operator []=(int index, T v) => throw StateError("You can't mutate the nullptr!");
}

abstract class WasmSizedPointer<T> extends WasmPointer<T> {
  final int byteSize;
  
  WasmSizedPointer(super.address, {required this.byteSize});

  // WasmReader _readerAt([int index = 0]) => _reader..reset(offset(index));
  // WasmWriter _writerAt([int index = 0]) => _writer..reset(offset(index));

  T get defaultValue;

  T get value => isNull ? defaultValue : ref;

  set value(T v) { if (isNotNull) this[0] = v; }

  int offset(int index) => address + index * byteSize;

  List<T> readArray(int count) => .generate(count, (i) => this[i]);

  void writeArray(List<T> array) {
    for (int i = 0; i < array.length; i++) {
      this[i] = array[i];
    }
  }
}

class WasmSizedPointerPointer<X, T extends WasmSizedPointer<X>> extends WasmSizedPointer<T> {
  final T Function(int ptr) innerPointerAt;

  WasmSizedPointerPointer(super.address, this.innerPointerAt) : super(
    byteSize: WasmSize.AnyPointer
  );

  @override
  T get defaultValue => innerPointerAt(0);

  @override
  T get ref => innerPointerAt(WasmReader().pointer());

  @override
  set ref(T v) => WasmWriter().pointer(v.address);

  @override
  T operator [](int index) => innerPointerAt(WasmReader(offset(index)).pointer());

  @override
  void operator []=(int index, T v) => WasmWriter(offset(index)).pointer(v.address);

  List<List<X>> readMatrix(int outerCount, int innerCount) => readArray(outerCount).map((p) => p.readArray(innerCount)).toList();

  List<List<X>> readJaggedMatrix(List<int> innerCounts) => .generate(innerCounts.length, (i) => this[i].readArray(innerCounts[i]));

  void writeMatrix(List<List<X>> matrix) {
    final ptrs = readArray(matrix.length);
    for (int i = 0; i < matrix.length; i++) {
      ptrs[i].writeArray(matrix[i]);
    }
  }
}

class WasmLiteralTypedPointerPointer<T, L extends TypedDataList> extends WasmSizedPointerPointer<T, WasmLiteralTypedPointer<T, L>> {
  WasmLiteralTypedPointerPointer(super.address, super.innerPointerAt);
}

abstract class WasmLiteralTypedPointer<T, L extends TypedDataList> extends WasmSizedPointer<T> {
  final T Function(WasmReader reader) readerFunc;
  final void Function(WasmWriter writer, T value) writerFunc;
  final T Function() defaultFunc;

  WasmLiteralTypedPointer(super.address, {
    required super.byteSize,
    required this.readerFunc,
    required this.writerFunc,
    required this.defaultFunc,
  });

  @override
  T get defaultValue => defaultFunc();

  @override
  T get ref => readerFunc(.new(address));

  @override
  set ref(T v) => writerFunc(.new(address), v);

  @override
  T operator [](int index) => readerFunc(.new(offset(index)));

  @override
  void operator []=(int index, T v) => writerFunc(.new(offset(index)), v);

  L get typedHeap;

  L view(int length);

  L readTypedArray(int count);

  void setAll(List<T> values) => typedHeap.setAll(address ~/ byteSize, values);
}

class WasmInt8Pointer extends WasmLiteralTypedPointer<int, Int8List> {
  WasmInt8Pointer(super.address) : super(
    byteSize: WasmSize.Int8,
    readerFunc: (reader) => reader.Int8(),
    writerFunc: (writer, v) => writer.Int8(v),
    defaultFunc: () => 0,
  );

  factory WasmInt8Pointer.nullptr() => .new(0);

  @override
  Int8List readTypedArray(int count) => .fromList(view(count));

  @override
  Int8List get typedHeap => WasmMemory.heapI8;

  @override
  Int8List view(int length) => .view(typedHeap.buffer, address, length);
}

class WasmInt16Pointer extends WasmLiteralTypedPointer<int, Int16List> {
  WasmInt16Pointer(super.address) : super(
    byteSize: WasmSize.Int16,
    readerFunc: (reader) => reader.Int16(),
    writerFunc: (writer, v) => writer.Int16(v),
    defaultFunc: () => 0,
  );

  factory WasmInt16Pointer.nullptr() => .new(0);

  @override
  Int16List readTypedArray(int count) => .fromList(readArray(count));

  @override
  Int16List get typedHeap => WasmMemory.heapI16;

  @override
  Int16List view(int length) => .view(typedHeap.buffer, address, length);
}

class WasmInt32Pointer extends WasmLiteralTypedPointer<int, Int32List> {
  WasmInt32Pointer(super.address) : super(
    byteSize: WasmSize.Int32,
    readerFunc: (reader) => reader.Int32(),
    writerFunc: (writer, v) => writer.Int32(v),
    defaultFunc: () => 0,
  );

  factory WasmInt32Pointer.nullptr() => .new(0);

  @override
  Int32List readTypedArray(int count) => .fromList(readArray(count));

  @override
  Int32List get typedHeap => WasmMemory.heapI32;

  @override
  Int32List view(int length) => .view(typedHeap.buffer, address, length);
}

class WasmInt64Pointer extends WasmLiteralTypedPointer<int, Int64List> {
  WasmInt64Pointer(super.address) : super(
    byteSize: WasmSize.Int64,
    readerFunc: (reader) => reader.Int64(),
    writerFunc: (writer, v) => writer.Int64(v),
    defaultFunc: () => 0,
  );

  factory WasmInt64Pointer.nullptr() => .new(0);

  @override
  Int64List readTypedArray(int count) => .fromList(readArray(count));

  @override
  Int64List get typedHeap => WasmMemory.heapI64;

  @override
  Int64List view(int length) => .view(typedHeap.buffer, address, length);
}

class WasmUint8Pointer extends WasmLiteralTypedPointer<int, Uint8List> {
  WasmUint8Pointer(super.address) : super(
    byteSize: WasmSize.Uint8,
    readerFunc: (reader) => reader.Uint8(),
    writerFunc: (writer, v) => writer.Uint8(v),
    defaultFunc: () => 0,
  );

  factory WasmUint8Pointer.nullptr() => .new(0);

  @override
  Uint8List readTypedArray(int count) => .fromList(readArray(count));

  @override
  Uint8List get typedHeap => WasmMemory.heapU8;

  @override
  Uint8List view(int length) => .view(typedHeap.buffer, address, length);
}

class WasmUint16Pointer extends WasmLiteralTypedPointer<int, Uint16List> {
  WasmUint16Pointer(super.address) : super(
    byteSize: WasmSize.Uint16,
    readerFunc: (reader) => reader.Uint16(),
    writerFunc: (writer, v) => writer.Uint16(v),
    defaultFunc: () => 0,
  );

  factory WasmUint16Pointer.nullptr() => .new(0);
  @override
  Uint16List readTypedArray(int count) => .fromList(readArray(count));

  @override
  Uint16List get typedHeap => WasmMemory.heapU16;

  @override
  Uint16List view(int length) => .view(typedHeap.buffer, address, length);
}

class WasmUint32Pointer extends WasmLiteralTypedPointer<int, Uint32List> {
  WasmUint32Pointer(super.address) : super(
    byteSize: WasmSize.Uint32,
    readerFunc: (reader) => reader.Uint32(),
    writerFunc: (writer, v) => writer.Uint32(v),
    defaultFunc: () => 0,
  );

  factory WasmUint32Pointer.nullptr() => .new(0);
  @override
  Uint32List readTypedArray(int count) => .fromList(readArray(count));

  @override
  Uint32List get typedHeap => WasmMemory.heapU32;

  @override
  Uint32List view(int length) => .view(typedHeap.buffer, address, length);
}

class WasmUint64Pointer extends WasmLiteralTypedPointer<int, Uint64List> {
  WasmUint64Pointer(super.address) : super(
    byteSize: WasmSize.Uint64,
    readerFunc: (reader) => reader.Uint64(),
    writerFunc: (writer, v) => writer.Uint64(v),
    defaultFunc: () => 0,
  );

  factory WasmUint64Pointer.nullptr() => .new(0);

  @override
  Uint64List readTypedArray(int count) => .fromList(readArray(count));

  @override
  Uint64List get typedHeap => WasmMemory.heapU64;

  @override
  Uint64List view(int length) => .view(typedHeap.buffer, address, length);
}

class WasmFloat32Pointer extends WasmLiteralTypedPointer<double, Float32List> {
  WasmFloat32Pointer(super.address) : super(
    byteSize: WasmSize.Float32,
    readerFunc: (reader) => reader.Float32(),
    writerFunc: (writer, v) => writer.Float32(v),
    defaultFunc: () => 0,
  );

  factory WasmFloat32Pointer.nullptr() => .new(0);
  
  @override
  Float32List readTypedArray(int count) => .fromList(readArray(count));

  @override
  Float32List get typedHeap => WasmMemory.heapF32;

  @override
  Float32List view(int length) => .view(typedHeap.buffer, address, length);
}

class WasmFloat64Pointer extends WasmLiteralTypedPointer<double, Float64List> {
  WasmFloat64Pointer(super.address) : super(
    byteSize: WasmSize.Float64,
    readerFunc: (reader) => reader.Float64(),
    writerFunc: (writer, v) => writer.Float64(v),
    defaultFunc: () => 0,
  );

  factory WasmFloat64Pointer.nullptr() => .new(0);

  @override
  Float64List readTypedArray(int count) => .fromList(readArray(count));

  @override
  Float64List get typedHeap => WasmMemory.heapF64;

  @override
  Float64List view(int length) => .view(typedHeap.buffer, address, length);
}

class WasmBoolPointer extends WasmSizedPointer<bool> {
  WasmBoolPointer(super.address) : super(byteSize: WasmSize.Int32);

  factory WasmBoolPointer.nullptr() => .new(0);

  @override
  bool get defaultValue => false;

  @override
  bool get ref => WasmReader(address).boolean();

  @override
  set ref(bool v) => WasmWriter(address).boolean(v);

  @override
  bool operator [](int index) => WasmReader(offset(index)).boolean();

  @override
  void operator []=(int index, bool v) => WasmWriter(offset(index)).boolean(v);
}

class WasmStructPointerPointer<T extends StructDWeb<T>> extends WasmSizedPointerPointer<T, WasmStructPointer<T>> {
  WasmStructPointerPointer(super.address, super.innerPointerAt);
}

class WasmStructPointer<T extends StructDWeb<T>> extends WasmSizedPointer<T> {
  final T Function() factory;

  WasmStructPointer(super.address, this.factory, int byteSize) : super(
    byteSize: byteSize
  );

  @override
  T get defaultValue => factory();
  
  // single item
  @override
  T get ref {
    final item = factory();
    item.originalPointer = .new(address, factory, byteSize);
    item.wasmReadFrom(WasmReader(address));
    return item;
  }

  @override
  set ref(T v) => v.wasmWriteInto(WasmWriter(address));

  T owned(int index) {
    final item = factory();
    final itemPtr = offset(index);
    item.originalPointer ??= .new(itemPtr, factory, byteSize);
    item.wasmReadFrom(WasmReader(itemPtr));
    return item;
  }

  // array access
  @override
  T operator [](int index) => factory()..wasmReadFrom(WasmReader(offset(index)));

  @override
  void operator []=(int index, T v) => v.wasmWriteInto(WasmWriter(offset(index)));

  @override
  List<T> readArray(int count, {bool owned = false}) => .generate(count, (i) => owned ? this.owned(i) : this[i]);

  @override
  void writeArray(List<T> array) {
    for (int i = 0; i < array.length; i++) {
      this[i] = array[i];
    }
  }
}

class WasmStringPointer extends WasmSizedPointer<String> {
  WasmStringPointer(super.address) : super(
    byteSize: WasmSize.Uint8
  );

  factory WasmStringPointer.nullptr() => .new(0);

  @override
  String get defaultValue => '';

  @override
  String get ref => WasmMemory.readString(address);

  @override
  set ref(String v) => WasmMemory.writeString(address, v);

  @override
  String operator [](int index) => .fromCharCode(WasmReader(address + index).Uint8());

  @override
  void operator []=(int index, String v) {
    assert(v.length == 1);
    WasmWriter(address + index).Uint8(v.codeUnitAt(0));
  }
}

class WasmStringPointerPointer extends WasmSizedPointer<WasmStringPointer> {
  WasmStringPointerPointer(super.address) : super(
    byteSize: WasmSize.AnyPointer
  );

  factory WasmStringPointerPointer.nullptr() => .new(0);

  @override
  WasmStringPointer get defaultValue => .nullptr();

  @override
  WasmStringPointer get ref => .new(WasmReader(address).Uint32());

  @override
  set ref(WasmStringPointer v) => WasmWriter(address).Uint32(v.address);

  @override
  WasmStringPointer operator [](int index) => .new(WasmReader(offset(index)).Uint32());

  @override
  void operator []=(int index, WasmStringPointer v) => WasmWriter(offset(index)).Uint32(v.address);

  // convenience, skip the pointer layer
  List<String> readStrings(int count) => readArray(count).map((p) => p.value).toList();

  void writeStrings(List<String> strings) {
    for (int i = 0; i < strings.length; i++) {
      this[i].ref = strings[i];
    }
  }
}

abstract class WasmAlloc<
  T, P extends WasmPointer<T>
> extends RaylibTempAllocatorBase<
  RaylibTemp, P, int
> {
  WasmAlloc(super.temp, super.name, {
    required super.byteSize,
    required super.pointerFactory,
    required super.printerFunc,
  }) : super(
    allocatorFunc: ([count = 1]) => WasmMemory.malloc(byteSize*count),
    freeFunc: (ptr) => WasmMemory.free(ptr),
    nullptrFactory: () => pointerFactory(0),
    pointerToSource: (ptr) => ptr.address,
    isPointerNull:(ptr) => ptr.isNull,
  );
}

class WasmLitAlloc<
  X, P extends WasmSizedPointer<X>
> extends WasmAlloc<
  X, P
> with RaylibTempLiteralAllocatorBase<
  RaylibTemp, X, P, int
> {
  
  @override
  late Function(P ptr, int i, X value) indexSetterFunc;

  @override
  late Function(P ptr, X value) literalSetterFunc;
  
  WasmLitAlloc(super.temp, super.name, {
    required super.byteSize,
    required super.pointerFactory,
    required super.printerFunc,
  }) {
    indexSetterFunc = (ptr, i, value) => ptr[i] = value;
    literalSetterFunc = (ptr, value) => ptr.value = value;
  }
}

class WasmLitTypedListAlloc<
  D, L extends TypedDataList, P extends WasmSizedPointer<D>
> extends WasmLitAlloc<
  D, P
> with RaylibTempLiteralTypedListAllocatorBase<
  RaylibTemp, D, L, P, int
> {

  @override
  late final List<D> Function(int ptr, int length) asDartList;

  @override
  late final L Function(int ptr, int length) asTypedList;

  @override
  final L Function(Iterable<D> list) fromList;

  @override
  final L Function(int ptr, int length) asView;
  
  @override
  final L Function(ByteBuffer buffer, int offsetInBytes, int length) fromBuffer;

  WasmLitTypedListAlloc(super.temp, super.name, {
    required super.byteSize,
    required super.pointerFactory,
    required this.fromList,
    required this.asView,
    required this.fromBuffer,
  }) : super(
    printerFunc: (ptr) => ptr.value.toString(),
  ) {
    asDartList = (ptr, length) => asView(ptr, length).toList().cast();
    asTypedList = (ptr, length) => fromList(asDartList(ptr, length));
  }
}

class WasmLitIntAlloc<
  L extends TypedDataList, P extends WasmSizedPointer<int>
> extends WasmLitTypedListAlloc<
  num, L, P
> with RaylibTempLiteralIntAllocatorBase<
  RaylibTemp, L, P, int
> {
  WasmLitIntAlloc(super.temp, super.name, {
    required super.byteSize,
    required super.pointerFactory,
    required super.fromList,
    required super.asView,
    required super.fromBuffer,
  });
}

class WasmLitFloatAlloc<
  L extends TypedDataList, P extends WasmSizedPointer<double>
> extends WasmLitTypedListAlloc<
  num, L, P
> with RaylibTempLiteralFloatAllocatorBase<
  RaylibTemp, L, P, int
> {
  WasmLitFloatAlloc(super.temp, super.name, {
    required super.byteSize,
    required super.pointerFactory,
    required super.fromList,
    required super.asView,
    required super.fromBuffer,
  });
}

class WasmLitPtrAlloc<
  X, PP extends WasmSizedPointer<WasmSizedPointer<X>>
> extends WasmAlloc<
  WasmSizedPointer<X>, PP
> with RaylibTempLiteralPointerAllocatorBase<
  RaylibTemp, X, PP, WasmSizedPointer<X>, int
> {
  @override
  final WasmSizedPointer<X> Function(List<X> array) rawArrayFunc;

  @override
  late final Function(PP ptrptr, int i, WasmSizedPointer<X> ptr) indexSetterFunc;

  WasmLitPtrAlloc(super.temp, super.name, {
    required super.pointerFactory,
    required this.rawArrayFunc,
  }) : super(
    byteSize: WasmSize.AnyPointer,
    printerFunc: (ptr) => 'We can\'t print Pointer<Pointer<$X>> at this level',
  ) {
    indexSetterFunc = (ptrptr, i, ptr) => ptrptr[i] = ptr;
  }
}

class WasmStructAlloc<
  T extends StructDWeb<T>
> extends WasmAlloc<
  T, WasmStructPointer<T>
> with RaylibTempStructAllocatorBase<
  RaylibTemp, T, T, WasmStructPointer<T>, int
> {
  final T Function() factory;

  @override
  late final T Function(WasmStructPointer<T> ptr) refFunc;

  @override
  late final WasmStructPointer<T> Function(WasmStructPointer<T> ptr, T value) setRefFunc;

  @override
  late final void Function(WasmStructPointer<T> ptr, int i, T value) writeIntoIndexedFunc;
  
  @override
  late final void Function(WasmStructPointer<T> ptr, T value) writeIntoFunc;

  @override
  late final void Function(WasmStructPointer<T> ptr, int i, T value) setCFunc;
  
  @override
  late final T Function(WasmStructPointer<T> ptr, int i) indexerFunc;
  
  @override
  late final void Function(WasmStructPointer<T> ptr, int i, T value) indexSetterFunc;

  @override
  late final T Function(WasmStructPointer<T> ptr) pointerToStruct;

  @override
  late final void Function(WasmStructPointer<T> ptr, T source) updateFunc;

  WasmStructAlloc(super.temp, super.name, {
    required super.byteSize,
    required this.factory,
  }) : super(
    pointerFactory: (ptr) => .new(ptr, factory, byteSize),
    printerFunc: (ptr) => ptr.ref.signature(),
  ) {
    refFunc = (ptr) => ptr.ref;
    setRefFunc = (ptr, value) => ptr..ref = value;
    writeIntoIndexedFunc = (ptr, i, v) => ptr[i] = v;
    writeIntoFunc = (ptr, v) => ptr.ref = v;
    setCFunc = (ptr, i, value) => ptr[i] = value;
    indexerFunc = (ptr, i) => ptr[i];
    indexSetterFunc = (ptr, i, value) => ptr[i] = value;
    pointerToStruct = (ptr) => ptr.ref;
    updateFunc = (ptr, source) => source.wasmReadFrom(WasmReader(ptr.address));
  }
}

class WasmStructPtrAlloc<
  T extends StructDWeb<T>
> extends WasmAlloc<
  WasmStructPointer<T>, WasmStructPointerPointer<T>
> with RaylibTempStructPointerAllocatorBase<
  RaylibTemp, T, WasmStructPointerPointer<T>, WasmStructPointer<T>, int
> {

  @override
  final WasmStructPointer<T> Function([T?, String?]) valueFunc;

  @override
  final WasmStructPointer<T> Function(List<T> array) rawArrayFunc;

  @override
  late final void Function(WasmStructPointerPointer<T> ptr, int i, WasmStructPointer<T> value) indexSetterFunc;

  WasmStructPtrAlloc(super.temp, super.name, {
    required this.valueFunc,
    required this.rawArrayFunc,
    required super.pointerFactory,
  }) : super(
    byteSize: WasmSize.AnyPointer,
    printerFunc: (ptr) => 'We can\'t print Pointer<Pointer<$T>> at this level',
  ) {
    indexSetterFunc = (ptr, i, value) => ptr[i] = value;
  }
}

class WasmStringAlloc extends WasmAlloc<
  String, WasmStringPointer
> with RaylibTempStringAllocatorBase<
  RaylibTemp, WasmStringPointerPointer, WasmStringPointer, int
> {
  @override final int slotCount;

  @override
  int get ptrByteSize => WasmSize.AnyPointer;

  @override
  late final void Function(WasmStringPointerPointer ptr) freePPFunc;

  @override
  late final WasmStringPointerPointer Function(int count) ptrAllocatorFunc;

  @override
  late final void Function(WasmStringPointerPointer ptrptr, int i, WasmStringPointer ptr) indexSetterFunc;

  WasmStringAlloc(super.temp, super.name, {
    required this.slotCount,
  }) : super(
    byteSize: WasmSize.AnyPointer,
    pointerFactory: WasmStringPointer.new,
    printerFunc: (ptr) => ptr.ref,
  ) {
    reset();
    freePPFunc = (ptr) => WasmMemory.free(ptr.address);
    ptrAllocatorFunc = (count) => .new(WasmMemory.malloc(ptrByteSize*count));
    indexSetterFunc = (ptrptr, i, ptr) => ptrptr[i] = ptr;
  }

  @override
  int Length(String text, [int? bufferSize]) {
    return bufferSize ?? WasmMemory.lengthBytesUTF8(text) + 1;
  }

  @override
  WasmStringPointer writeToSlot(int slot, String text, [int? bufferSize]) {
    final requiredBytes = Length(text, bufferSize);

    reallocSlotIfRequired(slot, requiredBytes);

    WasmMemory.stringToUTF8(text, stringSlots[slot].address, requiredBytes);
    return WasmStringPointer(stringSlots[slot].address);
  }
}

class WasmWriter {
  int _cur;
  int get cursor => _cur;
  WasmWriter([int ptr = 0]) : _cur = ptr;

  void reset([int? ptr]) => _cur = ptr ?? _cur;

  void    Int8(int    v, [int? at]) { reset(at); WasmMemory.heapI8 [_cur     ] = v; _cur += WasmSize.Int8; }
  void   Uint8(int    v, [int? at]) { reset(at); WasmMemory.heapU8 [_cur     ] = v; _cur += WasmSize.Uint8; }
  void   Int16(int    v, [int? at]) { reset(at); WasmMemory.heapI16[_cur >> 1] = v; _cur += WasmSize.Int16; }
  void  Uint16(int    v, [int? at]) { reset(at); WasmMemory.heapU16[_cur >> 1] = v; _cur += WasmSize.Uint16; }
  void   Int32(int    v, [int? at]) { reset(at); WasmMemory.heapI32[_cur >> 2] = v; _cur += WasmSize.Int32; }
  void  Uint32(int    v, [int? at]) { reset(at); WasmMemory.heapU32[_cur >> 2] = v; _cur += WasmSize.Uint32; }
  void   Int64(int    v, [int? at]) { reset(at); WasmMemory.heapI64[_cur >> 3] = v; _cur += WasmSize.Int64; }
  void  Uint64(int    v, [int? at]) { reset(at); WasmMemory.heapU64[_cur >> 3] = v; _cur += WasmSize.Uint64; }
  void Float32(double v, [int? at]) { reset(at); WasmMemory.heapF32[_cur >> 2] = v; _cur += WasmSize.Float32; }
  void Float64(double v, [int? at]) { reset(at); WasmMemory.heapF64[_cur >> 3] = v; _cur += WasmSize.Float64; }

  void    Int8Array(List<int>    v, [int? at]) { reset(at); WasmMemory.heapI8 .setAll(_cur,      v); _cur += v.length * WasmSize.Int8; }
  void   Uint8Array(List<int>    v, [int? at]) { reset(at); WasmMemory.heapU8 .setAll(_cur,      v); _cur += v.length * WasmSize.Uint8; }
  void   Int16Array(List<int>    v, [int? at]) { reset(at); WasmMemory.heapI16.setAll(_cur >> 1, v); _cur += v.length * WasmSize.Int16; }
  void  Uint16Array(List<int>    v, [int? at]) { reset(at); WasmMemory.heapU16.setAll(_cur >> 1, v); _cur += v.length * WasmSize.Uint16; }
  void   Int32Array(List<int>    v, [int? at]) { reset(at); WasmMemory.heapI32.setAll(_cur >> 2, v); _cur += v.length * WasmSize.Int32; }
  void  Uint32Array(List<int>    v, [int? at]) { reset(at); WasmMemory.heapU32.setAll(_cur >> 2, v); _cur += v.length * WasmSize.Uint32; }
  void   Int64Array(List<int>    v, [int? at]) { reset(at); WasmMemory.heapI64.setAll(_cur >> 3, v); _cur += v.length * WasmSize.Int64; }
  void  Uint64Array(List<int>    v, [int? at]) { reset(at); WasmMemory.heapU64.setAll(_cur >> 3, v); _cur += v.length * WasmSize.Uint64; }
  void Float32Array(List<double> v, [int? at]) { reset(at); WasmMemory.heapF32.setAll(_cur >> 2, v); _cur += v.length * WasmSize.Float32; }
  void Float64Array(List<double> v, [int? at]) { reset(at); WasmMemory.heapF64.setAll(_cur >> 3, v); _cur += v.length * WasmSize.Float64; }

  void wasmptr([WasmPointer? ptr]) => Uint32(ptr?.address ?? 0);
  void pointer(int ptr) => Uint32(ptr);

  void boolean(bool v) => Int32(v ? 1 : 0);

  void struct<T extends StructDWeb<T>>(T v) => v.wasmWriteInto(this);

  void structArray<T extends StructDWeb<T>>(List<T> array, WasmStructPointer<T> Function(int ptr) pointerFactory) {
    final ptr = pointerFactory(_cur);
    ptr.writeArray(array);
    _cur += ptr.byteSize * array.length;
  }

  void string(String str) {
    final len = WasmMemory.lengthBytesUTF8(str);
    WasmMemory.stringToUTF8(str, _cur, len + 1); // +1 for null terminator
    _cur += len + 1;
  }

  void charArray(String value, int length) {
    final encoded = utf8.encode(value);
    final writeLen = encoded.length.clamp(0, length - 1);
    for (int i = 0; i < writeLen; i++) {
      WasmMemory.writeUint8(_cur, i, encoded[i]);
    }
    WasmMemory.writeUint8(_cur, writeLen, 0); // null terminator
    _cur += length;
  }
}

class WasmReader {
  int _cur;
  int get cursor => _cur;
  WasmReader([int ptr = 0]) : _cur = ptr;

  void reset([int? ptr]) => _cur = ptr ?? _cur;

  int       Int8([int? at]) { reset(at); final v = WasmMemory.heapI8 [_cur     ]; _cur += WasmSize.Int8; return v; }
  int      Uint8([int? at]) { reset(at); final v = WasmMemory.heapU8 [_cur     ]; _cur += WasmSize.Uint8; return v; }
  int      Int16([int? at]) { reset(at); final v = WasmMemory.heapI16[_cur >> 1]; _cur += WasmSize.Int16; return v; }
  int     Uint16([int? at]) { reset(at); final v = WasmMemory.heapU16[_cur >> 1]; _cur += WasmSize.Uint16; return v; }
  int      Int32([int? at]) { reset(at); final v = WasmMemory.heapI32[_cur >> 2]; _cur += WasmSize.Int32; return v; }
  int     Uint32([int? at]) { reset(at); final v = WasmMemory.heapU32[_cur >> 2]; _cur += WasmSize.Uint32; return v; }
  int      Int64([int? at]) { reset(at); final v = WasmMemory.heapI64[_cur >> 3]; _cur += WasmSize.Int64; return v; }
  int     Uint64([int? at]) { reset(at); final v = WasmMemory.heapU64[_cur >> 3]; _cur += WasmSize.Uint64; return v; }
  double Float32([int? at]) { reset(at); final v = WasmMemory.heapF32[_cur >> 2]; _cur += WasmSize.Float32; return v; }
  double Float64([int? at]) { reset(at); final v = WasmMemory.heapF64[_cur >> 3]; _cur += WasmSize.Float64; return v; }

  List<int>       Int8Array(int n, [int? at]) { reset(at); final v = WasmMemory.heapI8 .sublist(_cur,       _cur + n      ); _cur += n * WasmSize.Int8; return v; }
  List<int>      Uint8Array(int n, [int? at]) { reset(at); final v = WasmMemory.heapU8 .sublist(_cur,       _cur + n      ); _cur += n * WasmSize.Uint8; return v; }
  List<int>      Int16Array(int n, [int? at]) { reset(at); final v = WasmMemory.heapI16.sublist(_cur >> 1, (_cur >> 1) + n); _cur += n * WasmSize.Int16; return v; }
  List<int>     Uint16Array(int n, [int? at]) { reset(at); final v = WasmMemory.heapU16.sublist(_cur >> 1, (_cur >> 1) + n); _cur += n * WasmSize.Uint16; return v; }
  List<int>      Int32Array(int n, [int? at]) { reset(at); final v = WasmMemory.heapI32.sublist(_cur >> 2, (_cur >> 2) + n); _cur += n * WasmSize.Int32; return v; }
  List<int>     Uint32Array(int n, [int? at]) { reset(at); final v = WasmMemory.heapU32.sublist(_cur >> 2, (_cur >> 2) + n); _cur += n * WasmSize.Uint32; return v; }
  List<int>      Int64Array(int n, [int? at]) { reset(at); final v = WasmMemory.heapI64.sublist(_cur >> 3, (_cur >> 3) + n); _cur += n * WasmSize.Int64; return v; }
  List<int>     Uint64Array(int n, [int? at]) { reset(at); final v = WasmMemory.heapU64.sublist(_cur >> 3, (_cur >> 3) + n); _cur += n * WasmSize.Uint64; return v; }
  List<double> Float32Array(int n, [int? at]) { reset(at); final v = WasmMemory.heapF32.sublist(_cur >> 2, (_cur >> 2) + n); _cur += n * WasmSize.Float32; return v; }
  List<double> Float64Array(int n, [int? at]) { reset(at); final v = WasmMemory.heapF64.sublist(_cur >> 3, (_cur >> 3) + n); _cur += n * WasmSize.Float64; return v; }

  Int8List       Int8TypedArray(int n, [int? at]) { reset(at); final v = Int8List.fromList   (WasmMemory.heapI8 .sublist(_cur,       _cur + n      )); _cur += n * WasmSize.Int8; return v; }
  Uint8List     Uint8TypedArray(int n, [int? at]) { reset(at); final v = Uint8List.fromList  (WasmMemory.heapU8 .sublist(_cur,       _cur + n      )); _cur += n * WasmSize.Uint8; return v; }
  Int16List     Int16TypedArray(int n, [int? at]) { reset(at); final v = Int16List.fromList  (WasmMemory.heapI16.sublist(_cur >> 1, (_cur >> 1) + n)); _cur += n * WasmSize.Int16; return v; }
  Uint16List   Uint16TypedArray(int n, [int? at]) { reset(at); final v = Uint16List.fromList (WasmMemory.heapU16.sublist(_cur >> 1, (_cur >> 1) + n)); _cur += n * WasmSize.Uint16; return v; }
  Int32List     Int32TypedArray(int n, [int? at]) { reset(at); final v = Int32List.fromList  (WasmMemory.heapI32.sublist(_cur >> 2, (_cur >> 2) + n)); _cur += n * WasmSize.Int32; return v; }
  Uint32List   Uint32TypedArray(int n, [int? at]) { reset(at); final v = Uint32List.fromList (WasmMemory.heapU32.sublist(_cur >> 2, (_cur >> 2) + n)); _cur += n * WasmSize.Uint32; return v; }
  Int64List     Int64TypedArray(int n, [int? at]) { reset(at); final v = Int64List.fromList  (WasmMemory.heapI64.sublist(_cur >> 3, (_cur >> 3) + n)); _cur += n * WasmSize.Int64; return v; }
  Uint64List   Uint64TypedArray(int n, [int? at]) { reset(at); final v = Uint64List.fromList (WasmMemory.heapU64.sublist(_cur >> 3, (_cur >> 3) + n)); _cur += n * WasmSize.Uint64; return v; }
  Float32List Float32TypedArray(int n, [int? at]) { reset(at); final v = Float32List.fromList(WasmMemory.heapF32.sublist(_cur >> 2, (_cur >> 2) + n)); _cur += n * WasmSize.Float32; return v; }
  Float64List Float64TypedArray(int n, [int? at]) { reset(at); final v = Float64List.fromList(WasmMemory.heapF64.sublist(_cur >> 3, (_cur >> 3) + n)); _cur += n * WasmSize.Float64; return v; }

  WasmInt8Pointer       Int8Pointer() => .new(pointer());
  WasmUint8Pointer     Uint8Pointer() => .new(pointer());
  WasmInt16Pointer     Int16Pointer() => .new(pointer());
  WasmUint16Pointer   Uint16Pointer() => .new(pointer());
  WasmInt32Pointer     Int32Pointer() => .new(pointer());
  WasmUint32Pointer   Uint32Pointer() => .new(pointer());
  WasmInt64Pointer     Int64Pointer() => .new(pointer());
  WasmUint64Pointer   Uint64Pointer() => .new(pointer());
  WasmFloat32Pointer Float32Pointer() => .new(pointer());
  WasmFloat64Pointer Float64Pointer() => .new(pointer());

  int pointer() => Uint32();

  bool boolean() => Int32() != 0;

  void struct<T extends StructDWeb<T>>(T v) => v.wasmReadFrom(this);

  List<T> structArray<T extends StructDWeb<T>>(int count, WasmStructPointer<T> Function(int ptr) pointerFactory, {bool owned = false}) {
    final result = pointerFactory(_cur).readArray(count, owned: owned);
    if (result.isNotEmpty) _cur += count * result.first.wasmByteSize;
    return result;
  }

  String string() { // null terminated
    final str = WasmStringPointer(_cur).ref;
    _cur += WasmMemory.lengthBytesUTF8(str) + 1;
    return str;
  }

  List<String> stringArray(int count) {
    final ptr = WasmStringPointer(Uint32());
    return .generate(count, (i) => ptr[i]);
  }

  String charArray(int length) {
    final ptr = _cur;
    _cur += length;
    final bytes = WasmMemory.heapU8.sublist(ptr, ptr + length);
    final nullTerm = bytes.indexOf(0);
    return utf8.decode(nullTerm == -1 ? bytes : bytes.sublist(0, nullTerm));
  }
}

class WasmSize {
  static const int Int8    = 1;
  static const int Uint8   = 1;
  static const int Int16   = 2;
  static const int Uint16  = 2;
  static const int Int32   = 4;
  static const int Uint32  = 4;
  static const int Int64   = 8;
  static const int Uint64  = 8;
  static const int Float32 = 4;
  static const int Float64 = 8;
  static const int Char    = Uint8;
  static const int Boolean = Int32;

  // just for better readability
  static const int AnyPointer     = Uint32;
  static const int StructPointer  = Uint32;
  static const int Int8Pointer    = Uint32;
  static const int Uint8Pointer   = Uint32;
  static const int Int16Pointer   = Uint32;
  static const int Uint16Pointer  = Uint32;
  static const int Int32Pointer   = Uint32;
  static const int Uint32Pointer  = Uint32;
  static const int Int64Pointer   = Uint32;
  static const int Uint64Pointer  = Uint32;
  static const int Float32Pointer = Uint32;
  static const int Float64Pointer = Uint32;
  static const int CharPointer    = Uint32;
  static const int BooleanPointer = Uint32;
}

class WasmMemory {
  static Int8List    get heapI8  => .view(_heap8.buffer.toDart);
  static Uint8List   get heapU8  => .view(_heapu8.buffer.toDart);
  static Int16List   get heapI16 => .view(_heap16.buffer.toDart);
  static Uint16List  get heapU16 => .view(_heapu16.buffer.toDart);
  static Int32List   get heapI32 => .view(_heap32.buffer.toDart);
  static Uint32List  get heapU32 => .view(_heapu32.buffer.toDart);
  static Int64List   get heapI64 => .view(_heap64.buffer.toDart);
  static Uint64List  get heapU64 => .view(_heapu64.buffer.toDart);
  static Float32List get heapF32 => .view(_heapf32.buffer.toDart);
  static Float64List get heapF64 => .view(_heapf64.buffer.toDart);

  static void    writeInt8(int ptr, int offset, int value)    => heapI8[ptr + offset] = value;
  static void   writeUint8(int ptr, int offset, int value)    => heapU8[ptr + offset] = value;
  static void   writeInt16(int ptr, int offset, int value)    => heapI16[(ptr >> 1) + offset] = value;
  static void  writeUint16(int ptr, int offset, int value)    => heapU16[(ptr >> 1) + offset] = value;
  static void   writeInt32(int ptr, int offset, int value)    => heapI32[(ptr >> 2) + offset] = value;
  static void  writeUint32(int ptr, int offset, int value)    => heapU32[(ptr >> 2) + offset] = value;
  static void   writeInt64(int ptr, int offset, int value)    => heapI64[(ptr >> 3) + offset] = value;
  static void  writeUint64(int ptr, int offset, int value)    => heapU64[(ptr >> 3) + offset] = value;
  static void writeFloat32(int ptr, int offset, double value) => heapF32[(ptr >> 2) + offset] = value;
  static void writeFloat64(int ptr, int offset, double value) => heapF64[(ptr >> 3) + offset] = value;

  static int       readInt8(int ptr, [int offset = 0]) => heapI8[ptr + offset];
  static int      readUint8(int ptr, [int offset = 0]) => heapU8[ptr + offset];
  static int      readInt16(int ptr, [int offset = 0]) => heapI16[(ptr >> 1) + offset];
  static int     readUint16(int ptr, [int offset = 0]) => heapU16[(ptr >> 1) + offset];
  static int      readInt32(int ptr, [int offset = 0]) => heapI32[(ptr >> 2) + offset];
  static int     readUint32(int ptr, [int offset = 0]) => heapU32[(ptr >> 2) + offset];
  static int      readInt64(int ptr, [int offset = 0]) => heapI64[(ptr >> 3) + offset];
  static int     readUint64(int ptr, [int offset = 0]) => heapU64[(ptr >> 3) + offset];
  static double readFloat32(int ptr, [int offset = 0]) => heapF32[(ptr >> 2) + offset];
  static double readFloat64(int ptr, [int offset = 0]) => heapF64[(ptr >> 3) + offset];

  static void dumpHex(TypedDataList heap, int ptr, int count, {int? before, int? after}) {
    final start = ptr - (before ?? 0);
    final end   = ptr + count + (after ?? 0);
    final bytes = heap.sublist(start, end);

    final sb = StringBuffer();
    for (var i = 0; i < bytes.length; i += 16) {
      // Address
      final addr = start + i;
      sb.write('0x${addr.toRadixString(16).padLeft(8, '0')}  ');

      // Hex bytes
      for (var j = 0; j < 16; j++) {
        if (i + j < bytes.length) {
          final byte = bytes[i + j];
          if (byte is double) {
            sb.write(byte.toInt().toRadixString(16).padLeft(2, '0'));
          } else if (byte is int) {
            sb.write(byte.toRadixString(16).padLeft(2, '0'));
          } else {
            sb.write('??');
          }
          sb.write(' ');
        } else {
          sb.write('   '); // padding for incomplete last row
        }
        if (j == 7) sb.write(' '); // extra space at midpoint
      }

      sb.write(' |');

      // ASCII sidebar
      for (var j = 0; j < 16 && i + j < bytes.length; j++) {
        final b = bytes[i + j];
        sb.write((b >= 32 && b < 127) ? String.fromCharCode(b) : '.');
      }

      sb.write('|');
      console.log(sb.toString());
      sb.clear();
    }
  }

  static int malloc(int size) => _module._malloc(size);
  
  static void free(int ptr) => _module._free(ptr);

  static void stringToUTF8(String str, int ptr, int maxLen) => _module.stringToUTF8(str.toJS, ptr, maxLen);
  static int lengthBytesUTF8(String str) => _module.lengthBytesUTF8(str.toJS);
  static String readString(int ptr) {
    if (ptr == 0) return '';
    final heap = heapU8;
    int end = ptr;
    while (end < heap.length && heap[end] != 0) end++;
    return utf8.decode(Uint8List.sublistView(heap, ptr, end));
  }
  static void writeString(int ptr, String str) {
    final len = WasmMemory.lengthBytesUTF8(str);
    WasmMemory.stringToUTF8(str, ptr, len + 1); // +1 for null terminator
  }
}

class WasmTypedDataListAlloc extends RaylibTempTypedDataListAllocator<
  RaylibTemp, WasmSizedPointer
> {
  WasmTypedDataListAlloc(super.temp);
}

class RaylibTemp extends RaylibTempBase<Raylib> {
  RaylibTemp(super.rl, { super.options });

  @override late WasmTypedDataListAlloc TypedDataList$;

  @override late WasmStringAlloc String$;

  @override late WasmLitAlloc<bool, WasmBoolPointer> Bool$;
  @override late WasmLitPtrAlloc<bool, WasmSizedPointerPointer<bool, WasmBoolPointer>> Ptr$Bool$;

  @override late WasmLitIntAlloc<Int8List, WasmInt8Pointer> Int8$;
  @override late WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmInt8Pointer>> Ptr$Int8$;
  @override late WasmLitIntAlloc<Uint8List, WasmUint8Pointer> Uint8$;
  @override late WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmUint8Pointer>> Ptr$Uint8$;
  @override late WasmLitIntAlloc<Int16List, WasmInt16Pointer> Int16$;
  @override late WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmInt16Pointer>> Ptr$Int16$;
  @override late WasmLitIntAlloc<Uint16List, WasmUint16Pointer> Uint16$;
  @override late WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmUint16Pointer>> Ptr$Uint16$;
  @override late WasmLitIntAlloc<Int32List, WasmInt32Pointer> Int32$;
  @override late WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmInt32Pointer>> Ptr$Int32$;
  @override late WasmLitIntAlloc<Uint32List, WasmUint32Pointer> Uint32$;
  @override late WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmUint32Pointer>> Ptr$Uint32$;
  @override late WasmLitIntAlloc<Int64List, WasmInt64Pointer> Int64$;
  @override late WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmInt64Pointer>> Ptr$Int64$;
  @override late WasmLitIntAlloc<Uint64List, WasmUint64Pointer> Uint64$;
  @override late WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmUint64Pointer>> Ptr$Uint64$;
  @override late WasmLitFloatAlloc<Float32List, WasmFloat32Pointer> Float32$;
  @override late WasmLitPtrAlloc<double, WasmSizedPointerPointer<double, WasmFloat32Pointer>> Ptr$Float32$;
  @override late WasmLitFloatAlloc<Float64List, WasmFloat64Pointer> Float64$;
  @override late WasmLitPtrAlloc<double, WasmSizedPointerPointer<double, WasmFloat64Pointer>> Ptr$Float64$;

  @override late WasmLitIntAlloc<Int32List, WasmInt32Pointer> Int$;
  @override late WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmInt32Pointer>> Ptr$Int$;
  @override late WasmLitIntAlloc<Uint32List, WasmUint32Pointer> UnsignedInt$;
  @override late WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmUint32Pointer>> Ptr$UnsignedInt$;
  @override late WasmLitIntAlloc<Int8List, WasmInt8Pointer> Char$;
  @override late WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmInt8Pointer>> Ptr$Char$;
  @override late WasmLitIntAlloc<Uint8List, WasmUint8Pointer> UnsignedChar$;
  @override late WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmUint8Pointer>> Ptr$UnsignedChar$;
  @override late WasmLitIntAlloc<Int16List, WasmInt16Pointer> Short$;
  @override late WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmInt16Pointer>> Ptr$Short$;
  @override late WasmLitIntAlloc<Uint16List, WasmUint16Pointer> UnsignedShort$;
  @override late WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmUint32Pointer>> Ptr$UnsignedShort$;

  @override late WasmStructAlloc<AutomationEventListD> AutomationEventList$;
  @override late WasmStructPtrAlloc<AutomationEventListD> Ptr$AutomationEventList$;
  @override late WasmStructAlloc<AutomationEventD> AutomationEvent$;
  @override late WasmStructPtrAlloc<AutomationEventD> Ptr$AutomationEvent$;
  @override late WasmStructAlloc<AudioStreamD> AudioStream$;
  @override late WasmStructPtrAlloc<AudioStreamD> Ptr$AudioStream$;
  @override late WasmStructAlloc<BoneInfoD> BoneInfo$;
  @override late WasmStructPtrAlloc<BoneInfoD> Ptr$BoneInfo$;
  @override late WasmStructAlloc<BoundingBoxD> BoundingBox$;
  @override late WasmStructPtrAlloc<BoundingBoxD> Ptr$BoundingBox$;
  @override late WasmStructAlloc<Camera2DD> Camera2D$;
  @override late WasmStructPtrAlloc<Camera2DD> Ptr$Camera2D$;
  @override late WasmStructAlloc<Camera3DD> Camera3D$;
  @override late WasmStructPtrAlloc<Camera3DD> Ptr$Camera3D$;
  @override late WasmStructAlloc<ColorD> Color$;
  @override late WasmStructPtrAlloc<ColorD> Ptr$Color$;
  @override late WasmStructAlloc<FilePathListD> FilePathList$;
  @override late WasmStructPtrAlloc<FilePathListD> Ptr$FilePathList$;
  @override late WasmStructAlloc<FontD> Font$;
  @override late WasmStructPtrAlloc<FontD> Ptr$Font$;
  @override late WasmStructAlloc<GlyphInfoD> GlyphInfo$;
  @override late WasmStructPtrAlloc<GlyphInfoD> Ptr$GlyphInfo$;
  @override late WasmStructAlloc<ImageD> Image$;
  @override late WasmStructPtrAlloc<ImageD> Ptr$Image$;
  @override late WasmStructAlloc<LightD> Light$;
  @override late WasmStructPtrAlloc<LightD> Ptr$Light$;
  @override late WasmStructAlloc<MaterialD> Material$;
  @override late WasmStructPtrAlloc<MaterialD> Ptr$Material$;
  @override late WasmStructAlloc<MaterialMapD> MaterialMap$;
  @override late WasmStructPtrAlloc<MaterialMapD> Ptr$MaterialMap$;
  @override late WasmStructAlloc<MatrixD> Matrix$;
  @override late WasmStructPtrAlloc<MatrixD> Ptr$Matrix$;
  @override late WasmStructAlloc<MeshD> Mesh$;
  @override late WasmStructPtrAlloc<MeshD> Ptr$Mesh$;
  @override late WasmStructAlloc<ModelD> Model$;
  @override late WasmStructPtrAlloc<ModelD> Ptr$Model$;
  @override late WasmStructAlloc<ModelAnimationD> ModelAnimation$;
  @override late WasmStructPtrAlloc<ModelAnimationD> Ptr$ModelAnimation$;
  @override late WasmStructAlloc<MusicD> Music$;
  @override late WasmStructPtrAlloc<MusicD> Ptr$Music$;
  @override late WasmStructAlloc<NPatchInfoD> NPatchInfo$;
  @override late WasmStructPtrAlloc<NPatchInfoD> Ptr$NPatchInfo$;
  @override late WasmStructAlloc<QuaternionD> Quaternion$;
  @override late WasmStructPtrAlloc<QuaternionD> Ptr$Quaternion$;
  @override late WasmStructAlloc<RectangleD> Rectangle$;
  @override late WasmStructPtrAlloc<RectangleD> Ptr$Rectangle$;
  @override late WasmStructAlloc<RlDrawCallD> RlDrawCall$;
  @override late WasmStructPtrAlloc<RlDrawCallD> Ptr$RlDrawCall$;
  @override late WasmStructAlloc<RlRenderBatchD> RlRenderBatch$;
  @override late WasmStructPtrAlloc<RlRenderBatchD> Ptr$RlRenderBatch$;
  @override late WasmStructAlloc<RlVertexBufferD> RlVertexBuffer$;
  @override late WasmStructPtrAlloc<RlVertexBufferD> Ptr$RlVertexBuffer$;
  @override late WasmStructAlloc<RayD> Ray$;
  @override late WasmStructPtrAlloc<RayD> Ptr$Ray$;
  @override late WasmStructAlloc<RayCollisionD> RayCollision$;
  @override late WasmStructPtrAlloc<RayCollisionD> Ptr$RayCollision$;
  @override late WasmStructAlloc<RenderTextureD> RenderTexture$;
  @override late WasmStructPtrAlloc<RenderTextureD> Ptr$RenderTexture$;
  @override late WasmStructAlloc<ShaderD> Shader$;
  @override late WasmStructPtrAlloc<ShaderD> Ptr$Shader$;
  @override late WasmStructAlloc<SoundD> Sound$;
  @override late WasmStructPtrAlloc<SoundD> Ptr$Sound$;
  @override late WasmStructAlloc<TextureD> Texture$;
  @override late WasmStructPtrAlloc<TextureD> Ptr$Texture$;
  @override late WasmStructAlloc<TransformD> Transform$;
  @override late WasmStructPtrAlloc<TransformD> Ptr$Transform$;
  @override late WasmStructAlloc<Vector2D> Vector2$;
  @override late WasmStructPtrAlloc<Vector2D> Ptr$Vector2$;
  @override late WasmStructAlloc<Vector3D> Vector3$;
  @override late WasmStructPtrAlloc<Vector3D> Ptr$Vector3$;
  @override late WasmStructAlloc<Vector4D> Vector4$;
  @override late WasmStructPtrAlloc<Vector4D> Ptr$Vector4$;
  @override late WasmStructAlloc<VrDeviceInfoD> VrDeviceInfo$;
  @override late WasmStructPtrAlloc<VrDeviceInfoD> Ptr$VrDeviceInfo$;
  @override late WasmStructAlloc<VrStereoConfigD> VrStereoConfig$;
  @override late WasmStructPtrAlloc<VrStereoConfigD> Ptr$VrStereoConfig$;
  @override late WasmStructAlloc<WaveD> Wave$;
  @override late WasmStructPtrAlloc<WaveD> Ptr$Wave$;

  @override
  void load() {
    super.load();

    TypedDataList$ = .new(this);

    String$ = .new(this, 'String\$',
      slotCount: options.stringCount,
    );

    Bool$ = .new(this, 'Bool\$',
      byteSize: WasmSize.Int32,
      pointerFactory: WasmBoolPointer.new,
      printerFunc: (ptr) => ptr.value.toString(),
    );

    Ptr$Bool$ = .new(this, 'Ptr\$Bool\$',
      pointerFactory: (ptr) => .new(ptr, Bool$.pointerFactory),
      rawArrayFunc: Bool$.RawArray,
    );

    Int8$ = WasmLitIntAlloc(this, 'Int8\$',
      byteSize: WasmSize.Int8,
      pointerFactory: WasmInt8Pointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapI8.buffer.asInt8List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asInt8List(offset, len),
    );

    Ptr$Int8$ = .new(this, 'Ptr\$Int8\$',
      pointerFactory: (ptr) => .new(ptr, Int8$.pointerFactory),
      rawArrayFunc: Int8$.RawArray,
    );

    Uint8$ = WasmLitIntAlloc(this, 'Uint8\$',
      byteSize: WasmSize.Uint8,
      pointerFactory: WasmUint8Pointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapU8.buffer.asUint8List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asUint8List(offset, len),
    );

    Ptr$Uint8$ = .new(this, 'Ptr\$Uint8\$',
      pointerFactory: (ptr) => .new(ptr, Uint8$.pointerFactory),
      rawArrayFunc: Uint8$.RawArray,
    );

    Int16$ = WasmLitIntAlloc(this, 'Int16\$',
      byteSize: WasmSize.Int16,
      pointerFactory: WasmInt16Pointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapI16.buffer.asInt16List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asInt16List(offset, len),
    );

    Ptr$Int16$ = .new(this, 'Ptr\$Int16\$',
      pointerFactory: (ptr) => .new(ptr, Int16$.pointerFactory),
      rawArrayFunc: Int16$.RawArray,
    );

    Uint16$ = WasmLitIntAlloc(this, 'Uint16\$',
      byteSize: WasmSize.Uint16,
      pointerFactory: WasmUint16Pointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapU16.buffer.asUint16List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asUint16List(offset, len),
    );

    Ptr$Uint16$ = .new(this, 'Ptr\$Uint16\$',
      pointerFactory: (ptr) => .new(ptr, Uint16$.pointerFactory),
      rawArrayFunc: Uint16$.RawArray,
    );

    Int32$ = WasmLitIntAlloc(this, 'Int32\$',
      byteSize: WasmSize.Int32,
      pointerFactory: WasmInt32Pointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapI32.buffer.asInt32List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asInt32List(offset, len),
    );

    Ptr$Int32$ = .new(this, 'Ptr\$Int32\$',
      pointerFactory: (ptr) => .new(ptr, Int32$.pointerFactory),
      rawArrayFunc: Int32$.RawArray,
    );

    Uint32$ = WasmLitIntAlloc(this, 'Uint32\$',
      byteSize: WasmSize.Uint32,
      pointerFactory: WasmUint32Pointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapU32.buffer.asUint32List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asUint32List(offset, len),
    );
    
    Ptr$Uint32$ = .new(this, 'Ptr\$Uint32\$',
      pointerFactory: (ptr) => .new(ptr, Uint32$.pointerFactory),
      rawArrayFunc: Uint32$.RawArray,
    );

    Int64$ = WasmLitIntAlloc(this, 'Int64\$',
      byteSize: WasmSize.Int64,
      pointerFactory: WasmInt64Pointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapI64.buffer.asInt64List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asInt64List(offset, len),
    );

    Ptr$Int64$ = .new(this, 'Ptr\$Int64\$',
      pointerFactory: (ptr) => .new(ptr, Int64$.pointerFactory),
      rawArrayFunc: Int64$.RawArray,
    );

    Uint64$ = WasmLitIntAlloc(this, 'Uint64\$',
      byteSize: WasmSize.Uint64,
      pointerFactory: WasmUint64Pointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapU64.buffer.asUint64List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asUint64List(offset, len),
    );

    Ptr$Uint64$ = .new(this, 'Ptr\$Uint64\$',
      pointerFactory: (ptr) => .new(ptr, Uint64$.pointerFactory),
      rawArrayFunc: Uint64$.RawArray,
    );

    Float32$ = WasmLitFloatAlloc(this, 'Float32\$',
      byteSize: WasmSize.Float32,
      pointerFactory: WasmFloat32Pointer.new,
      fromList: (list) => .fromList(list.cast<double>().toList()),
      asView: (ptr, len) => WasmMemory.heapF32.buffer.asFloat32List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asFloat32List(offset, len),
    );

    Ptr$Float32$ = .new(this, 'Ptr\$Float32\$',
      pointerFactory: (ptr) => .new(ptr, Float32$.pointerFactory),
      rawArrayFunc: Float32$.RawArray,
    );

    Float64$ = WasmLitFloatAlloc(this, 'Float64\$',
      byteSize: WasmSize.Float64,
      pointerFactory: WasmFloat64Pointer.new,
      fromList: (list) => .fromList(list.cast<double>().toList()),
      asView: (ptr, len) => WasmMemory.heapF64.buffer.asFloat64List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asFloat64List(offset, len),
    );

    Ptr$Float64$ = .new(this, 'Ptr\$Float64\$',
      pointerFactory: (ptr) => .new(ptr, Float64$.pointerFactory),
      rawArrayFunc: Float64$.RawArray,
    );

    AudioStream$ = .new(this, 'AudioStream\$',
      byteSize: AudioStreamD.byteSize,
      factory: AudioStreamD.new
    );

    Ptr$AudioStream$ = .new(this, 'Ptr\$AudioStream\$',
      pointerFactory: (ptr) => .new(ptr, AudioStream$.pointerFactory),
      valueFunc: AudioStream$.Value,
      rawArrayFunc: AudioStream$.RawArray,
    );

    AutomationEventList$ = .new(this, 'AutomationEventList\$',
      byteSize: AutomationEventListD.byteSize,
      factory: AutomationEventListD.new
    );

    Ptr$AutomationEventList$ = .new(this, 'Ptr\$AutomationEventList\$',
      pointerFactory: (ptr) => .new(ptr, AutomationEventList$.pointerFactory),
      valueFunc: AutomationEventList$.Value,
      rawArrayFunc: AutomationEventList$.RawArray,
    );

    AutomationEvent$ = .new(this, 'AutomationEvent\$',
      byteSize: AutomationEventD.byteSize,
      factory: AutomationEventD.new
    );

    Ptr$AutomationEvent$ = .new(this, 'Ptr\$AutomationEvent\$',
      pointerFactory: (ptr) => .new(ptr, AutomationEvent$.pointerFactory),
      valueFunc: AutomationEvent$.Value,
      rawArrayFunc: AutomationEvent$.RawArray,
    );

    BoneInfo$ = .new(this, 'BoneInfo\$',
      byteSize: BoneInfoD.byteSize,
      factory: BoneInfoD.new
    );

    Ptr$BoneInfo$ = .new(this, 'Ptr\$BoneInfo\$',
      pointerFactory: (ptr) => .new(ptr, BoneInfo$.pointerFactory),
      valueFunc: BoneInfo$.Value,
      rawArrayFunc: BoneInfo$.RawArray,
    );

    BoundingBox$ = .new(this, 'BoundingBox\$',
      byteSize: BoundingBoxD.byteSize,
      factory: BoundingBoxD.new
    );

    Ptr$BoundingBox$ = .new(this, 'Ptr\$BoundingBox\$',
      pointerFactory: (ptr) => .new(ptr, BoundingBox$.pointerFactory),
      valueFunc: BoundingBox$.Value,
      rawArrayFunc: BoundingBox$.RawArray,
    );

    Camera2D$ = .new(this, 'Camera2D\$',
      byteSize: Camera2DD.byteSize,
      factory: Camera2DD.new
    );

    Ptr$Camera2D$ = .new(this, 'Ptr\$Camera2D\$',
      pointerFactory: (ptr) => .new(ptr, Camera2D$.pointerFactory),
      valueFunc: Camera2D$.Value,
      rawArrayFunc: Camera2D$.RawArray,
    );

    Camera3D$ = .new(this, 'Camera3D\$',
      byteSize: Camera3DD.byteSize,
      factory: Camera3DD.new
    );

    Ptr$Camera3D$ = .new(this, 'Ptr\$Camera3D\$',
      pointerFactory: (ptr) => .new(ptr, Camera3D$.pointerFactory),
      valueFunc: Camera3D$.Value,
      rawArrayFunc: Camera3D$.RawArray,
    );

    Color$ = .new(this, 'Color\$',
      byteSize: ColorD.byteSize,
      factory: ColorD.new
    );

    Ptr$Color$ = .new(this, 'Ptr\$Color\$',
      pointerFactory: (ptr) => .new(ptr, Color$.pointerFactory),
      valueFunc: Color$.Value,
      rawArrayFunc: Color$.RawArray,
    );

    FilePathList$ = .new(this, 'FilePathList\$',
      byteSize: FilePathListD.byteSize,
      factory: FilePathListD.new
    );

    Ptr$FilePathList$ = .new(this, 'Ptr\$FilePathList\$',
      pointerFactory: (ptr) => .new(ptr, FilePathList$.pointerFactory),
      valueFunc: FilePathList$.Value,
      rawArrayFunc: FilePathList$.RawArray,
    );

    Font$ = .new(this, 'Font\$',
      byteSize: FontD.byteSize,
      factory: FontD.new
    );

    Ptr$Font$ = .new(this, 'Ptr\$Font\$',
      pointerFactory: (ptr) => .new(ptr, Font$.pointerFactory),
      valueFunc: Font$.Value,
      rawArrayFunc: Font$.RawArray,
    );

    GlyphInfo$ = .new(this, 'GlyphInfo\$',
      byteSize: GlyphInfoD.byteSize,
      factory: GlyphInfoD.new
    );

    Ptr$GlyphInfo$ = .new(this, 'Ptr\$GlyphInfo\$',
      pointerFactory: (ptr) => .new(ptr, GlyphInfo$.pointerFactory),
      valueFunc: GlyphInfo$.Value,
      rawArrayFunc: GlyphInfo$.RawArray,
    );

    Image$ = .new(this, 'Image\$',
      byteSize: ImageD.byteSize,
      factory: ImageD.new
    );

    Ptr$Image$ = .new(this, 'Ptr\$Image\$',
      pointerFactory: (ptr) => .new(ptr, Image$.pointerFactory),
      valueFunc: Image$.Value,
      rawArrayFunc: Image$.RawArray,
    );

    Light$ = .new(this, 'Light\$',
      byteSize: LightD.byteSize,
      factory: LightD.new
    );

    Ptr$Light$ = .new(this, 'Ptr\$Light\$',
      pointerFactory: (ptr) => .new(ptr, Light$.pointerFactory),
      valueFunc: Light$.Value,
      rawArrayFunc: Light$.RawArray,
    );

    MaterialMap$ = .new(this, 'MaterialMap\$',
      byteSize: MaterialMapD.byteSize,
      factory: MaterialMapD.new
    );

    Ptr$MaterialMap$ = .new(this, 'Ptr\$MaterialMap\$',
      pointerFactory: (ptr) => .new(ptr, MaterialMap$.pointerFactory),
      valueFunc: MaterialMap$.Value,
      rawArrayFunc: MaterialMap$.RawArray,
    );

    Material$ = .new(this, 'Material\$',
      byteSize: MaterialD.byteSize,
      factory: MaterialD.new
    );

    Ptr$Material$ = .new(this, 'Ptr\$Material\$',
      pointerFactory: (ptr) => .new(ptr, Material$.pointerFactory),
      valueFunc: Material$.Value,
      rawArrayFunc: Material$.RawArray,
    );

    Matrix$ = .new(this, 'Matrix\$',
      byteSize: MatrixD.byteSize,
      factory: MatrixD.new
    );

    Ptr$Matrix$ = .new(this, 'Ptr\$Matrix\$',
      pointerFactory: (ptr) => .new(ptr, Matrix$.pointerFactory),
      valueFunc: Matrix$.Value,
      rawArrayFunc: Matrix$.RawArray,
    );

    Mesh$ = .new(this, 'Mesh\$',
      byteSize: MeshD.byteSize,
      factory: MeshD.new
    );

    Ptr$Mesh$ = .new(this, 'Ptr\$Mesh\$',
      pointerFactory: (ptr) => .new(ptr, Mesh$.pointerFactory),
      valueFunc: Mesh$.Value,
      rawArrayFunc: Mesh$.RawArray,
    );

    ModelAnimation$ = .new(this, 'ModelAnimation\$',
      byteSize: ModelAnimationD.byteSize,
      factory: ModelAnimationD.new
    );

    Ptr$ModelAnimation$ = .new(this, 'Ptr\$ModelAnimation\$',
      pointerFactory: (ptr) => .new(ptr, ModelAnimation$.pointerFactory),
      valueFunc: ModelAnimation$.Value,
      rawArrayFunc: ModelAnimation$.RawArray,
    );

    Model$ = .new(this, 'Model\$',
      byteSize: ModelD.byteSize,
      factory: ModelD.new
    );

    Ptr$Model$ = .new(this, 'Ptr\$Model\$',
      pointerFactory: (ptr) => .new(ptr, Model$.pointerFactory),
      valueFunc: Model$.Value,
      rawArrayFunc: Model$.RawArray,
    );

    Music$ = .new(this, 'Music\$',
      byteSize: MusicD.byteSize,
      factory: MusicD.new
    );

    Ptr$Music$ = .new(this, 'Ptr\$Music\$',
      pointerFactory: (ptr) => .new(ptr, Music$.pointerFactory),
      valueFunc: Music$.Value,
      rawArrayFunc: Music$.RawArray,
    );

    NPatchInfo$ = .new(this, 'NPatchInfo\$',
      byteSize: NPatchInfoD.byteSize,
      factory: NPatchInfoD.new
    );

    Ptr$NPatchInfo$ = .new(this, 'Ptr\$NPatchInfo\$',
      pointerFactory: (ptr) => .new(ptr, NPatchInfo$.pointerFactory),
      valueFunc: NPatchInfo$.Value,
      rawArrayFunc: NPatchInfo$.RawArray,
    );

    Quaternion$ = .new(this, 'Quaternion\$',
      byteSize: QuaternionD.byteSize,
      factory: QuaternionD.new
    );

    Ptr$Quaternion$ = .new(this, 'Ptr\$Quaternion\$',
      pointerFactory: (ptr) => .new(ptr, Quaternion$.pointerFactory),
      valueFunc: Quaternion$.Value,
      rawArrayFunc: Quaternion$.RawArray,
    );

    RayCollision$ = .new(this, 'RayCollision\$',
      byteSize: RayCollisionD.byteSize,
      factory: RayCollisionD.new
    );

    Ptr$RayCollision$ = .new(this, 'Ptr\$RayCollision\$',
      pointerFactory: (ptr) => .new(ptr, RayCollision$.pointerFactory),
      valueFunc: RayCollision$.Value,
      rawArrayFunc: RayCollision$.RawArray,
    );

    Ray$ = .new(this, 'Ray\$',
      byteSize: RayD.byteSize,
      factory: RayD.new
    );

    Ptr$Ray$ = .new(this, 'Ptr\$Ray\$',
      pointerFactory: (ptr) => .new(ptr, Ray$.pointerFactory),
      valueFunc: Ray$.Value,
      rawArrayFunc: Ray$.RawArray,
    );

    Rectangle$ = .new(this, 'Rectangle\$',
      byteSize: RectangleD.byteSize,
      factory: RectangleD.new
    );

    Ptr$Rectangle$ = .new(this, 'Ptr\$Rectangle\$',
      pointerFactory: (ptr) => .new(ptr, Rectangle$.pointerFactory),
      valueFunc: Rectangle$.Value,
      rawArrayFunc: Rectangle$.RawArray,
    );

    RlDrawCall$ = .new(this, 'RlDrawCall\$',
      byteSize: RlDrawCallD.byteSize,
      factory: RlDrawCallD.new
    );

    Ptr$RlDrawCall$ = .new(this, 'Ptr\$RlDrawCall\$',
      pointerFactory: (ptr) => .new(ptr, RlDrawCall$.pointerFactory),
      valueFunc: RlDrawCall$.Value,
      rawArrayFunc: RlDrawCall$.RawArray,
    );

    RlRenderBatch$ = .new(this, 'RlRenderBatch\$',
      byteSize: RlRenderBatchD.byteSize,
      factory: RlRenderBatchD.new
    );

    Ptr$RlRenderBatch$ = .new(this, 'Ptr\$RlRenderBatch\$',
      pointerFactory: (ptr) => .new(ptr, RlRenderBatch$.pointerFactory),
      valueFunc: RlRenderBatch$.Value,
      rawArrayFunc: RlRenderBatch$.RawArray,
    );

    RlVertexBuffer$ = .new(this, 'RlVertexBuffer\$',
      byteSize: RlVertexBufferD.byteSize,
      factory: RlVertexBufferD.new
    );

    Ptr$RlVertexBuffer$ = .new(this, 'Ptr\$RlVertexBuffer\$',
      pointerFactory: (ptr) => .new(ptr, RlVertexBuffer$.pointerFactory),
      valueFunc: RlVertexBuffer$.Value,
      rawArrayFunc: RlVertexBuffer$.RawArray,
    );

    RenderTexture$ = .new(this, 'RenderTexture\$',
      byteSize: RenderTextureD.byteSize,
      factory: RenderTextureD.new
    );

    Ptr$RenderTexture$ = .new(this, 'Ptr\$RenderTexture\$',
      pointerFactory: (ptr) => .new(ptr, RenderTexture$.pointerFactory),
      valueFunc: RenderTexture$.Value,
      rawArrayFunc: RenderTexture$.RawArray,
    );

    Shader$ = .new(this, 'Shader\$',
      byteSize: ShaderD.byteSize,
      factory: ShaderD.new
    );

    Ptr$Shader$ = .new(this, 'Ptr\$Shader\$',
      pointerFactory: (ptr) => .new(ptr, Shader$.pointerFactory),
      valueFunc: Shader$.Value,
      rawArrayFunc: Shader$.RawArray,
    );

    Sound$ = .new(this, 'Sound\$',
      byteSize: SoundD.byteSize,
      factory: SoundD.new
    );

    Ptr$Sound$ = .new(this, 'Ptr\$Sound\$',
      pointerFactory: (ptr) => .new(ptr, Sound$.pointerFactory),
      valueFunc: Sound$.Value,
      rawArrayFunc: Sound$.RawArray,
    );

    Texture$ = .new(this, 'Texture\$',
      byteSize: TextureD.byteSize,
      factory: TextureD.new
    );

    Ptr$Texture$ = .new(this, 'Ptr\$Texture\$',
      pointerFactory: (ptr) => .new(ptr, Texture$.pointerFactory),
      valueFunc: Texture$.Value,
      rawArrayFunc: Texture$.RawArray,
    );

    Transform$ = .new(this, 'Transform\$',
      byteSize: TransformD.byteSize,
      factory: TransformD.new
    );

    Ptr$Transform$ = .new(this, 'Ptr\$Transform\$',
      pointerFactory: (ptr) => .new(ptr, Transform$.pointerFactory),
      valueFunc: Transform$.Value,
      rawArrayFunc: Transform$.RawArray,
    );

    Vector2$ = .new(this, 'Vector2\$',
      byteSize: Vector2D.byteSize,
      factory: Vector2D.new
    );

    Ptr$Vector2$ = .new(this, 'Ptr\$Vector2\$',
      pointerFactory: (ptr) => .new(ptr, Vector2$.pointerFactory),
      valueFunc: Vector2$.Value,
      rawArrayFunc: Vector2$.RawArray,
    );

    Vector3$ = .new(this, 'Vector3\$',
      byteSize: Vector3D.byteSize,
      factory: Vector3D.new
    );

    Ptr$Vector3$ = .new(this, 'Ptr\$Vector3\$',
      pointerFactory: (ptr) => .new(ptr, Vector3$.pointerFactory),
      valueFunc: Vector3$.Value,
      rawArrayFunc: Vector3$.RawArray,
    );

    Vector4$ = .new(this, 'Vector4\$',
      byteSize: Vector4D.byteSize,
      factory: Vector4D.new
    );

    Ptr$Vector4$ = .new(this, 'Ptr\$Vector4\$',
      pointerFactory: (ptr) => .new(ptr, Vector4$.pointerFactory),
      valueFunc: Vector4$.Value,
      rawArrayFunc: Vector4$.RawArray,
    );

    VrDeviceInfo$ = .new(this, 'VrDeviceInfo\$',
      byteSize: VrDeviceInfoD.byteSize,
      factory: VrDeviceInfoD.new
    );

    Ptr$VrDeviceInfo$ = .new(this, 'Ptr\$VrDeviceInfo\$',
      pointerFactory: (ptr) => .new(ptr, VrDeviceInfo$.pointerFactory),
      valueFunc: VrDeviceInfo$.Value,
      rawArrayFunc: VrDeviceInfo$.RawArray,
    );

    VrStereoConfig$ = .new(this, 'VrStereoConfig\$',
      byteSize: VrStereoConfigD.byteSize,
      factory: VrStereoConfigD.new
    );

    Ptr$VrStereoConfig$ = .new(this, 'Ptr\$VrStereoConfig\$',
      pointerFactory: (ptr) => .new(ptr, VrStereoConfig$.pointerFactory),
      valueFunc: VrStereoConfig$.Value,
      rawArrayFunc: VrStereoConfig$.RawArray,
    );

    Wave$ = .new(this, 'Wave\$',
      byteSize: WaveD.byteSize,
      factory: WaveD.new
    );

    Ptr$Wave$ = .new(this, 'Ptr\$Wave\$',
      pointerFactory: (ptr) => .new(ptr, Wave$.pointerFactory),
      valueFunc: Wave$.Value,
      rawArrayFunc: Wave$.RawArray,
    );
  }
}
