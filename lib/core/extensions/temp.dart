part of '../raylib_dartified_web.dart';

class WasmMemoryPointer<X extends RType> implements MemoryPointer<X> {
  final int _addr;

  WasmMemoryPointer(this._addr);

  @override
  WasmMemoryPointer<Y> cast<Y extends RType>() => .new(_addr);

  @override
  bool get isNull => _addr == 0;

  @override
  void free() { if (!isNull) WasmMemory.free(_addr); }

  @override
  int get address => _addr;

  @override
  T to<T extends TypedDataList>(int length) {
    return switch (T) {
      const (Uint8List) => Uint8List.fromList(WasmMemory.heapU8.sublist(_addr, _addr + length)) as T,
      const (Int8List) => Int8List.fromList(WasmMemory.heapI8.sublist(_addr, _addr + length)) as T,
      const (Uint16List) => Uint16List.fromList(WasmMemory.heapU16.sublist(_addr ~/ 2, _addr ~/ 2 + length)) as T,
      const (Int16List) => Int16List.fromList(WasmMemory.heapI16.sublist(_addr ~/ 2, _addr ~/ 2 + length)) as T,
      const (Uint32List) => Uint32List.fromList(WasmMemory.heapU32.sublist(_addr ~/ 4, _addr ~/ 4 + length)) as T,
      const (Int32List) => Int32List.fromList(WasmMemory.heapI32.sublist(_addr ~/ 4, _addr ~/ 4 + length)) as T,
      const (Uint64List) => Uint64List.fromList(WasmMemory.heapU64.sublist(_addr ~/ 8, _addr ~/ 8 + length)) as T,
      const (Int64List) => Int64List.fromList(WasmMemory.heapI64.sublist(_addr ~/ 8, _addr ~/ 8 + length)) as T,
      const (Float32List) => Float32List.fromList(WasmMemory.heapF32.sublist(_addr ~/ 4, _addr ~/ 4 + length)) as T,
      const (Float64List) => Float64List.fromList(WasmMemory.heapF64.sublist(_addr ~/ 8, _addr ~/ 8 + length)) as T,
      _ => throw UnsupportedError('WasmMemPtr.to<$T> not implemented'),
    };
  }

  @override
  T asView<T extends TypedDataList>(int length) {
    return switch (T) {
      const (Uint8List) => WasmMemory.heapU8.buffer.asUint8List(_addr, length) as T,
      const (Int8List) => WasmMemory.heapI8.buffer.asInt8List(_addr, length) as T,
      const (Uint16List) => WasmMemory.heapU16.buffer.asUint16List(_addr, length) as T,
      const (Int16List) => WasmMemory.heapI16.buffer.asInt16List(_addr, length) as T,
      const (Uint32List) => WasmMemory.heapU32.buffer.asUint32List(_addr, length) as T,
      const (Int32List) => WasmMemory.heapI32.buffer.asInt32List(_addr, length) as T,
      const (Uint64List) => WasmMemory.heapU64.buffer.asUint64List(_addr, length) as T,
      const (Int64List) => WasmMemory.heapI64.buffer.asInt64List(_addr, length) as T,
      const (Float32List) => WasmMemory.heapF32.buffer.asFloat32List(_addr, length) as T,
      const (Float64List) => WasmMemory.heapF64.buffer.asFloat64List(_addr, length) as T,
      _ => throw UnsupportedError('WasmMemPtr.asView<$T> not implemented'),
    };
  }

  @override
  String toDartString() => WasmMemory.readString(_addr);

  @override
  String toDartStringBounded(int maxLength) => WasmMemory.readString(_addr, maxLength);

  @override
  MemoryPointer<Y> readPointer<Y extends RType>([int byteOffset = 0])
    => WasmMemoryPointer<Y>(WasmMemory.readUint32(_addr, byteOffset));

  @override
  void writePointer(MemoryPointer<RType> value, [int byteOffset = 0])
    => WasmMemory.writeUint32(_addr, byteOffset, value.address);

  @override bool         readBool([int byteOffset = 0]) => WasmMemory.readBool(_addr, byteOffset);
  @override int          readInt8([int byteOffset = 0]) => WasmMemory.readInt8(_addr, byteOffset);
  @override int         readUint8([int byteOffset = 0]) => WasmMemory.readUint8(_addr, byteOffset);
  @override int         readInt16([int byteOffset = 0]) => WasmMemory.readInt16(_addr, byteOffset);
  @override int        readUint16([int byteOffset = 0]) => WasmMemory.readUint16(_addr, byteOffset);
  @override int         readInt32([int byteOffset = 0]) => WasmMemory.readInt32(_addr, byteOffset);
  @override int        readUint32([int byteOffset = 0]) => WasmMemory.readUint32(_addr, byteOffset);
  @override int         readInt64([int byteOffset = 0]) => WasmMemory.readInt64(_addr, byteOffset);
  @override int        readUint64([int byteOffset = 0]) => WasmMemory.readUint64(_addr, byteOffset);
  @override double    readFloat32([int byteOffset = 0]) => WasmMemory.readFloat32(_addr, byteOffset);
  @override double    readFloat64([int byteOffset = 0]) => WasmMemory.readFloat64(_addr, byteOffset);
  @override int          readChar([int byteOffset = 0]) => WasmMemory.readChar(_addr, byteOffset);
  @override int  readUnsignedChar([int byteOffset = 0]) => WasmMemory.readUnsignedChar(_addr, byteOffset);
  @override int         readShort([int byteOffset = 0]) => WasmMemory.readShort(_addr, byteOffset);
  @override int readUnsignedShort([int byteOffset = 0]) => WasmMemory.readUnsignedShort(_addr, byteOffset);
  @override int           readInt([int byteOffset = 0]) => WasmMemory.readInt(_addr, byteOffset);
  @override int   readUnsignedInt([int byteOffset = 0]) => WasmMemory.readUnsignedInt(_addr, byteOffset);
  @override double      readFloat([int byteOffset = 0]) => WasmMemory.readFloat(_addr, byteOffset);
  @override double     readDouble([int byteOffset = 0]) => WasmMemory.readDouble(_addr, byteOffset);

  @override void          writeBool(bool value,   [int byteOffset = 0]) => WasmMemory.writeBool(_addr, value, byteOffset);
  @override void          writeInt8(int value,    [int byteOffset = 0]) => WasmMemory.writeInt8(_addr, value, byteOffset);
  @override void         writeUint8(int value,    [int byteOffset = 0]) => WasmMemory.writeUint8(_addr, value, byteOffset);
  @override void         writeInt16(int value,    [int byteOffset = 0]) => WasmMemory.writeInt16(_addr, value, byteOffset);
  @override void        writeUint16(int value,    [int byteOffset = 0]) => WasmMemory.writeUint16(_addr, value, byteOffset);
  @override void         writeInt32(int value,    [int byteOffset = 0]) => WasmMemory.writeInt32(_addr, value, byteOffset);
  @override void        writeUint32(int value,    [int byteOffset = 0]) => WasmMemory.writeUint32(_addr, value, byteOffset);
  @override void         writeInt64(int value,    [int byteOffset = 0]) => WasmMemory.writeInt64(_addr, value, byteOffset);
  @override void        writeUint64(int value,    [int byteOffset = 0]) => WasmMemory.writeUint64(_addr, value, byteOffset);
  @override void       writeFloat32(double value, [int byteOffset = 0]) => WasmMemory.writeFloat32(_addr, value, byteOffset);
  @override void       writeFloat64(double value, [int byteOffset = 0]) => WasmMemory.writeFloat64(_addr, value, byteOffset);
  @override void          writeChar(int value,    [int byteOffset = 0]) => WasmMemory.writeChar(_addr, value, byteOffset);
  @override void  writeUnsignedChar(int value,    [int byteOffset = 0]) => WasmMemory.writeUnsignedChar(_addr, value, byteOffset);
  @override void         writeShort(int value,    [int byteOffset = 0]) => WasmMemory.writeShort(_addr, value, byteOffset);
  @override void writeUnsignedShort(int value,    [int byteOffset = 0]) => WasmMemory.writeUnsignedShort(_addr, value, byteOffset);
  @override void           writeInt(int value,    [int byteOffset = 0]) => WasmMemory.writeInt(_addr, value, byteOffset);
  @override void   writeUnsignedInt(int value,    [int byteOffset = 0]) => WasmMemory.writeUnsignedInt(_addr, value, byteOffset);
  @override void         writeFloat(double value, [int byteOffset = 0]) => WasmMemory.writeFloat(_addr, value, byteOffset);
  @override void        writeDouble(double value, [int byteOffset = 0]) => WasmMemory.writeDouble(_addr, value, byteOffset);
}

