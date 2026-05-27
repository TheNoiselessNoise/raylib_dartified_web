part of '../../../raylib_dartified_web.dart';

enum _AutomationEventOffsets with _WasmOffsets {
  frame,
  type,
  params,
}

class AutomationEventD extends StructDWeb<AutomationEventD> with AutomationEventBase<AutomationEventD> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_AutomationEventOffsets> _o = .fromMap({
    .frame:  WasmSize.Uint32,
    .type:   WasmSize.Uint32,
    .params: WasmSize.Int32 * MaterialBase.BASE_paramsCount,
  });

  static WasmStructPointer<AutomationEventD> wasmPointer(int ptr) => .new(ptr, AutomationEventD.new, byteSize);
  static WasmStructPointerPointer<AutomationEventD> wasmPointerPointer(int ptr) => .new(ptr, wasmPointer);

  int _frame;
  @override get frame {
    structOnOp((p) => _frame = p.readerAt(_o[.frame]).Uint32());
    return _frame;
  }
  @override set frame(int value) {
    _frame = value;
    structOnOp((p) => p.writerAt(_o[.frame]).Uint32(value));
  }

  int _type;
  @override get type {
    structOnOp((p) => _type = p.readerAt(_o[.type]).Uint32());
    return _type;
  }
  @override set type(int value) {
    _type = value;
    structOnOp((p) => p.writerAt(_o[.type]).Uint32(value));
  }

  late WasmLiveListArrayInt32 _params;
  @override get params {
    structOnOp((p) => _params.ptr = .new(p.readerAt(_o[.params]).pointer()));
    return _params;
  }
  @override set params(List<int> value) {
    assert(value.length <= paramsCount);
    structOnOp((p) => _params.ptr = .new(p.readerAt(_o[.params]).pointer()));
    _params.inner = value;
  }

  @override
  int get wasmByteSize => byteSize;

  AutomationEventD({
    super.originalPointer,
    int frame = 0,
    int type = 0,
    List<int>? params,
  }) :
    _frame = frame,
    _type = type
  {
    _params = .new(
      params ?? .filled(paramsCount, 0),
      originalPointer == null ? null : .new(wasmReader(_o[.params]).pointer())
    );
  }

  factory AutomationEventD.zero() => .new();

  @override
  AutomationEventD setD(AutomationEventD o) {
    frame = o.frame;
    type = o.type;
    params = .from(o.params);
    return this;
  }

  @override
  void wasmWriteInto(WasmWriter writer) {
    writer.Uint32(frame);
    writer.Uint32(type);
    writer.Int32Array(_params.inner);
  }

  @override
  void wasmReadFrom(WasmReader reader) {
    frame = reader.Uint32();
    type = reader.Uint32();
    params = reader.Int32Array(paramsCount);
  }

  @override
  AutomationEventD clone() => .new(
    originalPointer: originalPointer,
    frame: frame,
    type: type,
    params: .from(params),
  );
}