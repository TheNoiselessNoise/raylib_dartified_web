import 'dart:js_interop';
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibMsfGif get _module => Raylib.instance.MsfGif;

WasmMemoryPointer<RInt> get msf_gif_alpha_threshold => _module.msf_gif_alpha_threshold;
WasmMemoryPointer<RInt> get msf_gif_bgra_flag => _module.msf_gif_bgra_flag;
JSFunction get msf_gif_begin => _module.msf_gif_begin;
JSFunction get msf_gif_frame => _module.msf_gif_frame;
JSFunction get msf_gif_end => _module.msf_gif_end;
JSFunction get msf_gif_free => _module.msf_gif_free;
JSFunction get msf_gif_begin_to_file => _module.msf_gif_begin_to_file;
JSFunction get msf_gif_frame_to_file => _module.msf_gif_frame_to_file;
JSFunction get msf_gif_end_to_file => _module.msf_gif_end_to_file;