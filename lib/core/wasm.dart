part of 'raylib_dartified_web.dart';

class WasmMemoryPointer<X extends RType> extends MemoryPointer<X> {
  final int _addr;

  WasmMemoryPointer(this._addr);

  void _f() => throw StateError('MemoryPointer has been freed.');

  void _fd(String method, List<Object?> args)
    => throw StateError('Tried to do `$method(${args.join(', ')})` on freed pointer.');

  void _p(String method, [Object? arg1, Object? arg2]) {
    if (!_isFreed) return;
    MemoryPointer.debug ? _fd(method, [arg1, arg2]) : _f();
  }

  @override
  WasmMemoryPointer<Y> cast<Y extends RType>() => .new(_addr);

  @override
  bool get isNull => _isFreed || _addr == 0;

  bool _isFreed = false;

  @override
  void free() {
    if (_addr == 0) return;
    _p('free');
    _isFreed = true;
    WasmMemory.free(_addr);
  }

  @override
  int get address => _addr;

  @override
  T to<T extends TypedDataList>(int length) {
    _p('to', T, length);
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
    _p('asView', T, length);
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
  String toDartString() {
    _p('toDartString');
    return WasmMemory.readString(_addr);
  }

  @override
  String toDartStringBounded(int maxLength) {
    _p('toDartStringBounded', maxLength);
    return WasmMemory.readString(_addr, maxLength);
  }

  @override
  WasmMemoryPointer<Y> offsetBy<Y extends RType>(int byteOffset) => .new(address + byteOffset);

  @override
  WasmMemoryPointer<Y> readPtr<Y extends RType>([int byteOffset = 0]) {
    _p('readPtr', Y, byteOffset);
    return .new(WasmMemory.readPtr(_addr, byteOffset));
  }

  @override
  void writePtr(MemoryPointer<RType>? value, [int byteOffset = 0]) {
    _p('writePtr', value?.address, byteOffset);
    return WasmMemory.writePtr(_addr, byteOffset, value?.address ?? 0);
  }

  @override int readSize([int byteOffset = 0]) { _p('readSize', byteOffset); return WasmMemory.readSize(_addr, byteOffset); }
  @override bool readBool([int byteOffset = 0]) { _p('readBool', byteOffset); return WasmMemory.readBool(_addr, byteOffset); }
  @override int readInt8([int byteOffset = 0]) { _p('readInt8', byteOffset); return WasmMemory.readInt8(_addr, byteOffset); }
  @override int readUint8([int byteOffset = 0]) { _p('readUint8', byteOffset); return WasmMemory.readUint8(_addr, byteOffset); }
  @override int readInt16([int byteOffset = 0]) { _p('readInt16', byteOffset); return WasmMemory.readInt16(_addr, byteOffset); }
  @override int readUint16([int byteOffset = 0]) { _p('readUint16', byteOffset); return WasmMemory.readUint16(_addr, byteOffset); }
  @override int readInt32([int byteOffset = 0]) { _p('readInt32', byteOffset); return WasmMemory.readInt32(_addr, byteOffset); }
  @override int readUint32([int byteOffset = 0]) { _p('readUint32', byteOffset); return WasmMemory.readUint32(_addr, byteOffset); }
  @override int readInt64([int byteOffset = 0]) { _p('readInt64', byteOffset); return WasmMemory.readInt64(_addr, byteOffset); }
  @override int readUint64([int byteOffset = 0]) { _p('readUint64', byteOffset); return WasmMemory.readUint64(_addr, byteOffset); }
  @override double readFloat32([int byteOffset = 0]) { _p('readFloat32', byteOffset); return WasmMemory.readFloat32(_addr, byteOffset); }
  @override double readFloat64([int byteOffset = 0]) { _p('readFloat64', byteOffset); return WasmMemory.readFloat64(_addr, byteOffset); }
  @override int readChar([int byteOffset = 0]) { _p('readChar', byteOffset); return WasmMemory.readChar(_addr, byteOffset); }
  @override int readUnsignedChar([int byteOffset = 0]) { _p('readUnsignedChar', byteOffset); return WasmMemory.readUnsignedChar(_addr, byteOffset); }
  @override int readShort([int byteOffset = 0]) { _p('readShort', byteOffset); return WasmMemory.readShort(_addr, byteOffset); }
  @override int readUnsignedShort([int byteOffset = 0]) { _p('readUnsignedShort', byteOffset); return WasmMemory.readUnsignedShort(_addr, byteOffset); }
  @override int readInt([int byteOffset = 0]) { _p('readInt', byteOffset); return WasmMemory.readInt(_addr, byteOffset); }
  @override int readUnsignedInt([int byteOffset = 0]) { _p('readUnsignedInt', byteOffset); return WasmMemory.readUnsignedInt(_addr, byteOffset); }
  @override double readFloat([int byteOffset = 0]) { _p('readFloat', byteOffset); return WasmMemory.readFloat(_addr, byteOffset); }
  @override double readDouble([int byteOffset = 0]) { _p('readDouble', byteOffset); return WasmMemory.readDouble(_addr, byteOffset); }

  @override void writeSize(int value, [int byteOffset = 0]) { _p('writeSize', value, byteOffset); WasmMemory.writeSize(_addr, value, byteOffset); }
  @override void writeBool(bool value, [int byteOffset = 0]) { _p('writeBool', value, byteOffset); WasmMemory.writeBool(_addr, value, byteOffset); }
  @override void writeInt8(int value, [int byteOffset = 0]) { _p('writeInt8', value, byteOffset); WasmMemory.writeInt8(_addr, value, byteOffset); }
  @override void writeUint8(int value, [int byteOffset = 0]) { _p('writeUint8', value, byteOffset); WasmMemory.writeUint8(_addr, value, byteOffset); }
  @override void writeInt16(int value, [int byteOffset = 0]) { _p('writeInt16', value, byteOffset); WasmMemory.writeInt16(_addr, value, byteOffset); }
  @override void writeUint16(int value, [int byteOffset = 0]) { _p('writeUint16', value, byteOffset); WasmMemory.writeUint16(_addr, value, byteOffset); }
  @override void writeInt32(int value, [int byteOffset = 0]) { _p('writeInt32', value, byteOffset); WasmMemory.writeInt32(_addr, value, byteOffset); }
  @override void writeUint32(int value, [int byteOffset = 0]) { _p('writeUint32', value, byteOffset); WasmMemory.writeUint32(_addr, value, byteOffset); }
  @override void writeInt64(int value, [int byteOffset = 0]) { _p('writeInt64', value, byteOffset); WasmMemory.writeInt64(_addr, value, byteOffset); }
  @override void writeUint64(int value, [int byteOffset = 0]) { _p('writeUint64', value, byteOffset); WasmMemory.writeUint64(_addr, value, byteOffset); }
  @override void writeFloat32(double value, [int byteOffset = 0]) { _p('writeFloat32', value, byteOffset); WasmMemory.writeFloat32(_addr, value, byteOffset); }
  @override void writeFloat64(double value, [int byteOffset = 0]) { _p('writeFloat64', value, byteOffset); WasmMemory.writeFloat64(_addr, value, byteOffset); }
  @override void writeChar(int value, [int byteOffset = 0]) { _p('writeChar', value, byteOffset); WasmMemory.writeChar(_addr, value, byteOffset); }
  @override void writeUnsignedChar(int value, [int byteOffset = 0]) { _p('writeUnsignedChar', value, byteOffset); WasmMemory.writeUnsignedChar(_addr, value, byteOffset); }
  @override void writeShort(int value, [int byteOffset = 0]) { _p('writeShort', value, byteOffset); WasmMemory.writeShort(_addr, value, byteOffset); }
  @override void writeUnsignedShort(int value, [int byteOffset = 0]) { _p('writeUnsignedShort', value, byteOffset); WasmMemory.writeUnsignedShort(_addr, value, byteOffset); }
  @override void writeInt(int value, [int byteOffset = 0]) { _p('writeInt', value, byteOffset); WasmMemory.writeInt(_addr, value, byteOffset); }
  @override void writeUnsignedInt(int value, [int byteOffset = 0]) { _p('writeUnsignedInt', value, byteOffset); WasmMemory.writeUnsignedInt(_addr, value, byteOffset); }
  @override void writeFloat(double value, [int byteOffset = 0]) { _p('writeFloat', value, byteOffset); WasmMemory.writeFloat(_addr, value, byteOffset); }
  @override void writeDouble(double value, [int byteOffset = 0]) { _p('writeDouble', value, byteOffset); WasmMemory.writeDouble(_addr, value, byteOffset); }
}

extension MemoryPointerAsWasmPointer on MemoryPointer {
  JSNumber get toJS => (this as WasmMemoryPointer).address.toJS;
}

extension StructPointerAsWasmPointer on StructPointer {
  JSNumber get toJS => ptr.toJS;
}

extension JSAnyAsMemoryPointer on JSAny? {
  WasmMemoryPointer<R> asMemoryPointer<R extends RType>() => .new(toInt());
}

class WasmType<T extends Object> {
  final int size;
  final int shift;
  final List<T> Function() heap;

