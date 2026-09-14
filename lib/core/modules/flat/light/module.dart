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
  ) => rl.Temp.Light$.RefCapture(
    RaylibCaptureIds.CreateLight,
    (p) => _wasm.CreateLight.run([
      p.toJS,
      type.toJS,
      rl.Temp.Vector3$.Ref1(position).toJS,
      rl.Temp.Vector3$.Ref2(target).toJS,
      rl.Temp.Color$.Ref1(color).toJS,
      rl.Temp.Shader$.Ref1(shader).toJS,
    ]),
  );

  @override
  void UpdateLightValues(
    ShaderD shader,
    LightD light,
  ) => _wasm.UpdateLightValues.run([
    rl.Temp.Shader$.Ref1(shader).toJS,
    rl.Temp.Light$.Ref1(light).toJS,
  ]);
}
