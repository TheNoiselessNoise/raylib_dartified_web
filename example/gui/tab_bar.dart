// Custom example, there's no original equivalent
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

void main() => Raylib((rl) {
  rl.CoreD.InitWindow(800, 450, "tab_bar");
  rl.CoreD.SetWindowMonitor(0);
  rl.CoreD.SetTargetFPS(60);

  final tabs = <String>["one", "two", "three"];

  rl.setMainLoop(() {
    rl.CoreD.BeginDrawing();

      rl.CoreD.ClearBackground(.WHITE);

      final (result, active) = rl.GuiD.GuiTabBar(
        .rect(24, 24, 120, 30),
        tabs,
      );

      rl.CoreD.DrawText("CURRENT TAB: ${tabs[active]}", 50, 300, 20, .BLACK);

    rl.CoreD.EndDrawing();
  });
});