  const WasmType(this.size, this.shift, this.heap);
}

class WasmTypes {
  static final Int8 = WasmType<int>(WasmSize.Int8, 0, () => WasmMemory.heapI8);
  static final Uint8 = WasmType<int>(WasmSize.Uint8, 0, () => WasmMemory.heapU8);
  static final Int16 = WasmType<int>(WasmSize.Int16, 1, () => WasmMemory.heapI16);
  static final Uint16 = WasmType<int>(WasmSize.Uint16, 1, () => WasmMemory.heapU16);
  static final Int32 = WasmType<int>(WasmSize.Int32, 2, () => WasmMemory.heapI32);
  static final Uint32 = WasmType<int>(WasmSize.Uint32, 2, () => WasmMemory.heapU32);
  static final Int64 = WasmType<int>(WasmSize.Int64, 3, () => WasmMemory.heapI64);
  static final Uint64 = WasmType<int>(WasmSize.Uint64, 3, () => WasmMemory.heapU64);
  static final Float32 = WasmType<double>(WasmSize.Float32, 2, () => WasmMemory.heapF32);
  static final Float64 = WasmType<double>(WasmSize.Float64, 3, () => WasmMemory.heapF64);

  // C-name aliases share the same underlying descriptor
  static final Char = Int8, UnsignedChar = Uint8;
  static final Short = Int16, UnsignedShort = Uint16;
  static final Int = Int32, UnsignedInt = Uint32;
  static final Float = Float32, Double = Float64;
}

class WasmSize {
  static const int Pointer       = Uint32;
  static   int get Size          => RType.isNative32Bit ? Uint32 : Uint64;
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

