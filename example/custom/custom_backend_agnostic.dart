import 'dart:typed_data';
import '../base_dart.dart';

class BackendAgnostic extends RaylibGameBase<Raylib> {
  final int screenWidth;
  final int screenHeight;
  final String title;

  BackendAgnostic(this.screenWidth, this.screenHeight, this.title);

  @override
  bool shouldClose(_) => true;

  @override
  void init(_) {
    InitWindow(screenWidth, screenHeight, title);

    // 4x4 solid red image
    final image = GenImageColor(4, 4, RED);

    final (data, dataSize) = ExportImageToMemory(image, '.png');

    if (data.isNull) {
      print('ExportImageToMemory failed, got null pointer');
      UnloadImage(image);
      return;
    }

    final bytes = data.to<Uint8List>(dataSize);
    data.free();
    UnloadImage(image);

    print('dataSize: $dataSize');
    print('first 16 bytes: ${bytes.take(16).toList()}');
    print('PNG signature ok: ${bytes[0] == 0x89 && bytes[1] == 0x50 && bytes[2] == 0x4E && bytes[3] == 0x47}');
  }

  @override
  Future<void> loop(_) async {
    if (currentRaylibPlatform == .native) {
      await Future.delayed(Duration.zero);
    }
  }
}

void main() => runRaylib(
  BackendAgnostic(800, 450, 'custom_backend_agnostic'),
  nativeLibPath: 'raylib-6.0_linux_amd64/lib',
);