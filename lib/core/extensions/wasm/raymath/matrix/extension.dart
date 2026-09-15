part of '../../../../raylib_dartified_web.dart';

class RaylibMatrixExt extends RaylibModuleWasm {
  /// Compute matrix determinant
  late final WF1<double> MatrixDeterminant;
  /// Get the trace of the matrix (sum of the values along the diagonal)
  late final WF1<double> MatrixTrace;
  /// Transposes provided matrix
  late final WF2<void> MatrixTranspose;
  /// Invert provided matrix
  late final WF2<void> MatrixInvert;
  /// Get identity matrix
  late final WF1<void> MatrixIdentity;
  /// Add two matrices
  late final WF3<void> MatrixAdd;
  /// Subtract two matrices (left - right)
  late final WF3<void> MatrixSubtract;
  /// Get two matrix multiplication
  /// 
  /// NOTE: When multiplying matrices... the order matters!
  late final WF3<void> MatrixMultiply;
  /// Multiply matrix components by value
  late final WF3<void> MatrixMultiplyValue;
  /// Get translation matrix
  late final WF4<void> MatrixTranslate;
  /// Create rotation matrix from axis and angle
  /// 
  /// NOTE: Angle should be provided in radians
  late final WF3<void> MatrixRotate;
  /// Get x-rotation matrix
  /// 
  /// NOTE: Angle must be provided in radians
  late final WF2<void> MatrixRotateX;
  /// Get y-rotation matrix
  /// 
  /// NOTE: Angle must be provided in radians
  late final WF2<void> MatrixRotateY;
  /// Get z-rotation matrix
  /// 
  /// NOTE: Angle must be provided in radians
  late final WF2<void> MatrixRotateZ;
  /// Get xyz-rotation matrix
  /// 
  /// NOTE: Angle must be provided in radians
  late final WF2<void> MatrixRotateXYZ;
  /// Get zyx-rotation matrix
  /// 
  /// NOTE: Angle must be provided in radians
  late final WF2<void> MatrixRotateZYX;
  /// Get scaling matrix
  late final WF4<void> MatrixScale;
  /// Get perspective projection matrix
  late final WF7<void> MatrixFrustum;
  /// Get perspective projection matrix
  ///
  /// NOTE: Fovy angle must be provided in radians
  late final WF5<void> MatrixPerspective;
  /// Get orthographic projection matrix
  late final WF7<void> MatrixOrtho;
  /// Get camera look-at matrix (view matrix)
  late final WF4<void> MatrixLookAt;
  /// Get float array of matrix data
  late final WF2<void> MatrixToFloatV;
  /// Compose a transformation matrix from rotational, translational and scaling components
  late final WF4<void> MatrixCompose;
  /// Decompose a transformation matrix into its rotational, translational and scaling components and remove shear
  late final WF4<void> MatrixDecompose;

  RaylibMatrixExt(super.rl) {
    MatrixDeterminant   = dwrap1('MatrixDeterminant');
    MatrixTrace         = dwrap1('MatrixTrace');
    MatrixTranspose     = swrap1('MatrixTranspose');
    MatrixInvert        = swrap1('MatrixInvert');
    MatrixIdentity      = swrap0('MatrixIdentity');
    MatrixAdd           = swrap2('MatrixAdd');
    MatrixSubtract      = swrap2('MatrixSubtract');
    MatrixMultiply      = swrap2('MatrixMultiply');
    MatrixMultiplyValue = swrap2('MatrixMultiplyValue');
    MatrixTranslate     = swrap3('MatrixTranslate');
    MatrixRotate        = swrap2('MatrixRotate');
    MatrixRotateX       = swrap1('MatrixRotateX');
    MatrixRotateY       = swrap1('MatrixRotateY');
    MatrixRotateZ       = swrap1('MatrixRotateZ');
    MatrixRotateXYZ     = swrap1('MatrixRotateXYZ');
    MatrixRotateZYX     = swrap1('MatrixRotateZYX');
    MatrixScale         = swrap3('MatrixScale');
    MatrixFrustum       = swrap6('MatrixFrustum');
    MatrixPerspective   = swrap4('MatrixPerspective');
    MatrixOrtho         = swrap6('MatrixOrtho');
    MatrixLookAt        = swrap3('MatrixLookAt');
    MatrixToFloatV      = swrap1('MatrixToFloatV');
    MatrixCompose       = swrap3('MatrixCompose');
    MatrixDecompose     = dwrap4('MatrixDecompose');
  }
}