abstract class WasmPointer<T> {
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
    byteSize: WasmSize.Pointer
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

abstract class WasmLitTypedPointer<T, L extends TypedDataList> extends WasmSizedPointer<T> {
  final T Function(WasmReader reader) readerFunc;
  final void Function(WasmWriter writer, T value) writerFunc;
  final T Function() defaultFunc;

  WasmLitTypedPointer(super.address, {
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

class WasmBoolPointer extends WasmSizedPointer<bool> {
  WasmBoolPointer(super.address) : super(byteSize: WasmSize.Uint8);

  factory WasmBoolPointer.nullptr() => .new(0);

  @override
  bool get defaultValue => false;

  @override
  bool get ref => WasmReader(address).Bool();

  @override
  set ref(bool v) => WasmWriter(address).Bool(v);

  @override
  bool operator [](int index) => WasmReader(offset(index)).Bool();

  @override
  void operator []=(int index, bool v) => WasmWriter(offset(index)).Bool(v);
}

class WasmInt8Pointer extends WasmLitTypedPointer<int, Int8List> {
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

class WasmUint8Pointer extends WasmLitTypedPointer<int, Uint8List> {
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

class WasmInt16Pointer extends WasmLitTypedPointer<int, Int16List> {
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

class WasmUint16Pointer extends WasmLitTypedPointer<int, Uint16List> {
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

class WasmInt32Pointer extends WasmLitTypedPointer<int, Int32List> {
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

class WasmUint32Pointer extends WasmLitTypedPointer<int, Uint32List> {
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

class WasmInt64Pointer extends WasmLitTypedPointer<int, Int64List> {
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

class WasmUint64Pointer extends WasmLitTypedPointer<int, Uint64List> {
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

class WasmFloat32Pointer extends WasmLitTypedPointer<double, Float32List> {
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

class WasmFloat64Pointer extends WasmLitTypedPointer<double, Float64List> {
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

class WasmCharPointer extends WasmLitTypedPointer<int, Int8List> {
  WasmCharPointer(super.address) : super(
    byteSize: WasmSize.Char,
    readerFunc: (reader) => reader.Char(),
    writerFunc: (writer, v) => writer.Char(v),
    defaultFunc: () => 0,
  );

  factory WasmCharPointer.nullptr() => .new(0);

  @override
  Int8List readTypedArray(int count) => .fromList(readArray(count));

  @override
  Int8List get typedHeap => WasmMemory.heapI8;

  @override
  Int8List view(int length) => .view(typedHeap.buffer, address, length);
}

class WasmUnsignedCharPointer extends WasmLitTypedPointer<int, Uint8List> {
  WasmUnsignedCharPointer(super.address) : super(
    byteSize: WasmSize.UnsignedChar,
    readerFunc: (reader) => reader.UnsignedChar(),
    writerFunc: (writer, v) => writer.UnsignedChar(v),
    defaultFunc: () => 0,
  );

  factory WasmUnsignedCharPointer.nullptr() => .new(0);

  @override
  Uint8List readTypedArray(int count) => .fromList(readArray(count));

  @override
  Uint8List get typedHeap => WasmMemory.heapU8;

  @override
  Uint8List view(int length) => .view(typedHeap.buffer, address, length);
}

class WasmShortPointer extends WasmLitTypedPointer<int, Int16List> {
  WasmShortPointer(super.address) : super(
    byteSize: WasmSize.Short,
    readerFunc: (reader) => reader.Short(),
    writerFunc: (writer, v) => writer.Short(v),
    defaultFunc: () => 0,
  );

  factory WasmShortPointer.nullptr() => .new(0);

  @override
  Int16List readTypedArray(int count) => .fromList(readArray(count));

  @override
  Int16List get typedHeap => WasmMemory.heapI16;

  @override
  Int16List view(int length) => .view(typedHeap.buffer, address, length);
}

class WasmUnsignedShortPointer extends WasmLitTypedPointer<int, Uint16List> {
  WasmUnsignedShortPointer(super.address) : super(
    byteSize: WasmSize.UnsignedShort,
    readerFunc: (reader) => reader.UnsignedShort(),
    writerFunc: (writer, v) => writer.UnsignedShort(v),
    defaultFunc: () => 0,
  );

  factory WasmUnsignedShortPointer.nullptr() => .new(0);

  @override
  Uint16List readTypedArray(int count) => .fromList(readArray(count));

  @override
  Uint16List get typedHeap => WasmMemory.heapU16;

  @override
  Uint16List view(int length) => .view(typedHeap.buffer, address, length);
}

class WasmIntPointer extends WasmLitTypedPointer<int, Int32List> {
  WasmIntPointer(super.address) : super(
    byteSize: WasmSize.Int,
    readerFunc: (reader) => reader.Int(),
    writerFunc: (writer, v) => writer.Int(v),
    defaultFunc: () => 0,
  );

  factory WasmIntPointer.nullptr() => .new(0);

  @override
  Int32List readTypedArray(int count) => .fromList(readArray(count));

  @override
  Int32List get typedHeap => WasmMemory.heapI32;

  @override
  Int32List view(int length) => .view(typedHeap.buffer, address, length);
}

class WasmUnsignedIntPointer extends WasmLitTypedPointer<int, Uint32List> {
  WasmUnsignedIntPointer(super.address) : super(
    byteSize: WasmSize.UnsignedInt,
    readerFunc: (reader) => reader.UnsignedInt(),
    writerFunc: (writer, v) => writer.UnsignedInt(v),
    defaultFunc: () => 0,
  );

  factory WasmUnsignedIntPointer.nullptr() => .new(0);

  @override
  Uint32List readTypedArray(int count) => .fromList(readArray(count));

  @override
  Uint32List get typedHeap => WasmMemory.heapU32;

  @override
  Uint32List view(int length) => .view(typedHeap.buffer, address, length);
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
    item.originalPointer ??= .new(address, factory, byteSize);
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
    byteSize: WasmSize.Pointer
  );

  factory WasmStringPointerPointer.nullptr() => .new(0);

  @override
  WasmStringPointer get defaultValue => .nullptr();

  @override
  WasmStringPointer get ref => .new(WasmReader(address).pointer());

  @override
  set ref(WasmStringPointer v) => WasmWriter(address).Uint32(v.address);

  @override
  WasmStringPointer operator [](int index) => .new(WasmReader(offset(index)).pointer());

  @override
  void operator []=(int index, WasmStringPointer v) => WasmWriter(offset(index)).pointer(v.address);

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
  WasmAlloc(super.temp, {
    required super.byteSize,
    required super.pointerFactory,
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
  Function(P ptr, int i, X value) get indexSetterFunc
    => (ptr, i, value) => ptr[i] = value;

  @override
  Function(P ptr, X value) get literalSetterFunc
    => (ptr, value) => ptr.value = value;
  
  WasmLitAlloc(super.temp, {
    required super.byteSize,
    required super.pointerFactory,
  });
}

class WasmLitTypedListAlloc<
  D, L extends TypedDataList, P extends WasmSizedPointer<D>
> extends WasmLitAlloc<
  D, P
> with RaylibTempLiteralTypedListAllocatorBase<
  RaylibTemp, D, L, P, int
> {

  @override
  List<D> Function(int ptr, int length) get asDartList
    => (ptr, length) => asView(ptr, length).toList().cast();

  @override
  L Function(int ptr, int length) get asTypedList
    => (ptr, length) => fromList(asDartList(ptr, length));

  @override
  final L Function(Iterable<D> list) fromList;

  @override
  final L Function(int ptr, int length) asView;
  
  @override
  final L Function(ByteBuffer buffer, int offsetInBytes, int length) fromBuffer;

  WasmLitTypedListAlloc(super.temp, {
    required super.byteSize,
    required super.pointerFactory,
    required this.fromList,
    required this.asView,
    required this.fromBuffer,
  });
}

class WasmLitIntAlloc<
  L extends TypedDataList, P extends WasmSizedPointer<int>
> extends WasmLitTypedListAlloc<
  num, L, P
> with RaylibTempLiteralIntAllocatorBase<
  RaylibTemp, L, P, int
> {
  WasmLitIntAlloc(super.temp, {
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
  WasmLitFloatAlloc(super.temp, {
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
  Function(PP ptrptr, int i, WasmSizedPointer<X> ptr) get indexSetterFunc
    => (ptrptr, i, ptr) => ptrptr[i] = ptr;

  WasmLitPtrAlloc(super.temp, {
    required super.pointerFactory,
    required this.rawArrayFunc,
  }) : super(byteSize: WasmSize.Pointer);
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
  T Function(WasmStructPointer<T> ptr) get refFunc
    => (ptr) => ptr.ref;

  @override
  WasmStructPointer<T> Function(WasmStructPointer<T> ptr, T v) get setRefFunc
    => (ptr, v) => ptr..ref = v;

  @override
  void Function(WasmStructPointer<T> ptr, int i, T value) get writeIntoIndexedFunc
    => (ptr, i, value) => ptr[i] = value;
  
  @override
  void Function(WasmStructPointer<T> ptr, T value) get writeIntoFunc
    => (ptr, value) => ptr.ref = value;

  @override
  void Function(WasmStructPointer<T> ptr, int i, T v) get setCFunc
    => (ptr, i, v) => ptr[i] = v;
  
  @override
  T Function(WasmStructPointer<T> ptr, int i) get indexerFunc
    => (ptr, i) => ptr[i];
  
  @override
  void Function(WasmStructPointer<T> ptr, int i, T v) get indexSetterFunc
    => (ptr, i, v) => ptr[i] = v;

  @override
  T Function(WasmStructPointer<T> ptr) get pointerToStruct
    => (ptr) => ptr.ref;

  @override
  void Function(WasmStructPointer<T> ptr, T source) get updateFunc
    => (ptr, source) => source.wasmReadFrom(WasmReader(ptr.address));

  WasmStructAlloc(super.temp, {
    required super.byteSize,
    required this.factory,
  }) : super(
    pointerFactory: (ptr) => .new(ptr, factory, byteSize),
  );

  /// Fixed scratch slot holding a zero-initialized [T] struct, by pointer.
  ///
  /// The native-memory equivalent of a Dart-layer `.zero()` constructor,
  /// a cheap, shared buffer for call sites that just need to pass a zero
  /// value without allocating. **Read-only by convention**: this slot is
  /// shared (via [At]) across every call site that touches it, so writing
  /// through it permanently corrupts the "zero" invariant for everyone else,
  /// there is no reset. Use [$1Ptr]..[$4Ptr] or [$newPtr] for a mutable slot.
  WasmStructPointer<T> get $zeroPtr => At('__reusable__zero');

  /// [T] view of [$zeroPtr]. Same read-only convention applies: do not
  /// mutate fields on this reference.
  T get $zero => refFunc($zeroPtr);

  /// Reusable single-element scratch slot, by pointer. Unlike [$zeroPtr],
  /// this is expected to be written through, it's a fixed shared buffer,
  /// not a zero-invariant one, so callers may freely overwrite its contents
  /// between uses.
  WasmStructPointer<T> get $1Ptr => At('__reusable__1');

  /// [T] view of [$1Ptr].
  T get $1 => refFunc($1Ptr);

  /// Reusable single-element scratch slot, parallel to [$1Ptr] under a
  /// distinct key. Use when a call needs a second independent scratch
  /// struct alongside [$1]/[$1Ptr] (e.g. two out-parameters in one call).
  WasmStructPointer<T> get $2Ptr => At('__reusable__2');

  /// [T] view of [$2Ptr].
  T get $2 => refFunc($2Ptr);

  /// Reusable single-element scratch slot, parallel to [$1Ptr]/[$2Ptr].
  WasmStructPointer<T> get $3Ptr => At('__reusable__3');

  /// [T] view of [$3Ptr].
  T get $3 => refFunc($3Ptr);

  /// Reusable single-element scratch slot, parallel to [$1Ptr]..[$3Ptr].
  ///
  /// With [$1Ptr] through [$4Ptr] this gives up to four fixed scratch slots
  /// (plus the read-only [$zeroPtr]) for call sites that need several
  /// simultaneous native struct out-parameters without allocating a fresh
  /// buffer each time.
  WasmStructPointer<T> get $4Ptr => At('__reusable__4');

  /// [T] view of [$4Ptr].
  T get $4 => refFunc($4Ptr);

  /// Fresh, independently-owned scratch pointer, unlike [$zeroPtr]/[$1Ptr]..[$4Ptr].
  ///
  /// Each access gets its own slot via [AtUnique], keyed with a monotonic id,
  /// so it is safe even when the same call site may be active multiple times
  /// at once (recursion, re-entrant calls).
  WasmStructPointer<T> get $newPtr => AtUnique(key: '__reusable__newptr');

  /// [T] view of [$newPtr].
  T get $new => refFunc($newPtr);
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
  void Function(WasmStructPointerPointer<T> ptr, int i, WasmStructPointer<T> value) get indexSetterFunc
    => (ptr, i, value) => ptr[i] = value;

  WasmStructPtrAlloc(super.temp, {
    required this.valueFunc,
    required this.rawArrayFunc,
    required super.pointerFactory,
  }) : super(byteSize: WasmSize.Pointer);
}

class WasmStringAlloc extends WasmAlloc<
  String, WasmStringPointer
> with RaylibTempStringAllocatorBase<
  RaylibTemp, WasmStringPointerPointer, WasmStringPointer, int
> {
  @override final int slotCount;

  @override
  int get ptrByteSize => WasmSize.Pointer;

  @override
  void Function(WasmStringPointerPointer ptr) get freePPFunc
    => (ptr) => WasmMemory.free(ptr.address);

  @override
  WasmStringPointer Function(String text, [int? bufferSize]) get strAllocatorFunc
    => (text, [bufferSize]) => .new(WasmMemory.allocString(text, bufferSize));

  @override
  WasmStringPointerPointer Function(int count) get ptrAllocatorFunc
    => (count) => .new(WasmMemory.malloc(ptrByteSize*count));

  @override
  void Function(WasmStringPointerPointer ptrptr, int i, WasmStringPointer ptr) get indexSetterFunc
    => (ptrptr, i, ptr) => ptrptr[i] = ptr;

  WasmStringAlloc(super.temp, {
    required this.slotCount,
  }) : super(
    byteSize: WasmSize.Pointer,
    pointerFactory: WasmStringPointer.new,
  ) { reset(); }

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

class WasmType<T extends Object> {
  final int size;
  final int shift;
  final List<T> Function() heap;

  const WasmType(this.size, this.shift, this.heap);
}

class WasmTypes {
  static final Int8    =    WasmType<int>(WasmSize.Int8,    0, () => WasmMemory.heapI8);
  static final Uint8   =    WasmType<int>(WasmSize.Uint8,   0, () => WasmMemory.heapU8);
  static final Int16   =    WasmType<int>(WasmSize.Int16,   1, () => WasmMemory.heapI16);
  static final Uint16  =    WasmType<int>(WasmSize.Uint16,  1, () => WasmMemory.heapU16);
  static final Int32   =    WasmType<int>(WasmSize.Int32,   2, () => WasmMemory.heapI32);
  static final Uint32  =    WasmType<int>(WasmSize.Uint32,  2, () => WasmMemory.heapU32);
  static final Int64   =    WasmType<int>(WasmSize.Int64,   3, () => WasmMemory.heapI64);
  static final Uint64  =    WasmType<int>(WasmSize.Uint64,  3, () => WasmMemory.heapU64);
  static final Float32 = WasmType<double>(WasmSize.Float32, 2, () => WasmMemory.heapF32);
  static final Float64 = WasmType<double>(WasmSize.Float64, 3, () => WasmMemory.heapF64);

  // C-name aliases share the same underlying descriptor
  static final Char = Int8, UnsignedChar = Uint8;
  static final Short = Int16, UnsignedShort = Uint16;
  static final Int = Int32, UnsignedInt = Uint32;
  static final Float = Float32, Double = Float64;
}

class WasmWriter {
  int _cur;
  int get cursor => _cur;
  WasmWriter([int ptr = 0]) : _cur = ptr;
  void reset(int addr) => _cur = addr;

  void _write<T extends Object>(WasmType<T> t, T v) {
    t.heap()[_cur >> t.shift] = v;
    _cur += t.size;
  }

  void _writeArray<T extends Object>(WasmType<T> t, Iterable<T> v) {
    t.heap().setAll(_cur >> t.shift, v);
    _cur += v.length * t.size;
  }

  void          Bool(bool   v) => Uint8(v ? 1 : 0);
  void          Int8(int    v) => _write(WasmTypes.Int8, v);
  void         Uint8(int    v) => _write(WasmTypes.Uint8, v);
  void         Int16(int    v) => _write(WasmTypes.Int16, v);
  void        Uint16(int    v) => _write(WasmTypes.Uint16, v);
  void         Int32(int    v) => _write(WasmTypes.Int32, v);
  void        Uint32(int    v) => _write(WasmTypes.Uint32, v);
  void         Int64(int    v) => _write(WasmTypes.Int64, v);
  void        Uint64(int    v) => _write(WasmTypes.Uint64, v);
  void       Float32(double v) => _write(WasmTypes.Float32, v);
  void       Float64(double v) => _write(WasmTypes.Float64, v);
  void          Char(int    v) => _write(WasmTypes.Char, v);
  void  UnsignedChar(int    v) => _write(WasmTypes.UnsignedChar, v);
  void         Short(int    v) => _write(WasmTypes.Short, v);
  void UnsignedShort(int    v) => _write(WasmTypes.UnsignedShort, v);
  void           Int(int    v) => _write(WasmTypes.Int, v);
  void   UnsignedInt(int    v) => _write(WasmTypes.UnsignedInt, v);
  void         Float(double v) => Float32(v);
  void        Double(double v) => Float64(v);

  void          BoolArray(Iterable<bool>   v) => Uint8Array(v.map((x) => x ? 1 : 0));
  void          Int8Array(Iterable<int>    v) => _writeArray(WasmTypes.Int8, v);
  void         Uint8Array(Iterable<int>    v) => _writeArray(WasmTypes.Uint8, v);
  void         Int16Array(Iterable<int>    v) => _writeArray(WasmTypes.Int16, v);
  void        Uint16Array(Iterable<int>    v) => _writeArray(WasmTypes.Uint16, v);
  void         Int32Array(Iterable<int>    v) => _writeArray(WasmTypes.Int32, v);
  void        Uint32Array(Iterable<int>    v) => _writeArray(WasmTypes.Uint32, v);
  void         Int64Array(Iterable<int>    v) => _writeArray(WasmTypes.Int64, v);
  void        Uint64Array(Iterable<int>    v) => _writeArray(WasmTypes.Uint64, v);
  void       Float32Array(Iterable<double> v) => _writeArray(WasmTypes.Float32, v);
  void       Float64Array(Iterable<double> v) => _writeArray(WasmTypes.Float64, v);
  void          CharArray(Iterable<int>    v) => _writeArray(WasmTypes.Char, v);
  void  UnsignedCharArray(Iterable<int>    v) => _writeArray(WasmTypes.UnsignedChar, v);
  void         ShortArray(Iterable<int>    v) => _writeArray(WasmTypes.Short, v);
  void UnsignedShortArray(Iterable<int>    v) => _writeArray(WasmTypes.UnsignedShort, v);
  void           IntArray(Iterable<int>    v) => _writeArray(WasmTypes.Int, v);
  void   UnsignedIntArray(Iterable<int>    v) => _writeArray(WasmTypes.UnsignedInt, v);
  void         FloatArray(Iterable<double> v) => Float32Array(v);
  void        DoubleArray(Iterable<double> v) => Float64Array(v);

  void wasmPointer([WasmPointer? ptr]) => pointer(ptr?.address ?? 0);
  
  void pointer(int ptr) => Uint32(ptr);

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
  void reset(int addr) => _cur = addr;

  T _read<T extends Object>(WasmType<T> t) {
    final value = t.heap()[_cur >> t.shift];
    _cur += t.size;
    return value;
  }

  List<T> _readArray<T extends Object>(WasmType<T> t, int length) {
    final value = t.heap().sublist(_cur >> t.shift, _cur >> t.shift + length);
    _cur += length * t.size;
    return value;
  }

  bool         Bool() => Uint8() != 0;
  int          Int8() => _read(WasmTypes.Int8);
  int         Uint8() => _read(WasmTypes.Uint8);
  int         Int16() => _read(WasmTypes.Int16);
  int        Uint16() => _read(WasmTypes.Uint16);
  int         Int32() => _read(WasmTypes.Int32);
  int        Uint32() => _read(WasmTypes.Uint32);
  int         Int64() => _read(WasmTypes.Int64);
  int        Uint64() => _read(WasmTypes.Uint64);
  double    Float32() => _read(WasmTypes.Float32);
  double    Float64() => _read(WasmTypes.Float64);
  int          Char() => _read(WasmTypes.Char);
  int  UnsignedChar() => _read(WasmTypes.UnsignedChar);
  int         Short() => _read(WasmTypes.Short);
  int UnsignedShort() => _read(WasmTypes.UnsignedShort);
  int           Int() => _read(WasmTypes.Int);
  int   UnsignedInt() => _read(WasmTypes.UnsignedInt);
  double      Float() => Float32();
  double     Double() => Float64();

  List<bool>         BoolArray(int n) => Uint8Array(n).map((x) => x != 0).toList();
  List<int>          Int8Array(int n) => _readArray(WasmTypes.Int8, n);
  List<int>         Uint8Array(int n) => _readArray(WasmTypes.Uint8, n);
  List<int>         Int16Array(int n) => _readArray(WasmTypes.Int16, n);
  List<int>        Uint16Array(int n) => _readArray(WasmTypes.Uint16, n);
  List<int>         Int32Array(int n) => _readArray(WasmTypes.Int32, n);
  List<int>        Uint32Array(int n) => _readArray(WasmTypes.Uint32, n);
  List<int>         Int64Array(int n) => _readArray(WasmTypes.Int64, n);
  List<int>        Uint64Array(int n) => _readArray(WasmTypes.Uint64, n);
  List<double>    Float32Array(int n) => _readArray(WasmTypes.Float32, n);
  List<double>    Float64Array(int n) => _readArray(WasmTypes.Float64, n);
  List<int>          CharArray(int n) => _readArray(WasmTypes.Char, n);
  List<int>  UnsignedCharArray(int n) => _readArray(WasmTypes.UnsignedChar, n);
  List<int>         ShortArray(int n) => _readArray(WasmTypes.Short, n);
  List<int> UnsignedShortArray(int n) => _readArray(WasmTypes.UnsignedShort, n);
  List<int>           IntArray(int n) => _readArray(WasmTypes.Int, n);
  List<int>   UnsignedIntArray(int n) => _readArray(WasmTypes.UnsignedInt, n);
  List<double>      FloatArray(int n) => Float32Array(n);
  List<double>     DoubleArray(int n) => Float64Array(n);

  Int8List            Int8TypedArray(int n) => .fromList(Int8Array(n));
  Uint8List          Uint8TypedArray(int n) => .fromList(Uint8Array(n));
  Int16List          Int16TypedArray(int n) => .fromList(Int16Array(n));
  Uint16List        Uint16TypedArray(int n) => .fromList(Uint16Array(n));
  Int32List          Int32TypedArray(int n) => .fromList(Int32Array(n));
  Uint32List        Uint32TypedArray(int n) => .fromList(Uint32Array(n));
  Int64List          Int64TypedArray(int n) => .fromList(Int64Array(n));
  Uint64List        Uint64TypedArray(int n) => .fromList(Uint64Array(n));
  Float32List      Float32TypedArray(int n) => .fromList(Float32Array(n));
  Float64List      Float64TypedArray(int n) => .fromList(Float64Array(n));
  Int8List            CharTypedArray(int n) => .fromList(CharArray(n));
  Uint8List   UnsignedCharTypedArray(int n) => .fromList(UnsignedCharArray(n));
  Int16List          ShortTypedArray(int n) => .fromList(ShortArray(n));
  Uint16List UnsignedShortTypedArray(int n) => .fromList(UnsignedShortArray(n));
  Int32List            IntTypedArray(int n) => .fromList(IntArray(n));
  Uint32List   UnsignedIntTypedArray(int n) => .fromList(UnsignedIntArray(n));
  Float32List        FloatTypedArray(int n) => .fromList(FloatArray(n));
  Float64List       DoubleTypedArray(int n) => .fromList(DoubleArray(n));

  WasmBoolPointer                   BoolPointer() => .new(pointer());
  WasmInt8Pointer                   Int8Pointer() => .new(pointer());
  WasmUint8Pointer                 Uint8Pointer() => .new(pointer());
  WasmInt16Pointer                 Int16Pointer() => .new(pointer());
  WasmUint16Pointer               Uint16Pointer() => .new(pointer());
  WasmInt32Pointer                 Int32Pointer() => .new(pointer());
  WasmUint32Pointer               Uint32Pointer() => .new(pointer());
  WasmInt64Pointer                 Int64Pointer() => .new(pointer());
  WasmUint64Pointer               Uint64Pointer() => .new(pointer());
  WasmFloat32Pointer             Float32Pointer() => .new(pointer());
  WasmFloat64Pointer             Float64Pointer() => .new(pointer());
  WasmCharPointer                   CharPointer() => .new(pointer());
  WasmUnsignedCharPointer   UnsignedCharPointer() => .new(pointer());
  WasmShortPointer                 ShortPointer() => .new(pointer());
  WasmUnsignedShortPointer UnsignedShortPointer() => .new(pointer());
  WasmIntPointer                     IntPointer() => .new(pointer());
  WasmUnsignedIntPointer     UnsignedIntPointer() => .new(pointer());
  WasmFloat32Pointer               FloatPointer() => Float32Pointer();
  WasmFloat64Pointer              DoublePointer() => Float64Pointer();

  int pointer() => Uint32();

  void struct<T extends StructDWeb<T>>(T v) => v.wasmReadFrom(this);

  List<T> structArray<T extends StructDWeb<T>>(int count, int size, WasmStructPointer<T> Function(int ptr) pointerFactory, {bool owned = false}) {
    final result = pointerFactory(_cur).readArray(count, owned: owned);
    if (result.isNotEmpty) _cur += count * size;
    return result;
  }

  String string() { // null terminated
    final str = WasmStringPointer(_cur).ref;
    _cur += WasmMemory.lengthBytesUTF8(str) + 1;
    return str;
  }

  List<String> stringArray(int count) {
    final ptr = WasmStringPointerPointer(pointer());
    return .generate(count, (i) => ptr[i].ref);
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
  static const int Bool          = Uint8;
  static const int Int8          = 1;
  static const int Uint8         = 1;
  static const int Int16         = 2;
  static const int Uint16        = 2;
  static const int Int32         = 4;
  static const int Uint32        = 4;
  static const int Int64         = 8;
  static const int Uint64        = 8;
  static const int Float32       = 4;
  static const int Float64       = 8;
  static const int Char          = Int8;
  static const int UnsignedChar  = Uint8;
  static const int Short         = Int16;
  static const int UnsignedShort = Uint16;
  static const int Int           = Int32;
  static const int UnsignedInt   = Uint32;
  static const int Float         = Float32;
  static const int Double        = Float64;

  // just for better readability
  static const int BoolPointer          = Uint32;
  static const int Pointer              = Uint32;
  static const int StructPointer        = Uint32;
  static const int Int8Pointer          = Uint32;
  static const int Uint8Pointer         = Uint32;
  static const int Int16Pointer         = Uint32;
  static const int Uint16Pointer        = Uint32;
  static const int Int32Pointer         = Uint32;
  static const int Uint32Pointer        = Uint32;
  static const int Int64Pointer         = Uint32;
  static const int Uint64Pointer        = Uint32;
  static const int Float32Pointer       = Uint32;
  static const int Float64Pointer       = Uint32;
  static const int CharPointer          = Uint32;
  static const int UnsignedCharPointer  = Uint32;
  static const int ShortPointer         = Uint32;
  static const int UnsignedShortPointer = Uint32;
  static const int IntPointer           = Uint32;
  static const int UnsignedIntPointer   = Uint32;
  static const int FloatPointer         = Uint32;
  static const int DoublePointer        = Uint32;
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

  static void write<T extends Object>(WasmType<T> t, int ptr, T value, [int offset = 0])
    => t.heap()[(ptr >> t.shift) + offset] = value;

  static T read<T extends Object>(WasmType<T> t, int ptr, [int offset = 0])
    => t.heap()[(ptr >> t.shift) + offset];

  static int readPointer(int ptr, [int offset = 0]) => readUint32(ptr, offset);
  static void writePointer(int ptr, int value, [int offset = 0]) => writeUint32(ptr, value, offset);

  static void          writeBool(int ptr, bool value,   [int offset = 0]) => write<int>(WasmTypes.Uint8, ptr, value ? 1 : 0, offset);
  static void          writeInt8(int ptr, int value,    [int offset = 0]) => write(WasmTypes.Int8, ptr, value, offset);
  static void         writeUint8(int ptr, int value,    [int offset = 0]) => write(WasmTypes.Uint8, ptr, value, offset);
  static void         writeInt16(int ptr, int value,    [int offset = 0]) => write(WasmTypes.Int16, ptr, value, offset);
  static void        writeUint16(int ptr, int value,    [int offset = 0]) => write(WasmTypes.Uint16, ptr, value, offset);
  static void         writeInt32(int ptr, int value,    [int offset = 0]) => write(WasmTypes.Int32, ptr, value, offset);
  static void        writeUint32(int ptr, int value,    [int offset = 0]) => write(WasmTypes.Uint32, ptr, value, offset);
  static void         writeInt64(int ptr, int value,    [int offset = 0]) => write(WasmTypes.Int64, ptr, value, offset);
  static void        writeUint64(int ptr, int value,    [int offset = 0]) => write(WasmTypes.Uint64, ptr, value, offset);
  static void       writeFloat32(int ptr, double value, [int offset = 0]) => write(WasmTypes.Float32, ptr, value, offset);
  static void       writeFloat64(int ptr, double value, [int offset = 0]) => write(WasmTypes.Float64, ptr, value, offset);
  static void          writeChar(int ptr, int value,    [int offset = 0]) => write(WasmTypes.Char, ptr, value, offset);
  static void  writeUnsignedChar(int ptr, int value,    [int offset = 0]) => write(WasmTypes.UnsignedChar, ptr, value, offset);
  static void         writeShort(int ptr, int value,    [int offset = 0]) => write(WasmTypes.Short, ptr, value, offset);
  static void writeUnsignedShort(int ptr, int value,    [int offset = 0]) => write(WasmTypes.UnsignedShort, ptr, value, offset);
  static void           writeInt(int ptr, int value,    [int offset = 0]) => write(WasmTypes.Int, ptr, value, offset);
  static void   writeUnsignedInt(int ptr, int value,    [int offset = 0]) => write(WasmTypes.UnsignedInt, ptr, value, offset);
  static void         writeFloat(int ptr, double value, [int offset = 0]) => write(WasmTypes.Float, ptr, value, offset);
  static void        writeDouble(int ptr, double value, [int offset = 0]) => write(WasmTypes.Double, ptr, value, offset);

  static bool         readBool(int ptr, [int offset = 0]) => read<int>(WasmTypes.Uint8, ptr, offset) != 0;
  static int          readInt8(int ptr, [int offset = 0]) => read(WasmTypes.Int8, ptr, offset);
  static int         readUint8(int ptr, [int offset = 0]) => read(WasmTypes.Uint8, ptr, offset);
  static int         readInt16(int ptr, [int offset = 0]) => read(WasmTypes.Int16, ptr, offset);
  static int        readUint16(int ptr, [int offset = 0]) => read(WasmTypes.Uint16, ptr, offset);
  static int         readInt32(int ptr, [int offset = 0]) => read(WasmTypes.Int32, ptr, offset);
  static int        readUint32(int ptr, [int offset = 0]) => read(WasmTypes.Uint32, ptr, offset);
  static int         readInt64(int ptr, [int offset = 0]) => read(WasmTypes.Int64, ptr, offset);
  static int        readUint64(int ptr, [int offset = 0]) => read(WasmTypes.Uint64, ptr, offset);
  static double    readFloat32(int ptr, [int offset = 0]) => read(WasmTypes.Float32, ptr, offset);
  static double    readFloat64(int ptr, [int offset = 0]) => read(WasmTypes.Float64, ptr, offset);
  static int          readChar(int ptr, [int offset = 0]) => read(WasmTypes.Char, ptr, offset);
  static int  readUnsignedChar(int ptr, [int offset = 0]) => read(WasmTypes.UnsignedChar, ptr, offset);
  static int         readShort(int ptr, [int offset = 0]) => read(WasmTypes.Short, ptr, offset);
  static int readUnsignedShort(int ptr, [int offset = 0]) => read(WasmTypes.UnsignedShort, ptr, offset);
  static int           readInt(int ptr, [int offset = 0]) => read(WasmTypes.Int, ptr, offset);
  static int   readUnsignedInt(int ptr, [int offset = 0]) => read(WasmTypes.UnsignedInt, ptr, offset);
  static double      readFloat(int ptr, [int offset = 0]) => read(WasmTypes.Float, ptr, offset);
  static double     readDouble(int ptr, [int offset = 0]) => read(WasmTypes.Double, ptr, offset);

  static int malloc(int size)
    => _module._malloc(size);
  
  static void free(int ptr)
    => _module._free(ptr);

  static void stringToUTF8(String str, int ptr, int maxLen)
    => _module.stringToUTF8(str.toJS, ptr, maxLen);
  
  static int lengthBytesUTF8(String str)
    => _module.lengthBytesUTF8(str.toJS);
  
  static String readString(int ptr, [int? maxLength]) {
    if (ptr == 0) return '';
    final heap = heapU8;
    int end = ptr;
    final limit = maxLength != null ? ptr + maxLength : heap.length;
    while (end < heap.length && end < limit && heap[end] != 0) end++;
    return utf8.decode(Uint8List.sublistView(heap, ptr, end));
  }
  
  static void writeString(int ptr, String str) {
    final len = WasmMemory.lengthBytesUTF8(str);
    WasmMemory.stringToUTF8(str, ptr, len + 1); // +1 for null terminator
  }
  
  static int allocString(String text, [int? bufferSize]) {
    final len = _module.lengthBytesUTF8(text.toJS) + 1; // +1 for NUL
    final bufSize = bufferSize != null && bufferSize > len ? bufferSize : len;
    final ptr = WasmMemory.malloc(bufSize);
    _module.stringToUTF8(text.toJS, ptr, bufSize);
    return ptr;
  }
}

class WasmTypedDataListAlloc extends RaylibTempTypedDataListAllocator<
  RaylibTemp, WasmSizedPointer
> {
  WasmTypedDataListAlloc(super.temp);
}

class WasmRaylibTempUtils extends RaylibTempUtilsBase<RaylibTemp, int> {
  WasmRaylibTempUtils(super.temp);

  static const int nullptr = 0;

  @override
  int realloc(int oldPtr, int oldSize, int newSize) {
    if (newSize == 0) {
      if (oldPtr != nullptr) WasmMemory.free(oldPtr);
      return nullptr;
    }

    final newPtr = WasmMemory.malloc(newSize);

    if (oldPtr != nullptr) {
      final copySize = oldSize < newSize ? oldSize : newSize;
      if (copySize > 0) {
        WasmMemory.heapU8.setRange(newPtr, newPtr + copySize, WasmMemory.heapU8, oldPtr);
      }
      WasmMemory.free(oldPtr);
    }

    return newPtr;
  }

  @override
  void memset(int ptr, int value, int size)
    => WasmMemory.heapU8.fillRange(ptr, ptr + size, value);

  @override
  void memcpy(int dest, int src, int n) {
    WasmMemory.heapU8.setRange(dest, dest + n, WasmMemory.heapU8, src);
  }

  @override
  int memcmp(int a, int b, int n) {
    final heap = WasmMemory.heapU8;

    for (int i = 0; i < n; i++) {
      final diff = heap[a + i] - heap[b + i];
      if (diff != 0) return diff;
    }

    return 0;
  }

  @override
  int strlen(int ptr) {
    final heap = WasmMemory.heapU8;

    int i = 0;
    for (; heap[ptr + i] != 0; i++) {}

    return i;
  }

  @override
  int strcmp(int a, int b) {
    final heap = WasmMemory.heapU8;

    int i = 0;
    for (; heap[a + i] != 0 && heap[a + i] == heap[b + i]; i++) {}

    return heap[a + i] - heap[b + i];
  }

  @override
  void strcpy(int dest, int src) {
    final heap = WasmMemory.heapU8;

    int i = 0;
    for (; heap[src + i] != 0; i++) {
      heap[dest + i] = heap[src + i];
    }
    heap[dest + i] = 0;
  }

  @override
  void strncpy(int dest, int src, int n) {
    final heap = WasmMemory.heapU8;

    int i = 0;
    for (; i < n && heap[src + i] != 0; i++) {
      heap[dest + i] = heap[src + i];
    }
    for (; i < n; i++) {
      heap[dest + i] = 0;
    }
  }

  @override
  int strnlen(int ptr, int maxLen) {
    final heap = WasmMemory.heapU8;

    int i = 0;
    for (; i < maxLen && heap[ptr + i] != 0; i++) {}

    return i;
  }

  @override
  void strncat(int dest, int src, int n) {
    final heap = WasmMemory.heapU8;

    int destEnd = 0;
    while (heap[dest + destEnd] != 0) {
      destEnd++;
    }

    int i = 0;
    for (; i < n && heap[src + i] != 0; i++) {
      heap[dest + destEnd + i] = heap[src + i];
    }
    heap[dest + destEnd + i] = 0;
  }

  @override
  int strstr(int haystack, int needle) {
    final heap = WasmMemory.heapU8;

    // empty needle matches at the start of haystack
    if (heap[needle] == 0) return haystack;

    for (int i = 0; heap[haystack + i] != 0; i++) {
      int j = 0;
      for (; heap[needle + j] != 0 && heap[haystack + i + j] == heap[needle + j]; j++) {}
      if (heap[needle + j] == 0) return haystack + i;
    }

    return nullptr; // not found
  }
}

class WasmLitAllocators<
  X, P extends WasmSizedPointer<X>
> extends RaylibTempLitAllocators<
  WasmLitAlloc<X, P>, WasmLitPtrAlloc<X, WasmSizedPointerPointer<X, P>>
> {
  WasmLitAllocators(WasmLitAlloc<X, P> val) : super(
    val: val,
    ptr: .new(val.temp,
      pointerFactory: (ptr) => .new(ptr, val.pointerFactory),
      rawArrayFunc: val.RawArray,
    ),
  );
}

class WasmLitIntAllocators<
  L extends TypedDataList, P extends WasmSizedPointer<int>
> extends RaylibTempLitIntAllocators<
  WasmLitIntAlloc<L, P>, WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, P>>
> {
  WasmLitIntAllocators(WasmLitIntAlloc<L, P> val) : super(
    val: val,
    ptr: .new(val.temp,
      pointerFactory: (ptr) => .new(ptr, val.pointerFactory),
      rawArrayFunc: val.RawArray,
    ),
  );
}

class WasmLitFloatAllocators<
  L extends TypedDataList, P extends WasmSizedPointer<double>
> extends RaylibTempLitFloatAllocators<
  WasmLitFloatAlloc<L, P>, WasmLitPtrAlloc<double, WasmSizedPointerPointer<double, P>>
> {
  WasmLitFloatAllocators(WasmLitFloatAlloc<L, P> val) : super(
    val: val,
    ptr: .new(val.temp,
      pointerFactory: (ptr) => .new(ptr, val.pointerFactory),
      rawArrayFunc: val.RawArray,
    ),
  );
}

class WasmStructAllocators<
  D extends StructDWeb<D>
> extends RaylibTempStructAllocators<
  WasmStructAlloc<D>, WasmStructPtrAlloc<D>
> {
  WasmStructAllocators(WasmStructAlloc<D> val) : super(
    val: val,
    ptr: .new(val.temp,
      pointerFactory: (ptr) => .new(ptr, val.pointerFactory),
      valueFunc: val.Value,
      rawArrayFunc: val.RawArray,
    ),
  );
}

class RaylibTemp extends RaylibTempBase<Raylib> {
  RaylibTemp(super.rl, { super.options });

  @override late WasmRaylibTempUtils Utils;

  // special
  @override late WasmTypedDataListAlloc TypedDataList$;
  @override late WasmStringAlloc String$;

  // literals
  @override late WasmLitAllocators<bool, WasmBoolPointer> Bool$;
  @override late WasmLitIntAllocators<Int8List, WasmInt8Pointer> Int8$;
  @override late WasmLitIntAllocators<Uint8List, WasmUint8Pointer> Uint8$;
  @override late WasmLitIntAllocators<Int16List, WasmInt16Pointer> Int16$;
  @override late WasmLitIntAllocators<Uint16List, WasmUint16Pointer> Uint16$;
  @override late WasmLitIntAllocators<Int32List, WasmInt32Pointer> Int32$;
  @override late WasmLitIntAllocators<Uint32List, WasmUint32Pointer> Uint32$;
  @override late WasmLitIntAllocators<Int64List, WasmInt64Pointer> Int64$;
  @override late WasmLitIntAllocators<Uint64List, WasmUint64Pointer> Uint64$;
  @override late WasmLitFloatAllocators<Float32List, WasmFloat32Pointer> Float32$;
  @override late WasmLitFloatAllocators<Float64List, WasmFloat64Pointer> Float64$;
  @override late WasmLitIntAllocators<Int8List, WasmCharPointer> Char$;
  @override late WasmLitIntAllocators<Uint8List, WasmUnsignedCharPointer> UnsignedChar$;
  @override late WasmLitIntAllocators<Int16List, WasmShortPointer> Short$;
  @override late WasmLitIntAllocators<Uint16List, WasmUnsignedShortPointer> UnsignedShort$;
  @override late WasmLitIntAllocators<Int32List, WasmIntPointer> Int$;
  @override late WasmLitIntAllocators<Uint32List, WasmUnsignedIntPointer> UnsignedInt$;
  @override WasmLitFloatAllocators<Float32List, WasmFloat32Pointer> get Float$ => Float32$;
  @override WasmLitFloatAllocators<Float64List, WasmFloat64Pointer> get Double$ => Float64$;

  // structs
  @override late WasmStructAllocators<AutomationEventListD> AutomationEventList$;
  @override late WasmStructAllocators<AutomationEventD> AutomationEvent$;
  @override late WasmStructAllocators<AudioStreamD> AudioStream$;
  @override late WasmStructAllocators<BoneInfoD> BoneInfo$;
  @override late WasmStructAllocators<BoundingBoxD> BoundingBox$;
  @override late WasmStructAllocators<Camera2DD> Camera2D$;
  @override late WasmStructAllocators<Camera3DD> Camera3D$;
  @override late WasmStructAllocators<ColorD> Color$;
  @override late WasmStructAllocators<FilePathListD> FilePathList$;
  @override late WasmStructAllocators<FontD> Font$;
  @override late WasmStructAllocators<GestureEventD> GestureEvent$;
  @override late WasmStructAllocators<GlyphInfoD> GlyphInfo$;
  @override late WasmStructAllocators<ImageD> Image$;
  @override late WasmStructAllocators<LightD> Light$;
  @override late WasmStructAllocators<MaterialD> Material$;
  @override late WasmStructAllocators<MaterialMapD> MaterialMap$;
  @override late WasmStructAllocators<MatrixD> Matrix$;
  @override late WasmStructAllocators<MeshD> Mesh$;
  @override late WasmStructAllocators<ModelD> Model$;
  @override late WasmStructAllocators<ModelAnimationD> ModelAnimation$;
  @override late WasmStructAllocators<ModelSkeletonD> ModelSkeleton$;
  @override late WasmStructAllocators<MusicD> Music$;
  @override late WasmStructAllocators<NPatchInfoD> NPatchInfo$;
  @override late WasmStructAllocators<QuaternionD> Quaternion$;
  @override late WasmStructAllocators<RectangleD> Rectangle$;
  @override late WasmStructAllocators<RlDrawCallD> RlDrawCall$;
  @override late WasmStructAllocators<RlRenderBatchD> RlRenderBatch$;
  @override late WasmStructAllocators<RlVertexBufferD> RlVertexBuffer$;
  @override late WasmStructAllocators<RayD> Ray$;
  @override late WasmStructAllocators<RayCollisionD> RayCollision$;
  @override late WasmStructAllocators<RenderTextureD> RenderTexture$;
  @override late WasmStructAllocators<ShaderD> Shader$;
  @override late WasmStructAllocators<SoundD> Sound$;
  @override late WasmStructAllocators<TextureD> Texture$;
  @override late WasmStructAllocators<TransformD> Transform$;
  @override late WasmStructAllocators<Vector2D> Vector2$;
  @override late WasmStructAllocators<Vector3D> Vector3$;
  @override late WasmStructAllocators<Vector4D> Vector4$;
  @override late WasmStructAllocators<VrDeviceInfoD> VrDeviceInfo$;
  @override late WasmStructAllocators<VrStereoConfigD> VrStereoConfig$;
  @override late WasmStructAllocators<WaveD> Wave$;

  @override
  void load() {
    super.load();

    TypedDataList$ = .new(this);

    String$ = .new(this,
      slotCount: options.stringCount,
    );

    _initLiteralAllocators();
    _initStructAllocators();
  }

  void _initLiteralAllocators() {
    Bool$ = .new(.new(this,
      byteSize: WasmSize.Bool,
      pointerFactory: WasmBoolPointer.new,
    ));

    Int8$ = .new(.new(this,
      byteSize: WasmSize.Int8,
      pointerFactory: WasmInt8Pointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapI8.buffer.asInt8List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asInt8List(offset, len),
    ));

    Uint8$ = .new(.new(this,
      byteSize: WasmSize.Uint8,
      pointerFactory: WasmUint8Pointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapU8.buffer.asUint8List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asUint8List(offset, len),
    ));

    Int16$ = .new(.new(this,
      byteSize: WasmSize.Int16,
      pointerFactory: WasmInt16Pointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapI16.buffer.asInt16List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asInt16List(offset, len),
    ));

    Uint16$ = .new(.new(this,
      byteSize: WasmSize.Uint16,
      pointerFactory: WasmUint16Pointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapU16.buffer.asUint16List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asUint16List(offset, len),
    ));

    Int32$ = .new(.new(this,
      byteSize: WasmSize.Int32,
      pointerFactory: WasmInt32Pointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapI32.buffer.asInt32List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asInt32List(offset, len),
    ));

    Uint32$ = .new(.new(this,
      byteSize: WasmSize.Uint32,
      pointerFactory: WasmUint32Pointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapU32.buffer.asUint32List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asUint32List(offset, len),
    ));

    Int64$ = .new(.new(this,
      byteSize: WasmSize.Int64,
      pointerFactory: WasmInt64Pointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapI64.buffer.asInt64List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asInt64List(offset, len),
    ));

    Uint64$ = .new(.new(this,
      byteSize: WasmSize.Uint64,
      pointerFactory: WasmUint64Pointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapU64.buffer.asUint64List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asUint64List(offset, len),
    ));

    Float32$ =.new( WasmLitFloatAlloc(this,
      byteSize: WasmSize.Float32,
      pointerFactory: WasmFloat32Pointer.new,
      fromList: (list) => .fromList(list.cast<double>().toList()),
      asView: (ptr, len) => WasmMemory.heapF32.buffer.asFloat32List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asFloat32List(offset, len),
    ));

    Float64$ =.new( WasmLitFloatAlloc(this,
      byteSize: WasmSize.Float64,
      pointerFactory: WasmFloat64Pointer.new,
      fromList: (list) => .fromList(list.cast<double>().toList()),
      asView: (ptr, len) => WasmMemory.heapF64.buffer.asFloat64List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asFloat64List(offset, len),
    ));

    Char$ = .new(.new(this,
      byteSize: WasmSize.Int8,
      pointerFactory: WasmCharPointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapI8.buffer.asInt8List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asInt8List(offset, len),
    ));

    UnsignedChar$ = .new(.new(this,
      byteSize: WasmSize.Uint8,
      pointerFactory: WasmUnsignedCharPointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapU8.buffer.asUint8List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asUint8List(offset, len),
    ));

    Short$ = .new(.new(this,
      byteSize: WasmSize.Int16,
      pointerFactory: WasmShortPointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapI16.buffer.asInt16List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asInt16List(offset, len),
    ));

    UnsignedShort$ = .new(.new(this,
      byteSize: WasmSize.Uint16,
      pointerFactory: WasmUnsignedShortPointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapU16.buffer.asUint16List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asUint16List(offset, len),
    ));

    Int$ = .new(.new(this,
      byteSize: WasmSize.Int32,
      pointerFactory: WasmIntPointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapI32.buffer.asInt32List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asInt32List(offset, len),
    ));

    UnsignedInt$ = .new(.new(this,
      byteSize: WasmSize.Uint32,
      pointerFactory: WasmUnsignedIntPointer.new,
      fromList: (list) => .fromList(list.cast<int>().toList()),
      asView: (ptr, len) => WasmMemory.heapU32.buffer.asUint32List(ptr, len),
      fromBuffer: (buf, offset, len) => buf.asUint32List(offset, len),
    ));
  }

  void _initStructAllocators() {
    AutomationEventList$ = .new(.new(this,
      byteSize: AutomationEventListD.byteSize,
      factory: AutomationEventListD.new
    ));

    AutomationEvent$ = .new(.new(this,
      byteSize: AutomationEventD.byteSize,
      factory: AutomationEventD.new
    ));

    AudioStream$ = .new(.new(this,
      byteSize: AudioStreamD.byteSize,
      factory: AudioStreamD.new
    ));

    BoneInfo$ = .new(.new(this,
      byteSize: BoneInfoD.byteSize,
      factory: BoneInfoD.new
    ));

    BoundingBox$ = .new(.new(this,
      byteSize: BoundingBoxD.byteSize,
      factory: BoundingBoxD.new
    ));

    Camera2D$ = .new(.new(this,
      byteSize: Camera2DD.byteSize,
      factory: Camera2DD.new
    ));

    Camera3D$ = .new(.new(this,
      byteSize: Camera3DD.byteSize,
      factory: Camera3DD.new
    ));

    Color$ = .new(.new(this,
      byteSize: ColorD.byteSize,
      factory: ColorD.new
    ));

    FilePathList$ = .new(.new(this,
      byteSize: FilePathListD.byteSize,
      factory: FilePathListD.new
    ));

    Font$ = .new(.new(this,
      byteSize: FontD.byteSize,
      factory: FontD.new
    ));

    GestureEvent$ = .new(.new(this,
      byteSize: GestureEventD.byteSize,
      factory: GestureEventD.new
    ));

    GlyphInfo$ = .new(.new(this,
      byteSize: GlyphInfoD.byteSize,
      factory: GlyphInfoD.new
    ));

    Image$ = .new(.new(this,
      byteSize: ImageD.byteSize,
      factory: ImageD.new
    ));

    Light$ = .new(.new(this,
      byteSize: LightD.byteSize,
      factory: LightD.new
    ));

    MaterialMap$ = .new(.new(this,
      byteSize: MaterialMapD.byteSize,
      factory: MaterialMapD.new
    ));

    Material$ = .new(.new(this,
      byteSize: MaterialD.byteSize,
      factory: MaterialD.new
    ));

    Matrix$ = .new(.new(this,
      byteSize: MatrixD.byteSize,
      factory: MatrixD.new
    ));

    Mesh$ = .new(.new(this,
      byteSize: MeshD.byteSize,
      factory: MeshD.new
    ));

    ModelAnimation$ = .new(.new(this,
      byteSize: ModelAnimationD.byteSize,
      factory: ModelAnimationD.new
    ));

    ModelSkeleton$ = .new(.new(this,
      byteSize: ModelSkeletonD.byteSize,
      factory: ModelSkeletonD.new
    ));

    Model$ = .new(.new(this,
      byteSize: ModelD.byteSize,
      factory: ModelD.new
    ));

    Music$ = .new(.new(this,
      byteSize: MusicD.byteSize,
      factory: MusicD.new
    ));

    NPatchInfo$ = .new(.new(this,
      byteSize: NPatchInfoD.byteSize,
      factory: NPatchInfoD.new
    ));

    Quaternion$ = .new(.new(this,
      byteSize: QuaternionD.byteSize,
      factory: QuaternionD.new
    ));

    RayCollision$ = .new(.new(this,
      byteSize: RayCollisionD.byteSize,
      factory: RayCollisionD.new
    ));

    Ray$ = .new(.new(this,
      byteSize: RayD.byteSize,
      factory: RayD.new
    ));

    Rectangle$ = .new(.new(this,
      byteSize: RectangleD.byteSize,
      factory: RectangleD.new
    ));

    RlDrawCall$ = .new(.new(this,
      byteSize: RlDrawCallD.byteSize,
      factory: RlDrawCallD.new
    ));

    RlRenderBatch$ = .new(.new(this,
      byteSize: RlRenderBatchD.byteSize,
      factory: RlRenderBatchD.new
    ));

    RlVertexBuffer$ = .new(.new(this,
      byteSize: RlVertexBufferD.byteSize,
      factory: RlVertexBufferD.new
    ));

    RenderTexture$ = .new(.new(this,
      byteSize: RenderTextureD.byteSize,
      factory: RenderTextureD.new
    ));

    Shader$ = .new(.new(this,
      byteSize: ShaderD.byteSize,
      factory: ShaderD.new
    ));

    Sound$ = .new(.new(this,
      byteSize: SoundD.byteSize,
      factory: SoundD.new
    ));

    Texture$ = .new(.new(this,
      byteSize: TextureD.byteSize,
      factory: TextureD.new
    ));

    Transform$ = .new(.new(this,
      byteSize: TransformD.byteSize,
      factory: TransformD.new
    ));

    Vector2$ = .new(.new(this,
      byteSize: Vector2D.byteSize,
      factory: Vector2D.new
    ));

    Vector3$ = .new(.new(this,
      byteSize: Vector3D.byteSize,
      factory: Vector3D.new
    ));

    Vector4$ = .new(.new(this,
      byteSize: Vector4D.byteSize,
      factory: Vector4D.new
    ));

    VrDeviceInfo$ = .new(.new(this,
      byteSize: VrDeviceInfoD.byteSize,
      factory: VrDeviceInfoD.new
    ));

    VrStereoConfig$ = .new(.new(this,
      byteSize: VrStereoConfigD.byteSize,
      factory: VrStereoConfigD.new
    ));

    Wave$ = .new(.new(this,
      byteSize: WaveD.byteSize,
      factory: WaveD.new
    ));
  }
}