  static int readPtr(int ptr, [int offset = 0]) => readUint32(ptr, offset);
  static void writePtr(int ptr, int value, [int offset = 0]) => writeUint32(ptr, value, offset);

  static void writeSize(int ptr, int value, [int offset = 0]) => RType.isNative32Bit ? writeUint32(ptr, value, offset) : writeUint64(ptr, value, offset);
  static void writeBool(int ptr, bool value, [int offset = 0]) => write<int>(WasmTypes.Uint8, ptr, value ? 1 : 0, offset);
  static void writeInt8(int ptr, int value, [int offset = 0]) => write(WasmTypes.Int8, ptr, value, offset);
  static void writeUint8(int ptr, int value, [int offset = 0]) => write(WasmTypes.Uint8, ptr, value, offset);
  static void writeInt16(int ptr, int value, [int offset = 0]) => write(WasmTypes.Int16, ptr, value, offset);
  static void writeUint16(int ptr, int value, [int offset = 0]) => write(WasmTypes.Uint16, ptr, value, offset);
  static void writeInt32(int ptr, int value, [int offset = 0]) => write(WasmTypes.Int32, ptr, value, offset);
  static void writeUint32(int ptr, int value, [int offset = 0]) => write(WasmTypes.Uint32, ptr, value, offset);
  static void writeInt64(int ptr, int value, [int offset = 0]) => write(WasmTypes.Int64, ptr, value, offset);
  static void writeUint64(int ptr, int value, [int offset = 0]) => write(WasmTypes.Uint64, ptr, value, offset);
  static void writeFloat32(int ptr, double value, [int offset = 0]) => write(WasmTypes.Float32, ptr, value, offset);
  static void writeFloat64(int ptr, double value, [int offset = 0]) => write(WasmTypes.Float64, ptr, value, offset);
  static void writeChar(int ptr, int value, [int offset = 0]) => write(WasmTypes.Char, ptr, value, offset);
  static void writeUnsignedChar(int ptr, int value, [int offset = 0]) => write(WasmTypes.UnsignedChar, ptr, value, offset);
  static void writeShort(int ptr, int value, [int offset = 0]) => write(WasmTypes.Short, ptr, value, offset);
  static void writeUnsignedShort(int ptr, int value, [int offset = 0]) => write(WasmTypes.UnsignedShort, ptr, value, offset);
  static void writeInt(int ptr, int value, [int offset = 0]) => write(WasmTypes.Int, ptr, value, offset);
  static void writeUnsignedInt(int ptr, int value, [int offset = 0]) => write(WasmTypes.UnsignedInt, ptr, value, offset);
  static void writeFloat(int ptr, double value, [int offset = 0]) => write(WasmTypes.Float, ptr, value, offset);
  static void writeDouble(int ptr, double value, [int offset = 0]) => write(WasmTypes.Double, ptr, value, offset);

