part of '../../../raylib_dartified_web.dart';

enum _VrStereoConfigOffsets with _WasmOffsets {
  projection,
  viewOffset,
  leftLensCenter,
  rightLensCenter,
  leftScreenCenter,
  rightScreenCenter,
  scale,
  scaleIn,
}

class VrStereoConfigD extends StructDWeb<VrStereoConfigD> with VrStereoConfigBase<
  VrStereoConfigD,
  MatrixD,
  Vector3D,
  QuaternionD,
  Vector4D
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_VrStereoConfigOffsets> _o = .fromMap({
    .projection:        MatrixD.byteSize * VrStereoConfigBase.BASE_paramsCount,
    .viewOffset:        MatrixD.byteSize * VrStereoConfigBase.BASE_paramsCount,
    .leftLensCenter:    WasmSize.Float32 * VrStereoConfigBase.BASE_paramsCount,
    .rightLensCenter:   WasmSize.Float32 * VrStereoConfigBase.BASE_paramsCount,
    .leftScreenCenter:  WasmSize.Float32 * VrStereoConfigBase.BASE_paramsCount,
    .rightScreenCenter: WasmSize.Float32 * VrStereoConfigBase.BASE_paramsCount,
    .scale:             WasmSize.Float32 * VrStereoConfigBase.BASE_paramsCount,
    .scaleIn:           WasmSize.Float32 * VrStereoConfigBase.BASE_paramsCount,
  });

  static WasmStructPointer<VrStereoConfigD> wasmPointer(int ptr) => .new(ptr, VrStereoConfigD.new, byteSize);
  static WasmStructPointerPointer<VrStereoConfigD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  late WasmLiveListArrayStruct<MatrixD> _projection;
  @override get projection {
    structOnOp((p) => _projection.ptr = MatrixD.wasmPointer(p.readerAt(_o[.projection]).pointer()));
    return _projection;
  }
  @override set projection(List<MatrixD> value) {
    assert(value.length <= paramsCount);
    structOnOp((p) => _projection.ptr = MatrixD.wasmPointer(p.readerAt(_o[.projection]).pointer()));
    _projection.inner = value;
  }
  
  late WasmLiveListArrayStruct<MatrixD> _viewOffset;
  @override get viewOffset {
    structOnOp((p) => _viewOffset.ptr = MatrixD.wasmPointer(p.readerAt(_o[.viewOffset]).pointer()));
    return _viewOffset;
  }
  @override set viewOffset(List<MatrixD> value) {
    assert(value.length <= paramsCount);
    structOnOp((p) => _viewOffset.ptr = MatrixD.wasmPointer(p.readerAt(_o[.viewOffset]).pointer()));
    _viewOffset.inner = value;
  }
  
  late WasmLiveListArrayFloat32 _leftLensCenter;
  @override get leftLensCenter {
    structOnOp((p) => _leftLensCenter.ptr = .new(p.readerAt(_o[.leftLensCenter]).pointer()));
    return _leftLensCenter;
  }
  @override set leftLensCenter(List<double> value) {
    assert(value.length <= paramsCount);
    structOnOp((p) => _leftLensCenter.ptr = .new(p.readerAt(_o[.leftLensCenter]).pointer()));
    _leftLensCenter.inner = value;
  }
  
  late WasmLiveListArrayFloat32 _rightLensCenter;
  @override get rightLensCenter {
    structOnOp((p) => _rightLensCenter.ptr = .new(p.readerAt(_o[.rightLensCenter]).pointer()));
    return _rightLensCenter;
  }
  @override set rightLensCenter(List<double> value) {
    assert(value.length <= paramsCount);
    structOnOp((p) => _rightLensCenter.ptr = .new(p.readerAt(_o[.rightLensCenter]).pointer()));
    _rightLensCenter.inner = value;
  }
  
  late WasmLiveListArrayFloat32 _leftScreenCenter;
  @override get leftScreenCenter {
    structOnOp((p) => _leftScreenCenter.ptr = .new(p.readerAt(_o[.leftScreenCenter]).pointer()));
    return _leftScreenCenter;
  }
  @override set leftScreenCenter(List<double> value) {
    assert(value.length <= paramsCount);
    structOnOp((p) => _leftScreenCenter.ptr = .new(p.readerAt(_o[.leftScreenCenter]).pointer()));
    _leftScreenCenter.inner = value;
  }
  
  late WasmLiveListArrayFloat32 _rightScreenCenter;
  @override get rightScreenCenter {
    structOnOp((p) => _rightScreenCenter.ptr = .new(p.readerAt(_o[.rightScreenCenter]).pointer()));
    return _rightScreenCenter;
  }
  @override set rightScreenCenter(List<double> value) {
    assert(value.length <= paramsCount);
    structOnOp((p) => _rightScreenCenter.ptr = .new(p.readerAt(_o[.rightScreenCenter]).pointer()));
    _rightScreenCenter.inner = value;
  }
  
  late WasmLiveListArrayFloat32 _scale;
  @override get scale {
    structOnOp((p) => _scale.ptr = .new(p.readerAt(_o[.scale]).pointer()));
    return _scale;
  }
  @override set scale(List<double> value) {
    assert(value.length <= paramsCount);
    structOnOp((p) => _scale.ptr = .new(p.readerAt(_o[.scale]).pointer()));
    _scale.inner = value;
  }
  
  late WasmLiveListArrayFloat32 _scaleIn;
  @override get scaleIn {
    structOnOp((p) => _scaleIn.ptr = .new(p.readerAt(_o[.scaleIn]).pointer()));
    return _scaleIn;
  }
  @override set scaleIn(List<double> value) {
    assert(value.length <= paramsCount);
    structOnOp((p) => _scaleIn.ptr = .new(p.readerAt(_o[.scaleIn]).pointer()));
    _scaleIn.inner = value;
  }

  @override
  int get wasmByteSize => byteSize;

  VrStereoConfigD({
    super.originalPointer,
    List<MatrixD>? projection,
    List<MatrixD>? viewOffset,
    List<double>? leftLensCenter,
    List<double>? rightLensCenter,
    List<double>? leftScreenCenter,
    List<double>? rightScreenCenter,
    List<double>? scale,
    List<double>? scaleIn,
  }) {
    _projection = .new(
      projection ?? [],
      originalPointer == null ? null : MatrixD.wasmPointer(wasmReader(_o[.projection]).pointer())
    );

    _viewOffset = .new(
      viewOffset ?? [],
      originalPointer == null ? null : MatrixD.wasmPointer(wasmReader(_o[.viewOffset]).pointer())
    );

    _leftLensCenter = .new(
      leftLensCenter ?? .filled(paramsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.leftLensCenter]).pointer())
    );

    _rightLensCenter = .new(
      rightLensCenter ?? .filled(paramsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.rightLensCenter]).pointer())
    );

    _leftScreenCenter = .new(
      leftScreenCenter ?? .filled(paramsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.leftScreenCenter]).pointer())
    );

    _rightScreenCenter = .new(
      rightScreenCenter ?? .filled(paramsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.rightScreenCenter]).pointer())
    );

    _scale = .new(
      scale ?? .filled(paramsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.scale]).pointer())
    );

    _scaleIn = .new(
      scaleIn ?? .filled(paramsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.scaleIn]).pointer())
    );
  }
  factory VrStereoConfigD.zero() => .new();

  @override
  VrStereoConfigD setD(VrStereoConfigD o) {
    projection = .from(o.projection);
    viewOffset = .from(o.viewOffset);
    leftLensCenter = .from(o.leftLensCenter);
    rightLensCenter = .from(o.rightLensCenter);
    leftScreenCenter = .from(o.leftScreenCenter);
    rightScreenCenter = .from(o.rightScreenCenter);
    scale = .from(o.scale);
    scaleIn = .from(o.scaleIn);
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.structArray(_projection.inner, MatrixD.wasmPointer);
    writer.structArray(_viewOffset.inner, MatrixD.wasmPointer);
    writer.Float32Array(_leftLensCenter.inner);
    writer.Float32Array(_rightLensCenter.inner);
    writer.Float32Array(_leftScreenCenter.inner);
    writer.Float32Array(_rightScreenCenter.inner);
    writer.Float32Array(_scale.inner);
    writer.Float32Array(_scaleIn.inner);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    projection = reader.structArray(paramsCount, MatrixD.wasmPointer);
    viewOffset = reader.structArray(paramsCount, MatrixD.wasmPointer);
    leftLensCenter = reader.Float32Array(paramsCount);
    rightLensCenter = reader.Float32Array(paramsCount);
    leftScreenCenter = reader.Float32Array(paramsCount);
    rightScreenCenter = reader.Float32Array(paramsCount);
    scale = reader.Float32Array(paramsCount);
    scaleIn = reader.Float32Array(paramsCount);
  }

  @override
  VrStereoConfigD clone() => .new(
    originalPointer: originalPointer,
    projection: .from(projection),
    viewOffset: .from(viewOffset),
    leftLensCenter: .from(leftLensCenter),
    rightLensCenter: .from(rightLensCenter),
    leftScreenCenter: .from(leftScreenCenter),
    rightScreenCenter: .from(rightScreenCenter),
    scale: .from(scale),
    scaleIn: .from(scaleIn),
  );
}