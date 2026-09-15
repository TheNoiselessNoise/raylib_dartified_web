part of '../../../raylib_dartified_web.dart';

class RaylibLightFlat extends RaylibLightFlatModule<Raylib> {

  RaylibLightFlat(super.rl);

  RaylibLight get _wasm => rl.module();

  @override
  LightD CreateLight(
    int type,
    Vector3D position,
    Vector3D target,
    ColorD color,
    ShaderD shader,
  ) => $.Light$.RefCapture(
    RaylibCaptureIds.CreateLight,
    (p) => _wasm.CreateLight(
      p.toJS,
      type.toJS,
      $.Vector3$.Ref1(position).toJS,
      $.Vector3$.Ref2(target).toJS,
      $.Color$.Ref1(color).toJS,
      $.Shader$.Ref1(shader).toJS,
    ),
  );

  @override
  void UpdateLightValues(
    ShaderD shader,
    LightD light,
  ) => _wasm.UpdateLightValues(
    $.Shader$.Ref1(shader).toJS,
    $.Light$.Ref1(light).toJS,
  );
}
