// Custom example, there's no original equivalent
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

void main() => Raylib((rl) {
  rl.CoreD.InitWindow(800, 450, "list_view");
  rl.CoreD.SetWindowMonitor(0);
  rl.CoreD.SetTargetFPS(60);

  List<String> keyNames = KeyboardKey.values.map((v) => v.name).toList();
  int scrollIndex = 0;
  int active = 0;
  int focus = 0;

  rl.setMainLoop(() {
    rl.CoreD.BeginDrawing();

      rl.CoreD.ClearBackground(.WHITE);

      final (_, newScrollIndex, newActive, newFocus) = rl.GuiD.GuiListViewEx(
        .rect(50, 50, 100, 200),
        keyNames,
        scrollIndex: scrollIndex,
        active: active,
        focus: focus,
      );
      scrollIndex = newScrollIndex!;
      active = newActive!;
      focus = newFocus!;
      
      rl.CoreD.DrawText("SCROLL INDEX: $scrollIndex [ at ${keyNames[scrollIndex]} ]", 50, 280, 20, .BLACK);

      final activeName = active == -1 ? '----' : keyNames[active];
      rl.CoreD.DrawText("ACTIVE: $active [ $activeName ]", 50, 310, 20, .BLACK);
      
      final focusName = focus == -1 ? '----' : keyNames[focus];
      rl.CoreD.DrawText("FOCUS: $focus [ $focusName ]", 50, 340, 20, .BLACK);

    rl.CoreD.EndDrawing();
  });
});