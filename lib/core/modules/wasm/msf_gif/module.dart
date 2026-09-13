part of '../../../raylib_dartified_web.dart';

class RaylibMsfGif extends RaylibModuleWasm {
  /// `msf_gif_alpha_threshold`
  late final WasmMemoryPointer<RInt> msf_gif_alpha_threshold;
  /// `msf_gif_bgra_flag`
  late final WasmMemoryPointer<RInt> msf_gif_bgra_flag;
  /// `msf_gif_begin`
  late final JSFunction msf_gif_begin;
  /// `msf_gif_frame`
  late final JSFunction msf_gif_frame;
  /// `msf_gif_end`
  late final JSFunction msf_gif_end;
  /// `msf_gif_free`
  late final JSFunction msf_gif_free;
  /// `msf_gif_begin_to_file`
  late final JSFunction msf_gif_begin_to_file;
  /// `msf_gif_frame_to_file`
  late final JSFunction msf_gif_frame_to_file;
  /// `msf_gif_end_to_file`
  late final JSFunction msf_gif_end_to_file;

  RaylibMsfGif(super.rl) {
    msf_gif_alpha_threshold = _module.symbol('msf_gif_alpha_threshold');
    msf_gif_bgra_flag       = _module.symbol('msf_gif_bgra_flag');
    
    msf_gif_begin         = _module.dwrap('msf_gif_begin',         n3, rn);
    msf_gif_frame         = _module.dwrap('msf_gif_frame',         n5, rn);
    msf_gif_end           = _module.dwrap('msf_gif_end',           n2, rv);
    msf_gif_free          = _module.dwrap('msf_gif_free',          n1, rv);
    msf_gif_begin_to_file = _module.dwrap('msf_gif_begin_to_file', n5, rn);
    msf_gif_frame_to_file = _module.dwrap('msf_gif_frame_to_file', n5, rn);
    msf_gif_end_to_file   = _module.dwrap('msf_gif_end_to_file',   n1, rn);
  }
}