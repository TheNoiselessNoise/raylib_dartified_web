// Custom example, there's no original equivalent
import '../base_dart.dart';

void main() => Raylib((rl) {
  InitWindow(800, 450, "text_input_box");
  SetWindowMonitor(0);
  SetTargetFPS(60);

  String value = 'Hello, World!';

  bool? secretViewActive = false;

  rl.setMainLoop(() {
    BeginDrawing();

      ClearBackground(.WHITE);

      final (result, newValue, newSecretViewActive) = GuiTextInputBox(
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

      DrawText("RESULT: $result (0 = X button, 1 = OK button)", 50, 200, 20, .BLACK);
      DrawText("VALUE: $value", 50, 230, 20, .BLACK);

    EndDrawing();
  });
});