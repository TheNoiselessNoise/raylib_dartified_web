// Custom example, there's no original equivalent
// WARNING: expects some example specific resources
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

const int screenWidth = 800;
const int screenHeight = 450;

void main() => Raylib((rl) {
  rl.CoreD.InitWindow(screenWidth, screenHeight, "tab_bar");
  rl.CoreD.SetWindowMonitor(0);
  rl.CoreD.SetTargetFPS(60);

  final image = rl.CoreD.LoadImage('./resources/image.jpg');
  final pallete = rl.CoreD.LoadImagePalette(image, 128); // NOTE: max 128 colors please
  int pixelSize = 48;
  final pixelPad = 8;

  rl.setMainLoop(() {
    final mouse = rl.CoreD.GetMousePosition();

    rl.CoreD.BeginDrawing();

    rl.CoreD.ClearBackground(.WHITE);

    final cols = screenWidth ~/ (pixelSize + pixelPad);

    for (int i = 0; i < pallete.length; i++) {
      final x = (i % cols) * (pixelSize + pixelPad) + pixelPad;
      final y = (i ~/ cols) * (pixelSize + pixelPad) + pixelPad;
      final RectangleD pixelRect = .rect(x, y, pixelSize, pixelSize);

      if (rl.CoreD.CheckCollisionPointRec(mouse, pixelRect)) {
        rl.CoreD.DrawRectangleRec(
          .rect(x-pixelPad/2, y-pixelPad/2, pixelSize+pixelPad, pixelSize+pixelPad),
          rl.CoreD.Fade(pallete[i], .5),
        );
      }

      rl.CoreD.DrawRectangleRec(pixelRect, pallete[i]);

      final fontSize = (pixelSize / 8).clamp(6, 20).toInt();
      rl.CoreD.DrawText(pallete[i].toHex(), x + 2, y + (pixelSize / 2), fontSize, .WHITE);
    }

    rl.CoreD.DrawText('Pallete Size: ${pallete.length}', 20, screenHeight - 30, 20, .BLACK);

    rl.CoreD.DrawText('Pixel Size: $pixelSize', 200, screenHeight - 30, 20, .BLACK);

    final (_, newValue) = rl.GuiD.GuiSlider(
      .rect(360, screenHeight - 30, 100, 20),
      null, null, pixelSize, 8, 128,
    );
    pixelSize = newValue.toInt();

    rl.CoreD.EndDrawing();
  });
});