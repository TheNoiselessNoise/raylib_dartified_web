// Custom example, there's no original equivalent
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

const int screenWidth = 800;
const int screenHeight = 450;

void main() => Raylib((rl) {
  rl.CoreD.InitWindow(screenWidth, screenHeight, 'File Browser');
  rl.CoreD.SetWindowMonitor(0);
  rl.CoreD.SetTargetFPS(60);

  rl.setMainLoop(() {
    final mouseInfo = rl.CoreD.GetMouseInfo();
    
    rl.CoreD.BeginDrawing();
    rl.CoreD.ClearBackground(.RAYWHITE);

    int y = 20;

    rl.CoreD.DrawText('POSITION: ${mouseInfo.position}', 20, y+=20, 20, .BLUE);
    rl.CoreD.DrawText('DELTA: ${mouseInfo.delta}', 20, y+=20, 20, .RED);
    rl.CoreD.DrawText('WHEEL: ${mouseInfo.wheel}', 20, y+=20, 20, .ORANGE);

    y += 100;
    for (final button in MouseButton.values) {
      final buttonInfo = mouseInfo.getButtonInfo(button);

      final info = <String>[
        'DOWN: ${buttonInfo.down ? 'YES' : 'NO'}',
        'UP: ${buttonInfo.up ? 'YES' : 'NO'}',
        'PRESSED: ${buttonInfo.pressed ? 'YES' : 'NO'}',
        'RELEASED: ${buttonInfo.released ? 'YES' : 'NO'}',
      ];
      final row = '${button.name}: [ ${info.join(', ')} ]';
      rl.CoreD.DrawText(row, 20, y+=20, 18, .BLACK);

    }

    rl.CoreD.EndDrawing();
  });
});