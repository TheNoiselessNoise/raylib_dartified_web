// Custom example, there's no original equivalent
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

void main() => Raylib((rl) {
  rl.CoreD.InitWindow(800, 450, "text_input_box");
  rl.CoreD.SetWindowMonitor(0);
  rl.CoreD.SetTargetFPS(60);

  String value = 'Hello, World!';

  bool? secretViewActive = false;

  rl.setMainLoop(() {
    rl.CoreD.BeginDrawing();

      rl.CoreD.ClearBackground(.WHITE);

      final (result, newValue, newSecretViewActive) = rl.GuiD.GuiTextInputBox(
        .rect(50, 50, 200, 120),
        'Title', // title, can be null
        'Some message', // message, can be null
        'OK', // buttons ';' seperated
        value, // text, can be null
        255, // textMaxSize
        secretViewActive, // secretViewActive, boolean, can be null
      );
      value = newValue;
      secretViewActive = newSecretViewActive;

      rl.CoreD.DrawText("RESULT: $result (0 = X button, 1 = OK button)", 50, 200, 20, .BLACK);
      rl.CoreD.DrawText("VALUE: $value", 50, 230, 20, .BLACK);

    rl.CoreD.EndDrawing();
  });
});