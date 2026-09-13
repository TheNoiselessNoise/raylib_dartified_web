part of '../../../raylib_dartified_web.dart';

class RaylibLight extends RaylibModuleWasm {
  /// Create a light and get its shader locations
  late final JSFunction CreateLight;
  /// Send light properties to shader
  late final JSFunction UpdateLightValues;

  RaylibLight(super.rl) {
    CreateLight       = _module.dwrap('CreateLight',       n6, rv);
    UpdateLightValues = _module.dwrap('UpdateLightValues', n2, rv);
  }
}