import 'dart:js_interop';
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibMatrixExt get _module => Raylib.instance.module();

/// See [RaylibMatrixExt.MatrixDeterminant].
JSFunction get MatrixDeterminant => _module.MatrixDeterminant;
/// See [RaylibMatrixExt.MatrixTrace].
JSFunction get MatrixTrace => _module.MatrixTrace;
/// See [RaylibMatrixExt.MatrixTranspose].
JSFunction get MatrixTranspose => _module.MatrixTranspose;
/// See [RaylibMatrixExt.MatrixInvert].
JSFunction get MatrixInvert => _module.MatrixInvert;
/// See [RaylibMatrixExt.MatrixIdentity].
JSFunction get MatrixIdentity => _module.MatrixIdentity;
/// See [RaylibMatrixExt.MatrixAdd].
JSFunction get MatrixAdd => _module.MatrixAdd;
/// See [RaylibMatrixExt.MatrixSubtract].
JSFunction get MatrixSubtract => _module.MatrixSubtract;
/// See [RaylibMatrixExt.MatrixMultiply].
JSFunction get MatrixMultiply => _module.MatrixMultiply;
/// See [RaylibMatrixExt.MatrixMultiplyValue].
JSFunction get MatrixMultiplyValue => _module.MatrixMultiplyValue;
/// See [RaylibMatrixExt.MatrixTranslate].
JSFunction get MatrixTranslate => _module.MatrixTranslate;
/// See [RaylibMatrixExt.MatrixRotate].
JSFunction get MatrixRotate => _module.MatrixRotate;
/// See [RaylibMatrixExt.MatrixRotateX].
JSFunction get MatrixRotateX => _module.MatrixRotateX;
/// See [RaylibMatrixExt.MatrixRotateY].
JSFunction get MatrixRotateY => _module.MatrixRotateY;
/// See [RaylibMatrixExt.MatrixRotateZ].
JSFunction get MatrixRotateZ => _module.MatrixRotateZ;
/// See [RaylibMatrixExt.MatrixRotateXYZ].
JSFunction get MatrixRotateXYZ => _module.MatrixRotateXYZ;
/// See [RaylibMatrixExt.MatrixRotateZYX].
JSFunction get MatrixRotateZYX => _module.MatrixRotateZYX;
/// See [RaylibMatrixExt.MatrixScale].
JSFunction get MatrixScale => _module.MatrixScale;
/// See [RaylibMatrixExt.MatrixFrustum].
JSFunction get MatrixFrustum => _module.MatrixFrustum;
/// See [RaylibMatrixExt.MatrixPerspective].
JSFunction get MatrixPerspective => _module.MatrixPerspective;
/// See [RaylibMatrixExt.MatrixOrtho].
JSFunction get MatrixOrtho => _module.MatrixOrtho;
/// See [RaylibMatrixExt.MatrixLookAt].
JSFunction get MatrixLookAt => _module.MatrixLookAt;
/// See [RaylibMatrixExt.MatrixToFloatV].
JSFunction get MatrixToFloatV => _module.MatrixToFloatV;
/// See [RaylibMatrixExt.MatrixCompose].
JSFunction get MatrixCompose => _module.MatrixCompose;
/// See [RaylibMatrixExt.MatrixDecompose].
JSFunction get MatrixDecompose => _module.MatrixDecompose;