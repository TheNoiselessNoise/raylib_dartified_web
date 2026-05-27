// Example dartified, see original for reference:
// https://github.com/raysan5/raylib/blob/master/examples/core/core_basic_window.c
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

const int screenWidth = 800;
const int screenHeight = 450;

void main() => Raylib((rl) {
  rl.CoreD.InitWindow(screenWidth, screenHeight, 'core_basic_window');
  rl.CoreD.SetWindowMonitor(0);
  rl.CoreD.SetTargetFPS(60);

  rl.setMainLoop(() {
    rl.CoreD.BeginDrawing();

      rl.CoreD.ClearBackground(.RAYWHITE);
      rl.CoreD.DrawText(
        "Congrats! You created your first window!",
        190, 200, 20, .LIGHTGRAY
      );

    rl.CoreD.EndDrawing();
  });
});