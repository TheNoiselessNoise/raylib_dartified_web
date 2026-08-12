import 'dart:typed_data';
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

extension StringToRaylibC on String {
  WasmStringPointer get toC => Raylib.instance.Temp.String$.Value(this);
}

Raylib get rl => Raylib.instance;

T registerModule<T extends RaylibModule>(T Function(Raylib rl) moduleLoader)
  => rl.registerModule<T>(moduleLoader(rl));

T module<T extends RaylibModule>() => rl.module<T>();

void disposeRaylib() => rl.dispose();

void CloseWindowAndDispose() => rl.CloseWindowAndDispose();

RaylibTemp get Temp => rl.Temp;

WasmTypedDataListAlloc get TypedDataList$ => Temp.TypedDataList$;

WasmStringAlloc get String$ => Temp.String$;

WasmLitAlloc<bool, WasmBoolPointer> get Bool$ => Temp.Bool$;
WasmLitPtrAlloc<bool, WasmSizedPointerPointer<bool, WasmBoolPointer>> get Ptr$Bool$ => Temp.Ptr$Bool$;

WasmLitIntAlloc<Int8List, WasmInt8Pointer> get Int8$ => Temp.Int8$;
WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmInt8Pointer>> get Ptr$Int8$ => Temp.Ptr$Int8$;
WasmLitIntAlloc<Uint8List, WasmUint8Pointer> get Uint8$ => Temp.Uint8$;
WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmUint8Pointer>> get Ptr$Uint8$ => Temp.Ptr$Uint8$;
WasmLitIntAlloc<Int16List, WasmInt16Pointer> get Int16$ => Temp.Int16$;
WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmInt16Pointer>> get Ptr$Int16$ => Temp.Ptr$Int16$;
WasmLitIntAlloc<Uint16List, WasmUint16Pointer> get Uint16$ => Temp.Uint16$;
WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmUint16Pointer>> get Ptr$Uint16$ => Temp.Ptr$Uint16$;
WasmLitIntAlloc<Int32List, WasmInt32Pointer> get Int32$ => Temp.Int32$;
WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmInt32Pointer>> get Ptr$Int32$ => Temp.Ptr$Int32$;
WasmLitIntAlloc<Uint32List, WasmUint32Pointer> get Uint32$ => Temp.Uint32$;
WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmUint32Pointer>> get Ptr$Uint32$ => Temp.Ptr$Uint32$;
WasmLitIntAlloc<Int64List, WasmInt64Pointer> get Int64$ => Temp.Int64$;
WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmInt64Pointer>> get Ptr$Int64$ => Temp.Ptr$Int64$;
WasmLitIntAlloc<Uint64List, WasmUint64Pointer> get Uint64$ => Temp.Uint64$;
WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmUint64Pointer>> get Ptr$Uint64$ => Temp.Ptr$Uint64$;
WasmLitFloatAlloc<Float32List, WasmFloat32Pointer> get Float32$ => Temp.Float32$;
WasmLitPtrAlloc<double, WasmSizedPointerPointer<double, WasmFloat32Pointer>> get Ptr$Float32$ => Temp.Ptr$Float32$;
WasmLitFloatAlloc<Float64List, WasmFloat64Pointer> get Float64$ => Temp.Float64$;
WasmLitPtrAlloc<double, WasmSizedPointerPointer<double, WasmFloat64Pointer>> get Ptr$Float64$ => Temp.Ptr$Float64$;

WasmLitIntAlloc<Int32List, WasmInt32Pointer> get Int$ => Temp.Int$;
WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmInt32Pointer>> get Ptr$Int$ => Temp.Ptr$Int$;
WasmLitIntAlloc<Uint32List, WasmUint32Pointer> get UnsignedInt$ => Temp.UnsignedInt$;
WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmUint32Pointer>> get Ptr$UnsignedInt$ => Temp.Ptr$UnsignedInt$;
WasmLitIntAlloc<Int8List, WasmInt8Pointer> get Char$ => Temp.Char$;
WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmInt8Pointer>> get Ptr$Char$ => Temp.Ptr$Char$;
WasmLitIntAlloc<Uint8List, WasmUint8Pointer> get UnsignedChar$ => Temp.UnsignedChar$;
WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmUint8Pointer>> get Ptr$UnsignedChar$ => Temp.Ptr$UnsignedChar$;
WasmLitIntAlloc<Int16List, WasmInt16Pointer> get Short$ => Temp.Short$;
WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmInt16Pointer>> get Ptr$Short$ => Temp.Ptr$Short$;
WasmLitIntAlloc<Uint16List, WasmUint16Pointer> get UnsignedShort$ => Temp.UnsignedShort$;
WasmLitPtrAlloc<int, WasmSizedPointerPointer<int, WasmUint16Pointer>> get Ptr$UnsignedShort$ => Temp.Ptr$UnsignedShort$;

