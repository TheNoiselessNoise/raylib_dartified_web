import '../base_flat.dart';

void main() => Raylib((rl) {
  final hello = String$.Value('hello, world!');

  print('=== DOES `s` argument work if use it like a `number`? ===');
  print(TextToUpper(hello).toDartString());
});