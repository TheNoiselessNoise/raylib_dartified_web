import '../base_dart.dart';

void testBool() {
  final boolPtr = WasmMemory.malloc(WasmSize.Bool);

  print('=== Using WasmReader/WasmWriter ===');
  WasmWriter(boolPtr).Bool(true);
  print('1) Bool (true): ${WasmReader(boolPtr).Bool()}');
  WasmWriter(boolPtr).Bool(false);
  print('2) Bool (false): ${WasmReader(boolPtr).Bool()}');

  print('=== Using WasmMemory ===');
  WasmMemory.writeBool(boolPtr, true);
  print('1) Bool (true): ${WasmMemory.readBool(boolPtr)}');
  WasmMemory.writeBool(boolPtr, false);
  print('2) Bool (false): ${WasmMemory.readBool(boolPtr)}');
}

void testStringArray() {
  final list = <String>['foo', 'bar', 'baz'];

  // storing
  final arrayPtr = WasmMemory.malloc(WasmSize.Pointer * list.length);

  for (final (i, s) in list.indexed) {
    final sPtr = WasmMemory.allocString(s);
    WasmMemory.writePointer(arrayPtr, sPtr, i);
  }

  // reading
  final n = list.length;
  final readStrings = <String>[];
  for (int i = 0; i < n; i++) {
    final sPtr = WasmMemory.readPointer(arrayPtr, i);
    final value = WasmMemory.readString(sPtr);
    WasmMemory.free(sPtr);
    readStrings.add(value);
  }
  WasmMemory.free(arrayPtr);

  print('=== String Array ===');
  print('Original: $list');
  print('Memory: $readStrings');
}

void main() => Raylib((rl) {
  testBool();
  testStringArray();
});