  static int readSize(int ptr, [int offset = 0]) => RType.isNative32Bit ? readUint32(ptr, offset) : readUint64(ptr, offset);
  static bool readBool(int ptr, [int offset = 0]) => read<int>(WasmTypes.Uint8, ptr, offset) != 0;
  static int readInt8(int ptr, [int offset = 0]) => read(WasmTypes.Int8, ptr, offset);
  static int readUint8(int ptr, [int offset = 0]) => read(WasmTypes.Uint8, ptr, offset);
  static int readInt16(int ptr, [int offset = 0]) => read(WasmTypes.Int16, ptr, offset);
  static int readUint16(int ptr, [int offset = 0]) => read(WasmTypes.Uint16, ptr, offset);
  static int readInt32(int ptr, [int offset = 0]) => read(WasmTypes.Int32, ptr, offset);
  static int readUint32(int ptr, [int offset = 0]) => read(WasmTypes.Uint32, ptr, offset);
  static int readInt64(int ptr, [int offset = 0]) => read(WasmTypes.Int64, ptr, offset);
  static int readUint64(int ptr, [int offset = 0]) => read(WasmTypes.Uint64, ptr, offset);
  static double readFloat32(int ptr, [int offset = 0]) => read(WasmTypes.Float32, ptr, offset);
  static double readFloat64(int ptr, [int offset = 0]) => read(WasmTypes.Float64, ptr, offset);
  static int readChar(int ptr, [int offset = 0]) => read(WasmTypes.Char, ptr, offset);
  static int readUnsignedChar(int ptr, [int offset = 0]) => read(WasmTypes.UnsignedChar, ptr, offset);
  static int readShort(int ptr, [int offset = 0]) => read(WasmTypes.Short, ptr, offset);
  static int readUnsignedShort(int ptr, [int offset = 0]) => read(WasmTypes.UnsignedShort, ptr, offset);
  static int readInt(int ptr, [int offset = 0]) => read(WasmTypes.Int, ptr, offset);
  static int readUnsignedInt(int ptr, [int offset = 0]) => read(WasmTypes.UnsignedInt, ptr, offset);
  static double readFloat(int ptr, [int offset = 0]) => read(WasmTypes.Float, ptr, offset);
  static double readDouble(int ptr, [int offset = 0]) => read(WasmTypes.Double, ptr, offset);

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