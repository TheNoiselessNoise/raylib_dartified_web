part of '../../../../raylib_dartified_web.dart';

class RaylibMatrixExt extends RaylibModuleWasm {
  /// Compute matrix determinant
  late final JSFunction MatrixDeterminant;
  /// Get the trace of the matrix (sum of the values along the diagonal)
  late final JSFunction MatrixTrace;
  /// Transposes provided matrix
  late final JSFunction MatrixTranspose;
  /// Invert provided matrix
  late final JSFunction MatrixInvert;
  /// Get identity matrix
  late final JSFunction MatrixIdentity;
  /// Add two matrices
  late final JSFunction MatrixAdd;
  /// Subtract two matrices (left - right)
  late final JSFunction MatrixSubtract;
  /// Get two matrix multiplication
  /// 
  /// NOTE: When multiplying matrices... the order matters!
  late final JSFunction MatrixMultiply;
  /// Multiply matrix components by value
  late final JSFunction MatrixMultiplyValue;
  /// Get translation matrix
  late final JSFunction MatrixTranslate;
  /// Create rotation matrix from axis and angle
  /// 
  /// NOTE: Angle should be provided in radians
  late final JSFunction MatrixRotate;
  /// Get x-rotation matrix
  /// 
  /// NOTE: Angle must be provided in radians
  late final JSFunction MatrixRotateX;
  /// Get y-rotation matrix
  /// 
  /// NOTE: Angle must be provided in radians
  late final JSFunction MatrixRotateY;
  /// Get z-rotation matrix
  /// 
  /// NOTE: Angle must be provided in radians
  late final JSFunction MatrixRotateZ;
  /// Get xyz-rotation matrix
  /// 
  /// NOTE: Angle must be provided in radians
  late final JSFunction MatrixRotateXYZ;
  /// Get zyx-rotation matrix
  /// 
  /// NOTE: Angle must be provided in radians
  late final JSFunction MatrixRotateZYX;
  /// Get scaling matrix
  late final JSFunction MatrixScale;
  /// Get perspective projection matrix
  late final JSFunction MatrixFrustum;
  /// Get perspective projection matrix
  ///
  /// NOTE: Fovy angle must be provided in radians
  late final JSFunction MatrixPerspective;
  /// Get orthographic projection matrix
  late final JSFunction MatrixOrtho;
  /// Get camera look-at matrix (view matrix)
  late final JSFunction MatrixLookAt;
  /// Get float array of matrix data
  late final JSFunction MatrixToFloatV;
  /// Compose a transformation matrix from rotational, translational and scaling components
  late final JSFunction MatrixCompose;
  /// Decompose a transformation matrix into its rotational, translational and scaling components and remove shear
  late final JSFunction MatrixDecompose;

  RaylibMatrixExt(super.rl) {
    MatrixDeterminant   = _module.dwrap('MatrixDeterminant',   n1, rn);
    MatrixTrace         = _module.dwrap('MatrixTrace',         n1, rn);
    MatrixTranspose     = _module.dwrap('MatrixTranspose',     n2, rv);
    MatrixInvert        = _module.dwrap('MatrixInvert',        n2, rv);
    MatrixIdentity      = _module.dwrap('MatrixIdentity',      n1, rv);
    MatrixAdd           = _module.dwrap('MatrixAdd',           n3, rv);
    MatrixSubtract      = _module.dwrap('MatrixSubtract',      n3, rv);
    MatrixMultiply      = _module.dwrap('MatrixMultiply',      n3, rv);
    MatrixMultiplyValue = _module.dwrap('MatrixMultiplyValue', n3, rv);
    MatrixTranslate     = _module.dwrap('MatrixTranslate',     n4, rv);
    MatrixRotate        = _module.dwrap('MatrixRotate',        n3, rv);
    MatrixRotateX       = _module.dwrap('MatrixRotateX',       n2, rv);
    MatrixRotateY       = _module.dwrap('MatrixRotateY',       n2, rv);
    MatrixRotateZ       = _module.dwrap('MatrixRotateZ',       n2, rv);
    MatrixRotateXYZ     = _module.dwrap('MatrixRotateXYZ',     n2, rv);
    MatrixRotateZYX     = _module.dwrap('MatrixRotateZYX',     n2, rv);
    MatrixScale         = _module.dwrap('MatrixScale',         n4, rv);
    MatrixFrustum       = _module.dwrap('MatrixFrustum',       n7, rv);
    MatrixPerspective   = _module.dwrap('MatrixPerspective',   n5, rv);
    MatrixOrtho         = _module.dwrap('MatrixOrtho',         n7, rv);
    MatrixLookAt        = _module.dwrap('MatrixLookAt',        n4, rv);
    MatrixToFloatV      = _module.dwrap('MatrixToFloatV',      n2, rv);
    MatrixCompose       = _module.dwrap('MatrixCompose',       n4, rv);
    MatrixDecompose     = _module.dwrap('MatrixDecompose',     n4, rv);
  }
}