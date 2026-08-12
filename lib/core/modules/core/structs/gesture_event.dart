part of '../../../raylib_dartified_web.dart';

enum _GestureEventOffsets with _WasmOffsets {
  touchAction,
  pointCount,
  pointId,
  position,
}

class GestureEventD extends StructDWeb<GestureEventD> with GestureEventBase<
  GestureEventD,
  Vector2D,
  MatrixD,
  Vector3D,
  QuaternionD,
  Vector4D
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_GestureEventOffsets> _o = .fromMap({
    .touchAction: WasmSize.Int32,
    .pointCount:  WasmSize.Int32,
    .pointId:     WasmSize.Int32 * GestureEventBase.BASE_maxTouchPoints,
    .position:    Vector2D.byteSize * GestureEventBase.BASE_maxTouchPoints,
  });

  static WasmStructPointer<GestureEventD> wasmPointer(int ptr) => .new(ptr, GestureEventD.new, byteSize);
  static WasmStructPointerPointer<GestureEventD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  TouchAction _touchAction;
  @override get touchAction {
    structOnOp((p) => _touchAction = .fromValue(p.readerAt(_o[.touchAction]).Int32()));
    return _touchAction;
  }
  @override set touchAction(TouchAction value) {
    _touchAction = value;
    structOnOp((p) => p.writerAt(_o[.touchAction]).Int32(value.value));
  }

  int _pointCount;
  @override get pointCount {
    structOnOp((p) => _pointCount = p.readerAt(_o[.pointCount]).Int32());
    return _pointCount;
  }
  @override set pointCount(int value) {
    _pointCount = value;
    structOnOp((p) => p.writerAt(_o[.pointCount]).Int32(value));
  }

  late WasmLiveListArrayInt32 _pointId;
  @override get pointId {
    structOnOp((p) => _pointId.ptr = .new(p.readerAt(_o[.pointId]).pointer()));
    return _pointId;
  }
  @override set pointId(List<int> value) {
    assert(value.length <= GestureEventBase.BASE_maxTouchPoints);
    structOnOp((p) => _pointId.ptr = .new(p.readerAt(_o[.pointId]).pointer()));
    _pointId.inner = value;
  }

  late WasmLiveListArrayStruct<Vector2D> _position;
  @override get position {
    structOnOp((p) => _position.ptr = Vector2D.wasmPointer(p.readerAt(_o[.position]).pointer()));
    return _position;
  }
  @override set position(List<Vector2D> value) {
    assert(value.length <= GestureEventBase.BASE_maxTouchPoints);
    structOnOp((p) => _position.ptr = Vector2D.wasmPointer(p.readerAt(_o[.position]).pointer()));
    _position.inner = value;
  }

  GestureEventD({
    super.originalPointer,
    TouchAction touchAction = .TOUCH_ACTION_DOWN,
    int pointCount = 0,
    List<int>? pointId,
    List<Vector2D>? position,
  }) :
    _touchAction = touchAction,
    _pointCount = pointCount
  {
    _pointId = .new(
      pointId ?? .filled(GestureEventBase.BASE_maxTouchPoints, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.pointId]).pointer())
    );

    _position = .new(
      position ?? [],
      originalPointer == null ? null : Vector2D.wasmPointer(wasmReader(_o[.position]).pointer())
    );
  }

  factory GestureEventD.zero() => .new();

  @override
  GestureEventD setD(GestureEventD o) {
    touchAction = o.touchAction;
    pointCount = o.pointCount;
    pointId = .from(o.pointId);
    position = .from(o.position);
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Int32(touchAction.value);
    writer.Int32(pointCount);
    writer.Int32Array(_pointId.inner);
    writer.structArray(_position.inner, Vector2D.wasmPointer);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    touchAction = .fromValue(reader.Int32());
    pointCount = reader.Int32();
    pointId = reader.Int32Array(GestureEventBase.BASE_maxTouchPoints);
    position = reader.structArray(GestureEventBase.BASE_maxTouchPoints, Vector2D.byteSize, Vector2D.wasmPointer);
  }

  @override
  GestureEventD clone() => .new(
    originalPointer: originalPointer,
    touchAction: touchAction,
    pointCount: pointCount,
    pointId: .from(pointId),
    position: .from(position),
  );
}