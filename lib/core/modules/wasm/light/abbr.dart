import 'dart:js_interop';
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibLight get _module => Raylib.instance.Light;

/// See [RaylibLight.CreateLight].
JSFunction get CreateLight => _module.CreateLight;
/// See [RaylibLight.UpdateLightValues].
JSFunction get UpdateLightValues => _module.UpdateLightValues;