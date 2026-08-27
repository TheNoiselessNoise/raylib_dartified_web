part of '../../../raylib_dartified_web.dart';

class RaylibMsfGif extends RaylibModuleWasm {
  late final WasmMemoryPointer<RInt> msf_gif_alpha_threshold;
  late final WasmMemoryPointer<RInt> msf_gif_bgra_flag;
  late final JSFunction msf_gif_begin;
  late final JSFunction msf_gif_frame;
  late final JSFunction msf_gif_end;
  late final JSFunction msf_gif_free;
  late final JSFunction msf_gif_begin_to_file;
  late final JSFunction msf_gif_frame_to_file;
  late final JSFunction msf_gif_end_to_file;

  RaylibMsfGif(super.rl) {
    msf_gif_alpha_threshold = .new(_module.getGlobalAddress('msf_gif_alpha_threshold'));
    msf_gif_bgra_flag       = .new(_module.getGlobalAddress('msf_gif_bgra_flag'));
    
    msf_gif_begin         = _module.dwrap('msf_gif_begin',         [n, n, n], n);
    msf_gif_frame         = _module.dwrap('msf_gif_frame',         [n, n, n, n, n], n);
    msf_gif_end           = _module.dwrap('msf_gif_end',           [n], n);
    msf_gif_free          = _module.dwrap('msf_gif_free',          [n]);
    msf_gif_begin_to_file = _module.dwrap('msf_gif_begin_to_file', [n, n, n, n, n], n);
    msf_gif_frame_to_file = _module.dwrap('msf_gif_frame_to_file', [n, n, n, n, n], n);
    msf_gif_end_to_file   = _module.dwrap('msf_gif_end_to_file',   [n], n);
  }
}