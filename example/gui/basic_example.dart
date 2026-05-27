// Custom example, there's no original equivalent
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

void main() => Raylib((rl) {
  rl.CoreD.InitWindow(400, 200, "basic_example");
  rl.CoreD.SetWindowMonitor(0);
  rl.CoreD.SetTargetFPS(60);

  bool showMessageBox = false;

  rl.setMainLoop(() {
    rl.CoreD.BeginDrawing();

      final style = rl.GuiD.GuiGetStyle(.DEFAULT, GuiDefaultProperty.BACKGROUND_COLOR);
      rl.CoreD.ClearBackground(rl.CoreD.GetColor(style));

      if (rl.GuiD.GuiButton(
        .rect(24, 24, 120, 30),
        "#191#Show Message"
      ) != 0) showMessageBox = true;

      if (showMessageBox)
      {
        int result = rl.GuiD.GuiMessageBox(
          .rect(85, 70, 250, 100),
          "#191#Message Box",
          "Hi! This is a message!",
          "Nice;Cool"
        );

        if (result >= 0) {
          showMessageBox = false;
        }
      }

    rl.CoreD.EndDrawing();
  });
});