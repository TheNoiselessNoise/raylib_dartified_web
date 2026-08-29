import 'dart:js_interop';
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibLight get _module => Raylib.instance.Light;

JSFunction get CreateLight => _module.CreateLight;
JSFunction get UpdateLightValues => _module.UpdateLightValues;