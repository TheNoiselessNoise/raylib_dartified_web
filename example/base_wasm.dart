export 'package:raylib_dartified_web/raylib_dartified_web.dart';
export 'package:raylib_dartified_web/abbr/wasm.dart';
import 'dart:js_interop';
import '';

extension StringToRaylibC on String {
  JSNumber get toC => String$.Value(this).toJS;
}