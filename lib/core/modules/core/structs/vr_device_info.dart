part of '../../../raylib_dartified_web.dart';

enum _VrDeviceInfoOffsets with _WasmOffsets {
  hResolution,
  vResolution,
  hScreenSize,
  vScreenSize,
  eyeToScreenDistance,
  lensSeparationDistance,
  interpupillaryDistance,
  lensDistortionValues,
  chromaAbCorrection,
}

class VrDeviceInfoD extends StructDWeb<VrDeviceInfoD> with VrDeviceInfoBase<VrDeviceInfoD> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_VrDeviceInfoOffsets> _o = .fromMap({
    .hResolution:            WasmSize.Int32,
    .vResolution:            WasmSize.Int32,
    .hScreenSize:            WasmSize.Float32,
    .vScreenSize:            WasmSize.Float32,
    .eyeToScreenDistance:    WasmSize.Float32,
    .lensSeparationDistance: WasmSize.Float32,
    .interpupillaryDistance: WasmSize.Float32,
    .lensDistortionValues:   WasmSize.Float32 * VrDeviceInfoBase.BASE_paramsCount,
    .chromaAbCorrection:     WasmSize.Float32 * VrDeviceInfoBase.BASE_paramsCount,
  });

  static WasmStructPointer<VrDeviceInfoD> wasmPointer(int ptr) => .new(ptr, VrDeviceInfoD.new, byteSize);
  static WasmStructPointerPointer<VrDeviceInfoD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  int _hResolution;
  @override get hResolution {
    structOnOp((p) => _hResolution = p.readerAt(_o[.hResolution]).Int32());
    return _hResolution;
  }
  @override set hResolution(int value) {
    _hResolution = value;
    structOnOp((p) => p.writerAt(_o[.hResolution]).Int32(value));
  }

  int _vResolution;
  @override get vResolution {
    structOnOp((p) => _vResolution = p.readerAt(_o[.vResolution]).Int32());
    return _vResolution;
  }
  @override set vResolution(int value) {
    _vResolution = value;
    structOnOp((p) => p.writerAt(_o[.vResolution]).Int32(value));
  }

  double _hScreenSize;
  @override get hScreenSize {
    structOnOp((p) => _hScreenSize = p.readerAt(_o[.hScreenSize]).Float32());
    return _hScreenSize;
  }
  @override set hScreenSize(double value) {
    _hScreenSize = value;
    structOnOp((p) => p.writerAt(_o[.hScreenSize]).Float32(value));
  }

  double _vScreenSize;
  @override get vScreenSize {
    structOnOp((p) => _vScreenSize = p.readerAt(_o[.vScreenSize]).Float32());
    return _vScreenSize;
  }
  @override set vScreenSize(double value) {
    _vScreenSize = value;
    structOnOp((p) => p.writerAt(_o[.vScreenSize]).Float32(value));
  }

  double _eyeToScreenDistance;
  @override get eyeToScreenDistance {
    structOnOp((p) => _eyeToScreenDistance = p.readerAt(_o[.eyeToScreenDistance]).Float32());
    return _eyeToScreenDistance;
  }
  @override set eyeToScreenDistance(double value) {
    _eyeToScreenDistance = value;
    structOnOp((p) => p.writerAt(_o[.eyeToScreenDistance]).Float32(value));
  }

  double _lensSeparationDistance;
  @override get lensSeparationDistance {
    structOnOp((p) => _lensSeparationDistance = p.readerAt(_o[.lensSeparationDistance]).Float32());
    return _lensSeparationDistance;
  }
  @override set lensSeparationDistance(double value) {
    _lensSeparationDistance = value;
    structOnOp((p) => p.writerAt(_o[.lensSeparationDistance]).Float32(value));
  }

  double _interpupillaryDistance;
  @override get interpupillaryDistance {
    structOnOp((p) => _interpupillaryDistance = p.readerAt(_o[.interpupillaryDistance]).Float32());
    return _interpupillaryDistance;
  }
  @override set interpupillaryDistance(double value) {
    _interpupillaryDistance = value;
    structOnOp((p) => p.writerAt(_o[.interpupillaryDistance]).Float32(value));
  }

  late WasmLiveListArrayFloat32 _lensDistortionValues;
  @override get lensDistortionValues {
    structOnOp((p) => _lensDistortionValues.ptr = .new(p.readerAt(_o[.lensDistortionValues]).pointer()));
    return _lensDistortionValues;
  }
  @override set lensDistortionValues(List<double> value) {
    assert(value.length <= paramsCount);
    structOnOp((p) => _lensDistortionValues.ptr = .new(p.readerAt(_o[.lensDistortionValues]).pointer()));
    _lensDistortionValues.inner = value;
  }

  late WasmLiveListArrayFloat32 _chromaAbCorrection;
  @override get chromaAbCorrection {
    structOnOp((p) => _chromaAbCorrection.ptr = .new(p.readerAt(_o[.chromaAbCorrection]).pointer()));
    return _chromaAbCorrection;
  }
  @override set chromaAbCorrection(List<double> value) {
    assert(value.length <= paramsCount);
    structOnOp((p) => _chromaAbCorrection.ptr = .new(p.readerAt(_o[.chromaAbCorrection]).pointer()));
    _chromaAbCorrection.inner = value;
  }

  @override
  int get wasmByteSize => byteSize;

  VrDeviceInfoD({
    super.originalPointer,
    int hResolution = 0,
    int vResolution = 0,
    double hScreenSize = 0,
    double vScreenSize = 0,
    double eyeToScreenDistance = 0,
    double lensSeparationDistance = 0,
    double interpupillaryDistance = 0,
    List<double>? lensDistortionValues,
    List<double>? chromaAbCorrection,
  }) :
    _hResolution = hResolution,
    _vResolution = vResolution,
    _hScreenSize = hScreenSize,
    _vScreenSize = vScreenSize,
    _eyeToScreenDistance = eyeToScreenDistance,
    _lensSeparationDistance = lensSeparationDistance,
    _interpupillaryDistance = interpupillaryDistance
  {
    _lensDistortionValues = .new(
      lensDistortionValues ?? .filled(paramsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.lensDistortionValues]).pointer())
    );
    
    _chromaAbCorrection = .new(
      chromaAbCorrection ?? .filled(paramsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.chromaAbCorrection]).pointer())
    );
  }

  factory VrDeviceInfoD.zero() => .new();

  @override
  VrDeviceInfoD setD(VrDeviceInfoD o) {
    hResolution = o.hResolution;
    vResolution = o.vResolution;
    hScreenSize = o.hScreenSize;
    vScreenSize = o.vScreenSize;
    eyeToScreenDistance = o.eyeToScreenDistance;
    lensSeparationDistance = o.lensSeparationDistance;
    interpupillaryDistance = o.interpupillaryDistance;
    lensDistortionValues = .from(o.lensDistortionValues);
    chromaAbCorrection = .from(o.chromaAbCorrection);
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Int32(hResolution);
    writer.Int32(vResolution);
    writer.Float32(hScreenSize);
    writer.Float32(vScreenSize);
    writer.Float32(eyeToScreenDistance);
    writer.Float32(lensSeparationDistance);
    writer.Float32(interpupillaryDistance);
    writer.Float32Array(_lensDistortionValues.inner);
    writer.Float32Array(_chromaAbCorrection.inner);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    hResolution = reader.Int32();
    vResolution = reader.Int32();
    hScreenSize = reader.Float32();
    vScreenSize = reader.Float32();
    eyeToScreenDistance = reader.Float32();
    lensSeparationDistance = reader.Float32();
    interpupillaryDistance = reader.Float32();
    lensDistortionValues = reader.Float32Array(paramsCount);
    chromaAbCorrection = reader.Float32Array(paramsCount);
  }

  @override
  VrDeviceInfoD clone() => .new(
    originalPointer: originalPointer,
    hResolution: hResolution,
    vResolution: vResolution,
    hScreenSize: hScreenSize,
    vScreenSize: vScreenSize,
    eyeToScreenDistance: eyeToScreenDistance,
    lensSeparationDistance: lensSeparationDistance,
    interpupillaryDistance: interpupillaryDistance,
    lensDistortionValues: .from(lensDistortionValues),
    chromaAbCorrection: .from(chromaAbCorrection),
  );
}