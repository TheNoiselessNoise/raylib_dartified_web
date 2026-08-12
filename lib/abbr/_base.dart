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

WasmLitAllocators<bool, WasmBoolPointer> get Bool$ => Temp.Bool$;

WasmLitIntAllocators<Int8List, WasmInt8Pointer> get Int8$ => Temp.Int8$;
WasmLitIntAllocators<Uint8List, WasmUint8Pointer> get Uint8$ => Temp.Uint8$;
WasmLitIntAllocators<Int16List, WasmInt16Pointer> get Int16$ => Temp.Int16$;
WasmLitIntAllocators<Uint16List, WasmUint16Pointer> get Uint16$ => Temp.Uint16$;
WasmLitIntAllocators<Int32List, WasmInt32Pointer> get Int32$ => Temp.Int32$;
WasmLitIntAllocators<Uint32List, WasmUint32Pointer> get Uint32$ => Temp.Uint32$;
WasmLitIntAllocators<Int64List, WasmInt64Pointer> get Int64$ => Temp.Int64$;
WasmLitIntAllocators<Uint64List, WasmUint64Pointer> get Uint64$ => Temp.Uint64$;
WasmLitFloatAllocators<Float32List, WasmFloat32Pointer> get Float32$ => Temp.Float32$;
WasmLitFloatAllocators<Float64List, WasmFloat64Pointer> get Float64$ => Temp.Float64$;
WasmLitIntAllocators<Int32List, WasmIntPointer> get Int$ => Temp.Int$;
WasmLitIntAllocators<Uint32List, WasmUnsignedIntPointer> get UnsignedInt$ => Temp.UnsignedInt$;
WasmLitIntAllocators<Int8List, WasmCharPointer> get Char$ => Temp.Char$;
WasmLitIntAllocators<Uint8List, WasmUnsignedCharPointer> get UnsignedChar$ => Temp.UnsignedChar$;
WasmLitIntAllocators<Int16List, WasmShortPointer> get Short$ => Temp.Short$;
WasmLitIntAllocators<Uint16List, WasmUnsignedShortPointer> get UnsignedShort$ => Temp.UnsignedShort$;
WasmLitFloatAllocators<Float32List, WasmFloat32Pointer> get Float$ => Temp.Float$;
WasmLitFloatAllocators<Float64List, WasmFloat64Pointer> get Double$ => Temp.Double$;

WasmStructAllocators<AutomationEventListD> get AutomationEventList$ => Temp.AutomationEventList$;
WasmStructAllocators<AutomationEventD> get AutomationEvent$ => Temp.AutomationEvent$;
WasmStructAllocators<AudioStreamD> get AudioStream$ => Temp.AudioStream$;
WasmStructAllocators<BoneInfoD> get BoneInfo$ => Temp.BoneInfo$;
WasmStructAllocators<BoundingBoxD> get BoundingBox$ => Temp.BoundingBox$;
WasmStructAllocators<Camera2DD> get Camera2D$ => Temp.Camera2D$;
WasmStructAllocators<Camera3DD> get Camera3D$ => Temp.Camera3D$;
WasmStructAllocators<ColorD> get Color$ => Temp.Color$;
WasmStructAllocators<FilePathListD> get FilePathList$ => Temp.FilePathList$;
WasmStructAllocators<FontD> get Font$ => Temp.Font$;
WasmStructAllocators<GestureEventD> get GestureEvent$ => Temp.GestureEvent$;
WasmStructAllocators<GlyphInfoD> get GlyphInfo$ => Temp.GlyphInfo$;
WasmStructAllocators<ImageD> get Image$ => Temp.Image$;
WasmStructAllocators<LightD> get Light$ => Temp.Light$;
WasmStructAllocators<MaterialD> get Material$ => Temp.Material$;
WasmStructAllocators<MaterialMapD> get MaterialMap$ => Temp.MaterialMap$;
WasmStructAllocators<MatrixD> get Matrix$ => Temp.Matrix$;
WasmStructAllocators<MeshD> get Mesh$ => Temp.Mesh$;
WasmStructAllocators<ModelD> get Model$ => Temp.Model$;
WasmStructAllocators<ModelAnimationD> get ModelAnimation$ => Temp.ModelAnimation$;
WasmStructAllocators<ModelSkeletonD> get ModelSkeleton$ => Temp.ModelSkeleton$;
WasmStructAllocators<MusicD> get Music$ => Temp.Music$;
WasmStructAllocators<NPatchInfoD> get NPatchInfo$ => Temp.NPatchInfo$;
WasmStructAllocators<QuaternionD> get Quaternion$ => Temp.Quaternion$;
WasmStructAllocators<RectangleD> get Rectangle$ => Temp.Rectangle$;
WasmStructAllocators<RlDrawCallD> get RlDrawCall$ => Temp.RlDrawCall$;
WasmStructAllocators<RlRenderBatchD> get RlRenderBatch$ => Temp.RlRenderBatch$;
WasmStructAllocators<RlVertexBufferD> get RlVertexBuffer$ => Temp.RlVertexBuffer$;
WasmStructAllocators<RayD> get Ray$ => Temp.Ray$;
WasmStructAllocators<RayCollisionD> get RayCollision$ => Temp.RayCollision$;
WasmStructAllocators<RenderTextureD> get RenderTexture$ => Temp.RenderTexture$;
WasmStructAllocators<ShaderD> get Shader$ => Temp.Shader$;
WasmStructAllocators<SoundD> get Sound$ => Temp.Sound$;
WasmStructAllocators<TextureD> get Texture$ => Temp.Texture$;
WasmStructAllocators<TransformD> get Transform$ => Temp.Transform$;
WasmStructAllocators<Vector2D> get Vector2$ => Temp.Vector2$;
WasmStructAllocators<Vector3D> get Vector3$ => Temp.Vector3$;
WasmStructAllocators<Vector4D> get Vector4$ => Temp.Vector4$;
WasmStructAllocators<VrDeviceInfoD> get VrDeviceInfo$ => Temp.VrDeviceInfo$;
WasmStructAllocators<VrStereoConfigD> get VrStereoConfig$ => Temp.VrStereoConfig$;
WasmStructAllocators<WaveD> get Wave$ => Temp.Wave$;

double rand() => rl.rand();

double randC() => rl.randC();

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