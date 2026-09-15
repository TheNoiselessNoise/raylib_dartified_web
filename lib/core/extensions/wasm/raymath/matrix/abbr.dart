import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibMatrixExt get _module => Raylib.instance.module();

/// See [RaylibMatrixExt.MatrixDeterminant].
WF1<double> get MatrixDeterminant => _module.MatrixDeterminant;
/// See [RaylibMatrixExt.MatrixTrace].
WF1<double> get MatrixTrace => _module.MatrixTrace;
/// See [RaylibMatrixExt.MatrixTranspose].
WF2<void> get MatrixTranspose => _module.MatrixTranspose;
/// See [RaylibMatrixExt.MatrixInvert].
WF2<void> get MatrixInvert => _module.MatrixInvert;
/// See [RaylibMatrixExt.MatrixIdentity].
WF1<void> get MatrixIdentity => _module.MatrixIdentity;
/// See [RaylibMatrixExt.MatrixAdd].
WF3<void> get MatrixAdd => _module.MatrixAdd;
/// See [RaylibMatrixExt.MatrixSubtract].
WF3<void> get MatrixSubtract => _module.MatrixSubtract;
/// See [RaylibMatrixExt.MatrixMultiply].
WF3<void> get MatrixMultiply => _module.MatrixMultiply;
/// See [RaylibMatrixExt.MatrixMultiplyValue].
WF3<void> get MatrixMultiplyValue => _module.MatrixMultiplyValue;
/// See [RaylibMatrixExt.MatrixTranslate].
WF4<void> get MatrixTranslate => _module.MatrixTranslate;
/// See [RaylibMatrixExt.MatrixRotate].
WF3<void> get MatrixRotate => _module.MatrixRotate;
/// See [RaylibMatrixExt.MatrixRotateX].
WF2<void> get MatrixRotateX => _module.MatrixRotateX;
/// See [RaylibMatrixExt.MatrixRotateY].
WF2<void> get MatrixRotateY => _module.MatrixRotateY;
/// See [RaylibMatrixExt.MatrixRotateZ].
WF2<void> get MatrixRotateZ => _module.MatrixRotateZ;
/// See [RaylibMatrixExt.MatrixRotateXYZ].
WF2<void> get MatrixRotateXYZ => _module.MatrixRotateXYZ;
/// See [RaylibMatrixExt.MatrixRotateZYX].
WF2<void> get MatrixRotateZYX => _module.MatrixRotateZYX;
/// See [RaylibMatrixExt.MatrixScale].
WF4<void> get MatrixScale => _module.MatrixScale;
/// See [RaylibMatrixExt.MatrixFrustum].
WF7<void> get MatrixFrustum => _module.MatrixFrustum;
/// See [RaylibMatrixExt.MatrixPerspective].
WF5<void> get MatrixPerspective => _module.MatrixPerspective;
/// See [RaylibMatrixExt.MatrixOrtho].
WF7<void> get MatrixOrtho => _module.MatrixOrtho;
/// See [RaylibMatrixExt.MatrixLookAt].
WF4<void> get MatrixLookAt => _module.MatrixLookAt;
/// See [RaylibMatrixExt.MatrixToFloatV].
WF2<void> get MatrixToFloatV => _module.MatrixToFloatV;
/// See [RaylibMatrixExt.MatrixCompose].
WF4<void> get MatrixCompose => _module.MatrixCompose;
/// See [RaylibMatrixExt.MatrixDecompose].
WF4<void> get MatrixDecompose => _module.MatrixDecompose;