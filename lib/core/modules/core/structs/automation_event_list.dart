part of '../../../raylib_dartified_web.dart';

enum _AutomationEventListOffsets with _WasmOffsets {
  capacity,
  count,
  events,
}

class AutomationEventListD extends StructDViewWeb<AutomationEventListD> with AutomationEventListBase<
  AutomationEventListD,
  AutomationEventD
> {
  static final byteSize = _o.byteSize;
  static final _Offsets<_AutomationEventListOffsets> _o = .fromMap({
    .capacity: WasmSize.Uint32,
    .count:    WasmSize.Uint32,
    .events:   WasmSize.StructPointer,
  });

  @override
  int get wasmByteSize => byteSize;
  
  AutomationEventListD({super.originalPointer});

  @override
  int get capacity => wasmReader(_o[.capacity]).Uint32();
  
  @override
  int get count => wasmReader(_o[.count]).Uint32();

  List<AutomationEventD> _cachedEvents = [];
  
  @override
  List<AutomationEventD> get events {
    if (_cachedEvents.length != count) {
      final eventsPtr = wasmReader(_o[.events]).pointer();
      _cachedEvents = AutomationEventD.wasmPointer(eventsPtr).readArray(count);
    }
    return _cachedEvents;
  }

  @override
  AutomationEventListD clone() => .new(originalPointer: getOriginalPointer());
}
