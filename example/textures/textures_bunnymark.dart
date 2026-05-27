// Example dartified, see original for reference:
// https://github.com/raysan5/raylib/blob/master/examples/textures/textures_bunnymark.c
// WARNING: expects resources from the raylib source
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

const int screenWidth = 800;
const int screenHeight = 450;
const int MAX_BUNNIES = 50000;
const int MAX_BATCH_ELEMENTS = 8192;

class Bunny {
  Vector2D position;
  Vector2D speed;
  ColorD color;

  Bunny({
    required this.position,
    required this.speed,
    required this.color,
  });
}

void main() => Raylib((rl) {
  rl.CoreD.InitWindow(screenWidth, screenHeight, "textures_bunnymark");
  rl.CoreD.SetWindowMonitor(0);
  rl.CoreD.SetTargetFPS(120);

  final texBunny = rl.CoreD.LoadTexture("./resources/wabbit_alpha.png");
  final bunnies = <Bunny>[];

  rl.setMainLoop(() {
    if (rl.CoreD.IsMouseButtonDown(.MOUSE_BUTTON_LEFT))
    {
      for (int i = 0; i < 100; i++)
      {
        if (bunnies.length < MAX_BUNNIES)
        {
          bunnies.add(.new(
            position: rl.CoreD.GetMousePosition(),
            speed: .new(
              x: rl.CoreD.GetRandomValue(-250, 250)/60.0,
              y: rl.CoreD.GetRandomValue(-250, 250)/60.0,
            ),
            color: .new(
              r: rl.CoreD.GetRandomValue(50, 240),
              g: rl.CoreD.GetRandomValue(80, 240),
              b: rl.CoreD.GetRandomValue(100, 240),
              a: 255,
            ),
          ));
        }
      }
    }

    for (int i = 0; i < bunnies.length; i++)
    {
      bunnies[i].position.x += bunnies[i].speed.x;
      bunnies[i].position.y += bunnies[i].speed.y;

      if (((bunnies[i].position.x + texBunny.width/2) > rl.CoreD.GetScreenWidth()) ||
          ((bunnies[i].position.x + texBunny.width/2) < 0)) bunnies[i].speed.x *= -1;
      if (((bunnies[i].position.y + texBunny.height/2) > rl.CoreD.GetScreenHeight()) ||
          ((bunnies[i].position.y + texBunny.height/2 - 40) < 0)) bunnies[i].speed.y *= -1;
    }

    // ~6 FPS with all 50000 bunnies
    {
      rl.CoreD.BeginDrawing();
        rl.CoreD.ClearBackground(.RAYWHITE);

        for (int i = 0; i < bunnies.length; i++)
        {
          rl.CoreD.DrawTexture(
            texBunny,
            bunnies[i].position.x,
            bunnies[i].position.y,
            bunnies[i].color,
          );
        }

        DrawInformation(rl, bunnies);
      rl.CoreD.EndDrawing();
    }
  });
});

void DrawInformation(Raylib rl, List<Bunny> bunnies) {
  rl.CoreD.DrawRectangle(0, 0, screenWidth, 40, .BLACK);
  rl.CoreD.DrawText(
    "bunnies: ${bunnies.length}",
    120, 10, 20, .GREEN
  );
  rl.CoreD.DrawText(
    "batched draw calls: ${1 + bunnies.length/MAX_BATCH_ELEMENTS}",
    320, 10, 20, .MAROON
  );

  rl.CoreD.DrawFPS(10, 10);
}