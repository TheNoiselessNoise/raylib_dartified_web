library;

import 'dart:convert';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';
import 'dart:typed_data';
import 'package:meta/meta.dart' show nonVirtual;
import 'package:raylib_dartified_base/raylib_dartified_base.dart';

part 'base.dart';
part 'emscripten.dart';
part 'ext.dart';
part 'lib.dart';

// ===== EXTENSIONS =====
part 'extensions/colors.dart';
part 'extensions/easings.dart';
part 'extensions/matrices.dart';
part 'extensions/quaternions.dart';
part 'extensions/temp.dart';
part 'extensions/vectors.dart';

// ===== AUDIO MODULE =====
part 'modules/audio/callbacks.dart';
part 'modules/audio/module_dart.dart';
part 'modules/audio/module_wasm.dart';

part 'modules/audio/structs/audio_stream.dart';
part 'modules/audio/structs/music.dart';
part 'modules/audio/structs/sound.dart';
part 'modules/audio/structs/wave.dart';

// ===== CAMERA MODULE =====
part 'modules/camera/module_dart.dart';
part 'modules/camera/module_wasm.dart';

// ===== CORE MODULE =====
part 'modules/core/callbacks.dart';
part 'modules/core/module_dart.dart';
part 'modules/core/module_wasm.dart';

part 'modules/core/structs/automation_event.dart';
part 'modules/core/structs/automation_event_list.dart';
part 'modules/core/structs/bone_info.dart';
part 'modules/core/structs/bounding_box.dart';
part 'modules/core/structs/camera_2d.dart';
part 'modules/core/structs/camera_3d.dart';
part 'modules/core/structs/color.dart';
part 'modules/core/structs/file_path_list.dart';
part 'modules/core/structs/font.dart';
part 'modules/core/structs/glyph_info.dart';
part 'modules/core/structs/image.dart';
part 'modules/core/structs/material.dart';
part 'modules/core/structs/material_map.dart';
part 'modules/core/structs/matrix.dart';
part 'modules/core/structs/mesh.dart';
part 'modules/core/structs/model_animation.dart';
part 'modules/core/structs/model.dart';
part 'modules/core/structs/n_patch_info.dart';
part 'modules/core/structs/quaternion.dart';
part 'modules/core/structs/ray_collision.dart';
part 'modules/core/structs/ray.dart';
part 'modules/core/structs/rectangle.dart';
part 'modules/core/structs/render_texture.dart';
part 'modules/core/structs/shader.dart';
part 'modules/core/structs/texture.dart';
part 'modules/core/structs/transform.dart';
part 'modules/core/structs/vector2.dart';
part 'modules/core/structs/vector3.dart';
part 'modules/core/structs/vector4.dart';
part 'modules/core/structs/vr_device_info.dart';
part 'modules/core/structs/vr_stereo_config.dart';

// ===== GUI MODULE =====
part 'modules/gui/module_dart.dart';
part 'modules/gui/module_wasm.dart';

// ===== LIGHT MODULE =====
part 'modules/light/module.dart';

part 'modules/light/structs/light.dart';

// ===== RLGL MODULE =====
part 'modules/rlgl/module_dart.dart';
part 'modules/rlgl/module_wasm.dart';

part 'modules/rlgl/structs/rl_draw_call.dart';
part 'modules/rlgl/structs/rl_render_batch.dart';
part 'modules/rlgl/structs/rl_vertex_buffer.dart';

// ===== UTILS MODULE =====
part 'modules/utils/module.dart';