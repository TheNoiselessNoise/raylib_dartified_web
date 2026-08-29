part of '../../../raylib_dartified_web.dart';

class RaylibLight extends RaylibModuleWasm {
  late final JSFunction CreateLight;
  late final JSFunction UpdateLightValues;

  RaylibLight(super.rl) {
    CreateLight = _module.dwrap('CreateLight', [n, n, n, n, n, n]);
    UpdateLightValues = _module.dwrap('UpdateLightValues', [n, n]);
  }
}