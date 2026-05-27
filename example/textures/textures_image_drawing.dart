// Example dartified, see original for reference:
// https://github.com/raysan5/raylib/blob/master/examples/textures/textures_image_drawing.c
// WARNING: expects resources from the raylib source
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

const int screenWidth = 800;
const int screenHeight = 450;

void main() => Raylib((rl) {
  rl.CoreD.InitWindow(screenWidth, screenHeight, "textures_image_drawing");
  rl.CoreD.SetWindowMonitor(0);
  rl.CoreD.SetTargetFPS(60);

  final cat = rl.CoreD.LoadImage("./resources/cat.png");
  rl.CoreD.ImageCrop(cat, .rect(100, 10, 280, 380));
  rl.CoreD.ImageFlipHorizontal(cat);
  rl.CoreD.ImageResize(cat, 150, 200);

  final parrots = rl.CoreD.LoadImage("./resources/parrots.png");

  rl.CoreD.ImageDraw(
    parrots, cat,
    .rect(0, 0, cat.width, cat.height),
    .rect(30, 40, cat.width*1.5, cat.height*1.5),
    .WHITE
  );

  rl.CoreD.ImageCrop(
    parrots,
    .rect(0, 50, parrots.width, parrots.height - 100)
  );

  rl.CoreD.ImageDrawPixel(parrots, 10, 10, .RAYWHITE);
  rl.CoreD.ImageDrawCircleLines(parrots, 10, 10, 5, .RAYWHITE);
  rl.CoreD.ImageDrawRectangle(parrots, 5, 20, 10, 10, .RAYWHITE);

  rl.CoreD.UnloadImage(cat);

  final font = rl.CoreD.LoadFont("./resources/custom_jupiter_crash.png");

  rl.CoreD.ImageDrawTextEx(
    parrots, font,
    "PARROTS & CAT",
    .vec2(300, 230),
    font.baseSize,
    -2,
    .WHITE
  );

  rl.CoreD.UnloadFont(font);

  final texture = rl.CoreD.LoadTextureFromImage(parrots);
  rl.CoreD.UnloadImage(parrots);

  rl.setMainLoop(() {
    rl.CoreD.BeginDrawing();

      rl.CoreD.ClearBackground(.RAYWHITE);

      int x = screenWidth~/2 - texture.width~/2;
      int y = screenHeight~/2 - texture.height~/2 - 40;

      rl.CoreD.DrawTexture(texture, x, y, .WHITE);
      rl.CoreD.DrawRectangleLines(x, y, texture.width, texture.height, .DARKGRAY);

      rl.CoreD.DrawText(
        "We are drawing only one texture from various images composed!",
        240, 350, 10, .DARKGRAY
      );
      rl.CoreD.DrawText(
        "Source images have been cropped, scaled, flipped and copied one over the other.",
        190, 370, 10, .DARKGRAY
      );

    rl.CoreD.EndDrawing();
  });
});