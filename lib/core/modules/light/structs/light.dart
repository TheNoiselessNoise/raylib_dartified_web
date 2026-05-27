part of '../../../raylib_dartified_web.dart';

enum _LightOffsets with _WasmOffsets {
  type,
  enabled,
  position,
  target,
  color,
  attenuation,
  enabledLoc,
  typeLoc,
  positionLoc,
  targetLoc,
  colorLoc,
  attenuationLoc,
}

class LightD extends StructDWeb<LightD> with LightBase<
  LightD,
  Vector3D,
  MatrixD,
  QuaternionD,
  Vector4D,
  ColorD
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_LightOffsets> _o = .fromMap({
    .type:           WasmSize.Int32,
    .enabled:        WasmSize.Boolean,
    .position:       Vector3D.byteSize,
    .target:         Vector3D.byteSize,
    .color:          ColorD.byteSize,
    .attenuation:    WasmSize.Float32,
    .enabledLoc:     WasmSize.Int32,
    .typeLoc:        WasmSize.Int32,
    .positionLoc:    WasmSize.Int32,
    .targetLoc:      WasmSize.Int32,
    .colorLoc:       WasmSize.Int32,
    .attenuationLoc: WasmSize.Int32,
  });

  static WasmStructPointer<LightD> wasmPointer(int ptr) => .new(ptr, LightD.new, byteSize);
  static WasmStructPointerPointer<LightD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  @override
  LightType type;
  
  @override
  bool enabled;
  
  @override
  Vector3D position;
  
  @override
  Vector3D target;
  
  @override
  ColorD color;
  
  @override
  double attenuation;
  
  @override
  int enabledLoc;
  
  @override
  int typeLoc;
  
  @override
  int positionLoc;
  
  @override
  int targetLoc;
  
  @override
  int colorLoc;
  
  @override
  int attenuationLoc;

  @override
  int get wasmByteSize => byteSize;

  LightD({
    super.originalPointer,
    this.type = .LIGHT_POINT,
    this.enabled = false,
    Vector3D? position,
    Vector3D? target,
    ColorD? color,
    this.attenuation = 0,
    this.enabledLoc = 0,
    this.typeLoc = 0,
    this.positionLoc = 0,
    this.targetLoc = 0,
    this.colorLoc = 0,
    this.attenuationLoc = 0,
  }) :
    position = position ?? .zero(),
    target = target ?? .zero(),
    color = color ?? .zero();

  factory LightD.zero() => .new();

  @override
  LightD setD(LightD o) {
    type = o.type;
    enabled = o.enabled;
    position.setD(o.position);
    target.setD(o.target);
    color.setD(o.color);
    attenuation = o.attenuation;
    enabledLoc = o.enabledLoc;
    typeLoc = o.typeLoc;
    positionLoc = o.positionLoc;
    targetLoc = o.targetLoc;
    colorLoc = o.colorLoc;
    attenuationLoc = o.attenuationLoc;
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Int32(type.value);
    writer.Int32(enabled ? 1 : 0);
    writer.struct(position);
    writer.struct(target);
    writer.struct(color);
    writer.Float32(attenuation);
    writer.Int32(enabledLoc);
    writer.Int32(typeLoc);
    writer.Int32(positionLoc);
    writer.Int32(targetLoc);
    writer.Int32(colorLoc);
    writer.Int32(attenuationLoc);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    type = .fromValue(reader.Int32());
    enabled = reader.Int32() != 0;
    reader.struct(position);
    reader.struct(target);
    reader.struct(color);
    attenuation = reader.Float32();
    enabledLoc = reader.Int32();
    typeLoc = reader.Int32();
    positionLoc = reader.Int32();
    targetLoc = reader.Int32();
    colorLoc = reader.Int32();
    attenuationLoc = reader.Int32();
  }

  @override
  LightD clone() => .new(
    originalPointer: originalPointer,
    type: type,
    enabled: enabled,
    position: position.clone(),
    target: target.clone(),
    color: color.clone(),
    attenuation: attenuation,
    enabledLoc: enabledLoc,
    typeLoc: typeLoc,
    positionLoc: positionLoc,
    targetLoc: targetLoc,
    colorLoc: colorLoc,
    attenuationLoc: attenuationLoc,
  );
}