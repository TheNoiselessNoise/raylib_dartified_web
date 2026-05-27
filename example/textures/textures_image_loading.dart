// Example dartified, see original for reference:
// https://github.com/raysan5/raylib/blob/master/examples/textures/textures_image_loading.c
// WARNING: expects resources from the raylib source
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

const int screenWidth = 800;
const int screenHeight = 450;

void main() => Raylib((rl) {
  rl.CoreD.InitWindow(screenWidth, screenHeight, "textures_image_loading");
  rl.CoreD.SetWindowMonitor(0);
  rl.CoreD.SetTargetFPS(60);

  final image = rl.CoreD.LoadImage("./resources/raylib_logo.png");
  final texture = rl.CoreD.LoadTextureFromImage(image);
  rl.CoreD.UnloadImage(image);

  rl.setMainLoop(() {
    rl.CoreD.BeginDrawing();

      rl.CoreD.ClearBackground(.RAYWHITE);

      rl.CoreD.DrawTexture(
        texture,
        screenWidth/2 - texture.width/2,
        screenHeight/2 - texture.height/2,
        .WHITE
      );

      rl.CoreD.DrawText(
        "this IS a texture loaded from an image!",
        300, 370, 10, .GRAY
      );

    rl.CoreD.EndDrawing();
  });
});