WasmStructAlloc<AutomationEventListD> get AutomationEventList$ => Temp.AutomationEventList$;
WasmStructPtrAlloc<AutomationEventListD> get Ptr$AutomationEventList$ => Temp.Ptr$AutomationEventList$;
WasmStructAlloc<AutomationEventD> get AutomationEvent$ => Temp.AutomationEvent$;
WasmStructPtrAlloc<AutomationEventD> get Ptr$AutomationEvent$ => Temp.Ptr$AutomationEvent$;
WasmStructAlloc<AudioStreamD> get AudioStream$ => Temp.AudioStream$;
WasmStructPtrAlloc<AudioStreamD> get Ptr$AudioStream$ => Temp.Ptr$AudioStream$;
WasmStructAlloc<BoneInfoD> get BoneInfo$ => Temp.BoneInfo$;
WasmStructPtrAlloc<BoneInfoD> get Ptr$BoneInfo$ => Temp.Ptr$BoneInfo$;
WasmStructAlloc<BoundingBoxD> get BoundingBox$ => Temp.BoundingBox$;
WasmStructPtrAlloc<BoundingBoxD> get Ptr$BoundingBox$ => Temp.Ptr$BoundingBox$;
WasmStructAlloc<Camera2DD> get Camera2D$ => Temp.Camera2D$;
WasmStructPtrAlloc<Camera2DD> get Ptr$Camera2D$ => Temp.Ptr$Camera2D$;
WasmStructAlloc<Camera3DD> get Camera3D$ => Temp.Camera3D$;
WasmStructPtrAlloc<Camera3DD> get Ptr$Camera3D$ => Temp.Ptr$Camera3D$;
WasmStructAlloc<ColorD> get Color$ => Temp.Color$;
WasmStructPtrAlloc<ColorD> get Ptr$Color$ => Temp.Ptr$Color$;
WasmStructAlloc<FilePathListD> get FilePathList$ => Temp.FilePathList$;
WasmStructPtrAlloc<FilePathListD> get Ptr$FilePathList$ => Temp.Ptr$FilePathList$;
WasmStructAlloc<FontD> get Font$ => Temp.Font$;
WasmStructPtrAlloc<FontD> get Ptr$Font$ => Temp.Ptr$Font$;
WasmStructAlloc<GestureEventD> get GestureEvent$ => Temp.GestureEvent$;
WasmStructPtrAlloc<GestureEventD> get Ptr$GestureEvent$ => Temp.Ptr$GestureEvent$;
WasmStructAlloc<GlyphInfoD> get GlyphInfo$ => Temp.GlyphInfo$;
WasmStructPtrAlloc<GlyphInfoD> get Ptr$GlyphInfo$ => Temp.Ptr$GlyphInfo$;
WasmStructAlloc<ImageD> get Image$ => Temp.Image$;
WasmStructPtrAlloc<ImageD> get Ptr$Image$ => Temp.Ptr$Image$;
WasmStructAlloc<LightD> get Light$ => Temp.Light$;
WasmStructPtrAlloc<LightD> get Ptr$Light$ => Temp.Ptr$Light$;
WasmStructAlloc<MaterialD> get Material$ => Temp.Material$;
WasmStructPtrAlloc<MaterialD> get Ptr$Material$ => Temp.Ptr$Material$;
WasmStructAlloc<MaterialMapD> get MaterialMap$ => Temp.MaterialMap$;
WasmStructPtrAlloc<MaterialMapD> get Ptr$MaterialMap$ => Temp.Ptr$MaterialMap$;
WasmStructAlloc<MatrixD> get Matrix$ => Temp.Matrix$;
WasmStructPtrAlloc<MatrixD> get Ptr$Matrix$ => Temp.Ptr$Matrix$;
WasmStructAlloc<MeshD> get Mesh$ => Temp.Mesh$;
WasmStructPtrAlloc<MeshD> get Ptr$Mesh$ => Temp.Ptr$Mesh$;
WasmStructAlloc<ModelD> get Model$ => Temp.Model$;
WasmStructPtrAlloc<ModelD> get Ptr$Model$ => Temp.Ptr$Model$;
WasmStructAlloc<ModelAnimationD> get ModelAnimation$ => Temp.ModelAnimation$;
WasmStructPtrAlloc<ModelAnimationD> get Ptr$ModelAnimation$ => Temp.Ptr$ModelAnimation$;
WasmStructAlloc<ModelSkeletonD> get ModelSkeleton$ => Temp.ModelSkeleton$;
WasmStructPtrAlloc<ModelSkeletonD> get Ptr$ModelSkeleton$ => Temp.Ptr$ModelSkeleton$;
WasmStructAlloc<MusicD> get Music$ => Temp.Music$;
WasmStructPtrAlloc<MusicD> get Ptr$Music$ => Temp.Ptr$Music$;
WasmStructAlloc<NPatchInfoD> get NPatchInfo$ => Temp.NPatchInfo$;
WasmStructPtrAlloc<NPatchInfoD> get Ptr$NPatchInfo$ => Temp.Ptr$NPatchInfo$;
WasmStructAlloc<QuaternionD> get Quaternion$ => Temp.Quaternion$;
WasmStructPtrAlloc<QuaternionD> get Ptr$Quaternion$ => Temp.Ptr$Quaternion$;
WasmStructAlloc<RectangleD> get Rectangle$ => Temp.Rectangle$;
WasmStructPtrAlloc<RectangleD> get Ptr$Rectangle$ => Temp.Ptr$Rectangle$;
WasmStructAlloc<RlDrawCallD> get RlDrawCall$ => Temp.RlDrawCall$;
WasmStructPtrAlloc<RlDrawCallD> get Ptr$RlDrawCall$ => Temp.Ptr$RlDrawCall$;
WasmStructAlloc<RlRenderBatchD> get RlRenderBatch$ => Temp.RlRenderBatch$;
WasmStructPtrAlloc<RlRenderBatchD> get Ptr$RlRenderBatch$ => Temp.Ptr$RlRenderBatch$;
WasmStructAlloc<RlVertexBufferD> get RlVertexBuffer$ => Temp.RlVertexBuffer$;
WasmStructPtrAlloc<RlVertexBufferD> get Ptr$RlVertexBuffer$ => Temp.Ptr$RlVertexBuffer$;
WasmStructAlloc<RayD> get Ray$ => Temp.Ray$;
WasmStructPtrAlloc<RayD> get Ptr$Ray$ => Temp.Ptr$Ray$;
WasmStructAlloc<RayCollisionD> get RayCollision$ => Temp.RayCollision$;
WasmStructPtrAlloc<RayCollisionD> get Ptr$RayCollision$ => Temp.Ptr$RayCollision$;
WasmStructAlloc<RenderTextureD> get RenderTexture$ => Temp.RenderTexture$;
WasmStructPtrAlloc<RenderTextureD> get Ptr$RenderTexture$ => Temp.Ptr$RenderTexture$;
WasmStructAlloc<ShaderD> get Shader$ => Temp.Shader$;
WasmStructPtrAlloc<ShaderD> get Ptr$Shader$ => Temp.Ptr$Shader$;
WasmStructAlloc<SoundD> get Sound$ => Temp.Sound$;
WasmStructPtrAlloc<SoundD> get Ptr$Sound$ => Temp.Ptr$Sound$;
WasmStructAlloc<TextureD> get Texture$ => Temp.Texture$;
WasmStructPtrAlloc<TextureD> get Ptr$Texture$ => Temp.Ptr$Texture$;
WasmStructAlloc<TransformD> get Transform$ => Temp.Transform$;
WasmStructPtrAlloc<TransformD> get Ptr$Transform$ => Temp.Ptr$Transform$;
WasmStructAlloc<Vector2D> get Vector2$ => Temp.Vector2$;
WasmStructPtrAlloc<Vector2D> get Ptr$Vector2$ => Temp.Ptr$Vector2$;
WasmStructAlloc<Vector3D> get Vector3$ => Temp.Vector3$;
WasmStructPtrAlloc<Vector3D> get Ptr$Vector3$ => Temp.Ptr$Vector3$;
WasmStructAlloc<Vector4D> get Vector4$ => Temp.Vector4$;
WasmStructPtrAlloc<Vector4D> get Ptr$Vector4$ => Temp.Ptr$Vector4$;
WasmStructAlloc<VrDeviceInfoD> get VrDeviceInfo$ => Temp.VrDeviceInfo$;
WasmStructPtrAlloc<VrDeviceInfoD> get Ptr$VrDeviceInfo$ => Temp.Ptr$VrDeviceInfo$;
WasmStructAlloc<VrStereoConfigD> get VrStereoConfig$ => Temp.VrStereoConfig$;
WasmStructPtrAlloc<VrStereoConfigD> get Ptr$VrStereoConfig$ => Temp.Ptr$VrStereoConfig$;
WasmStructAlloc<WaveD> get Wave$ => Temp.Wave$;
WasmStructPtrAlloc<WaveD> get Ptr$Wave$ => Temp.Ptr$Wave$;

int realloc(int oldPtr, int oldSize, int newSize)
  => Temp.Utils.realloc(oldPtr, oldSize, newSize);

void memset(int ptr, int value, int size)
  => Temp.Utils.memset(ptr, value, size);

void memcpy(int dest, int src, int n)
  => Temp.Utils.memcpy(dest, src, n);

int memcmp(int a, int b, int n)
  => Temp.Utils.memcmp(a, b, n);

int strlen(int ptr)
  => Temp.Utils.strlen(ptr);

int strcmp(int a, int b)
  => Temp.Utils.strcmp(a, b);

void strcpy(int dest, int src)
  => Temp.Utils.strcpy(dest, src);

void strncpy(int dest, int src, int n)
  => Temp.Utils.strncpy(dest, src, n);

int strnlen(int ptr, int maxLen)
  => Temp.Utils.strnlen(ptr, maxLen);

void strncat(int dest, int src, int n)
  => Temp.Utils.strncat(dest, src, n);

int strstr(int haystack, int needle)
  => Temp.Utils.strstr(haystack, needle);