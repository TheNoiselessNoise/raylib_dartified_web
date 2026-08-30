library;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';
import 'dart:typed_data';
import 'package:raylib_dartified_base/raylib_dartified_base.dart';

part 'base.dart';
part 'emscripten_helpers.dart';
part 'emscripten.dart';
part 'lib.dart';
part 'wasm.dart';

// ===== AUDIO MODULE =====
part 'modules/wasm/audio/module.dart';

part 'modules/flat/audio/callbacks.dart';
part 'modules/flat/audio/module.dart';

// ===== CAMERA MODULE =====
part 'modules/wasm/camera/module.dart';

part 'modules/flat/camera/module.dart';

// ===== CORE MODULE =====
part 'modules/wasm/core/module.dart';

part 'modules/flat/core/callbacks.dart';
part 'modules/flat/core/module.dart';

// ===== GUI MODULE =====
part 'modules/wasm/gui/module.dart';

part 'modules/flat/gui/module.dart';

// ===== LIGHT MODULE =====
part 'modules/wasm/light/module.dart';

part 'modules/flat/light/module.dart';

// ===== MSF_GIF MODULE =====
part 'modules/wasm/msf_gif/module.dart';

part 'modules/flat/msf_gif/callbacks.dart';
part 'modules/flat/msf_gif/module.dart';

// ===== RLGL MODULE =====
part 'modules/wasm/rlgl/module.dart';

part 'modules/flat/rlgl/module.dart';