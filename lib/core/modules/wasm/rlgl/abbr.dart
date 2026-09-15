import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibRlgl get _module => Raylib.instance.module();

/// See [RaylibRlgl.rlMatrixMode].
WF1<void> get rlMatrixMode => _module.rlMatrixMode;
/// See [RaylibRlgl.rlPushMatrix].
WF0<void> get rlPushMatrix => _module.rlPushMatrix;
/// See [RaylibRlgl.rlPopMatrix].
WF0<void> get rlPopMatrix => _module.rlPopMatrix;
/// See [RaylibRlgl.rlLoadIdentity].
WF0<void> get rlLoadIdentity => _module.rlLoadIdentity;
/// See [RaylibRlgl.rlTranslatef].
WF3<void> get rlTranslatef => _module.rlTranslatef;
/// See [RaylibRlgl.rlRotatef].
WF4<void> get rlRotatef => _module.rlRotatef;
/// See [RaylibRlgl.rlScalef].
WF3<void> get rlScalef => _module.rlScalef;
/// See [RaylibRlgl.rlMultMatrixf].
WF1<void> get rlMultMatrixf => _module.rlMultMatrixf;
/// See [RaylibRlgl.rlFrustum].
WF6<void> get rlFrustum => _module.rlFrustum;
/// See [RaylibRlgl.rlOrtho].
WF6<void> get rlOrtho => _module.rlOrtho;
/// See [RaylibRlgl.rlViewport].
WF4<void> get rlViewport => _module.rlViewport;
/// See [RaylibRlgl.rlSetClipPlanes].
WF2<void> get rlSetClipPlanes => _module.rlSetClipPlanes;
/// See [RaylibRlgl.rlGetCullDistanceNear].
WF0<double> get rlGetCullDistanceNear => _module.rlGetCullDistanceNear;
/// See [RaylibRlgl.rlGetCullDistanceFar].
WF0<double> get rlGetCullDistanceFar => _module.rlGetCullDistanceFar;
/// See [RaylibRlgl.rlBegin].
WF1<void> get rlBegin => _module.rlBegin;
/// See [RaylibRlgl.rlEnd].
WF0<void> get rlEnd => _module.rlEnd;
/// See [RaylibRlgl.rlVertex2i].
WF2<void> get rlVertex2i => _module.rlVertex2i;
/// See [RaylibRlgl.rlVertex2f].
WF2<void> get rlVertex2f => _module.rlVertex2f;
/// See [RaylibRlgl.rlVertex3f].
WF3<void> get rlVertex3f => _module.rlVertex3f;
/// See [RaylibRlgl.rlTexCoord2f].
WF2<void> get rlTexCoord2f => _module.rlTexCoord2f;
/// See [RaylibRlgl.rlNormal3f].
WF3<void> get rlNormal3f => _module.rlNormal3f;
/// See [RaylibRlgl.rlColor4ub].
WF4<void> get rlColor4ub => _module.rlColor4ub;
/// See [RaylibRlgl.rlColor3f].
WF3<void> get rlColor3f => _module.rlColor3f;
/// See [RaylibRlgl.rlColor4f].
WF4<void> get rlColor4f => _module.rlColor4f;
/// See [RaylibRlgl.rlEnableVertexArray].
WF1<bool> get rlEnableVertexArray => _module.rlEnableVertexArray;
/// See [RaylibRlgl.rlDisableVertexArray].
WF0<void> get rlDisableVertexArray => _module.rlDisableVertexArray;
/// See [RaylibRlgl.rlEnableVertexBuffer].
WF1<void> get rlEnableVertexBuffer => _module.rlEnableVertexBuffer;
/// See [RaylibRlgl.rlDisableVertexBuffer].
WF0<void> get rlDisableVertexBuffer => _module.rlDisableVertexBuffer;
/// See [RaylibRlgl.rlEnableVertexBufferElement].
WF1<void> get rlEnableVertexBufferElement => _module.rlEnableVertexBufferElement;
/// See [RaylibRlgl.rlDisableVertexBufferElement].
WF0<void> get rlDisableVertexBufferElement => _module.rlDisableVertexBufferElement;
/// See [RaylibRlgl.rlEnableVertexAttribute].
WF1<void> get rlEnableVertexAttribute => _module.rlEnableVertexAttribute;
/// See [RaylibRlgl.rlDisableVertexAttribute].
WF1<void> get rlDisableVertexAttribute => _module.rlDisableVertexAttribute;
/// See [RaylibRlgl.rlEnableStatePointer].
WF2<void> get rlEnableStatePointer => _module.rlEnableStatePointer;
/// See [RaylibRlgl.rlDisableStatePointer].
WF1<void> get rlDisableStatePointer => _module.rlDisableStatePointer;
/// See [RaylibRlgl.rlActiveTextureSlot].
WF1<void> get rlActiveTextureSlot => _module.rlActiveTextureSlot;
/// See [RaylibRlgl.rlEnableTexture].
WF1<void> get rlEnableTexture => _module.rlEnableTexture;
/// See [RaylibRlgl.rlDisableTexture].
WF0<void> get rlDisableTexture => _module.rlDisableTexture;
/// See [RaylibRlgl.rlEnableTextureCubemap].
WF1<void> get rlEnableTextureCubemap => _module.rlEnableTextureCubemap;
/// See [RaylibRlgl.rlDisableTextureCubemap].
WF0<void> get rlDisableTextureCubemap => _module.rlDisableTextureCubemap;
/// See [RaylibRlgl.rlTextureParameters].
WF3<void> get rlTextureParameters => _module.rlTextureParameters;
/// See [RaylibRlgl.rlCubemapParameters].
WF3<void> get rlCubemapParameters => _module.rlCubemapParameters;
/// See [RaylibRlgl.rlEnableShader].
WF1<void> get rlEnableShader => _module.rlEnableShader;
/// See [RaylibRlgl.rlDisableShader].
WF0<void> get rlDisableShader => _module.rlDisableShader;
/// See [RaylibRlgl.rlEnableFramebuffer].
WF1<void> get rlEnableFramebuffer => _module.rlEnableFramebuffer;
/// See [RaylibRlgl.rlDisableFramebuffer].
WF0<void> get rlDisableFramebuffer => _module.rlDisableFramebuffer;
/// See [RaylibRlgl.rlGetActiveFramebuffer].
WF0<int> get rlGetActiveFramebuffer => _module.rlGetActiveFramebuffer;
/// See [RaylibRlgl.rlActiveDrawBuffers].
WF1<void> get rlActiveDrawBuffers => _module.rlActiveDrawBuffers;
/// See [RaylibRlgl.rlBlitFramebuffer].
WF9<void> get rlBlitFramebuffer => _module.rlBlitFramebuffer;
/// See [RaylibRlgl.rlBindFramebuffer].
WF2<void> get rlBindFramebuffer => _module.rlBindFramebuffer;
/// See [RaylibRlgl.rlEnableColorBlend].
WF0<void> get rlEnableColorBlend => _module.rlEnableColorBlend;
/// See [RaylibRlgl.rlDisableColorBlend].
WF0<void> get rlDisableColorBlend => _module.rlDisableColorBlend;
/// See [RaylibRlgl.rlEnableDepthTest].
WF0<void> get rlEnableDepthTest => _module.rlEnableDepthTest;
/// See [RaylibRlgl.rlDisableDepthTest].
WF0<void> get rlDisableDepthTest => _module.rlDisableDepthTest;
/// See [RaylibRlgl.rlEnableDepthMask].
WF0<void> get rlEnableDepthMask => _module.rlEnableDepthMask;
/// See [RaylibRlgl.rlDisableDepthMask].
WF0<void> get rlDisableDepthMask => _module.rlDisableDepthMask;
/// See [RaylibRlgl.rlEnableBackfaceCulling].
WF0<void> get rlEnableBackfaceCulling => _module.rlEnableBackfaceCulling;
/// See [RaylibRlgl.rlDisableBackfaceCulling].
WF0<void> get rlDisableBackfaceCulling => _module.rlDisableBackfaceCulling;
/// See [RaylibRlgl.rlColorMask].
WF4<void> get rlColorMask => _module.rlColorMask;
/// See [RaylibRlgl.rlSetCullFace].
WF1<void> get rlSetCullFace => _module.rlSetCullFace;
/// See [RaylibRlgl.rlEnableScissorTest].
WF0<void> get rlEnableScissorTest => _module.rlEnableScissorTest;
/// See [RaylibRlgl.rlDisableScissorTest].
WF0<void> get rlDisableScissorTest => _module.rlDisableScissorTest;
/// See [RaylibRlgl.rlScissor].
WF4<void> get rlScissor => _module.rlScissor;
/// See [RaylibRlgl.rlEnablePointMode].
WF0<void> get rlEnablePointMode => _module.rlEnablePointMode;
/// See [RaylibRlgl.rlDisablePointMode].
WF0<void> get rlDisablePointMode => _module.rlDisablePointMode;
/// See [RaylibRlgl.rlSetPointSize].
WF1<void> get rlSetPointSize => _module.rlSetPointSize;
/// See [RaylibRlgl.rlGetPointSize].
WF0<double> get rlGetPointSize => _module.rlGetPointSize;
/// See [RaylibRlgl.rlEnableWireMode].
WF0<void> get rlEnableWireMode => _module.rlEnableWireMode;
/// See [RaylibRlgl.rlDisableWireMode].
WF0<void> get rlDisableWireMode => _module.rlDisableWireMode;
/// See [RaylibRlgl.rlSetLineWidth].
WF1<void> get rlSetLineWidth => _module.rlSetLineWidth;
/// See [RaylibRlgl.rlGetLineWidth].
WF0<double> get rlGetLineWidth => _module.rlGetLineWidth;
/// See [RaylibRlgl.rlEnableSmoothLines].
WF0<void> get rlEnableSmoothLines => _module.rlEnableSmoothLines;
/// See [RaylibRlgl.rlDisableSmoothLines].
WF0<void> get rlDisableSmoothLines => _module.rlDisableSmoothLines;
/// See [RaylibRlgl.rlEnableStereoRender].
WF0<void> get rlEnableStereoRender => _module.rlEnableStereoRender;
/// See [RaylibRlgl.rlDisableStereoRender].
WF0<void> get rlDisableStereoRender => _module.rlDisableStereoRender;
/// See [RaylibRlgl.rlIsStereoRenderEnabled].
WF0<bool> get rlIsStereoRenderEnabled => _module.rlIsStereoRenderEnabled;
/// See [RaylibRlgl.rlClearColor].
WF4<void> get rlClearColor => _module.rlClearColor;
/// See [RaylibRlgl.rlClearScreenBuffers].
WF0<void> get rlClearScreenBuffers => _module.rlClearScreenBuffers;
/// See [RaylibRlgl.rlCheckErrors].
WF0<void> get rlCheckErrors => _module.rlCheckErrors;
/// See [RaylibRlgl.rlSetBlendMode].
WF1<void> get rlSetBlendMode => _module.rlSetBlendMode;
/// See [RaylibRlgl.rlSetBlendFactors].
WF3<void> get rlSetBlendFactors => _module.rlSetBlendFactors;
/// See [RaylibRlgl.rlSetBlendFactorsSeparate].
WF6<void> get rlSetBlendFactorsSeparate => _module.rlSetBlendFactorsSeparate;
/// See [RaylibRlgl.rlglInit].
WF2<void> get rlglInit => _module.rlglInit;
/// See [RaylibRlgl.rlglClose].
WF0<void> get rlglClose => _module.rlglClose;
/// See [RaylibRlgl.rlLoadExtensions].
WF1<void> get rlLoadExtensions => _module.rlLoadExtensions;
/// See [RaylibRlgl.rlGetProcAddress].
WF1<WasmMemoryPointer<RVoid>> get rlGetProcAddress => _module.rlGetProcAddress;
/// See [RaylibRlgl.rlGetVersion].
WF0<int> get rlGetVersion => _module.rlGetVersion;
/// See [RaylibRlgl.rlSetFramebufferWidth].
WF1<void> get rlSetFramebufferWidth => _module.rlSetFramebufferWidth;
/// See [RaylibRlgl.rlGetFramebufferWidth].
WF0<int> get rlGetFramebufferWidth => _module.rlGetFramebufferWidth;
/// See [RaylibRlgl.rlSetFramebufferHeight].
WF1<void> get rlSetFramebufferHeight => _module.rlSetFramebufferHeight;
/// See [RaylibRlgl.rlGetFramebufferHeight].
WF0<int> get rlGetFramebufferHeight => _module.rlGetFramebufferHeight;
/// See [RaylibRlgl.rlGetTextureIdDefault].
WF0<int> get rlGetTextureIdDefault => _module.rlGetTextureIdDefault;
/// See [RaylibRlgl.rlGetShaderIdDefault].
WF0<int> get rlGetShaderIdDefault => _module.rlGetShaderIdDefault;
/// See [RaylibRlgl.rlGetShaderLocsDefault].
WF0<WasmMemoryPointer<RInt>> get rlGetShaderLocsDefault => _module.rlGetShaderLocsDefault;
/// See [RaylibRlgl.rlLoadRenderBatch].
WF3<void> get rlLoadRenderBatch => _module.rlLoadRenderBatch;
/// See [RaylibRlgl.rlUnloadRenderBatch].
WF1<void> get rlUnloadRenderBatch => _module.rlUnloadRenderBatch;
/// See [RaylibRlgl.rlDrawRenderBatch].
WF1<void> get rlDrawRenderBatch => _module.rlDrawRenderBatch;
/// See [RaylibRlgl.rlSetRenderBatchActive].
WF1<void> get rlSetRenderBatchActive => _module.rlSetRenderBatchActive;
/// See [RaylibRlgl.rlDrawRenderBatchActive].
WF0<void> get rlDrawRenderBatchActive => _module.rlDrawRenderBatchActive;
/// See [RaylibRlgl.rlCheckRenderBatchLimit].
WF1<bool> get rlCheckRenderBatchLimit => _module.rlCheckRenderBatchLimit;
/// See [RaylibRlgl.rlSetTexture].
WF1<void> get rlSetTexture => _module.rlSetTexture;
/// See [RaylibRlgl.rlLoadVertexArray].
WF0<int> get rlLoadVertexArray => _module.rlLoadVertexArray;
/// See [RaylibRlgl.rlLoadVertexBuffer].
WF3<int> get rlLoadVertexBuffer => _module.rlLoadVertexBuffer;
/// See [RaylibRlgl.rlLoadVertexBufferElement].
WF3<int> get rlLoadVertexBufferElement => _module.rlLoadVertexBufferElement;
/// See [RaylibRlgl.rlUpdateVertexBuffer].
WF4<void> get rlUpdateVertexBuffer => _module.rlUpdateVertexBuffer;
/// See [RaylibRlgl.rlUpdateVertexBufferElements].
WF4<void> get rlUpdateVertexBufferElements => _module.rlUpdateVertexBufferElements;
/// See [RaylibRlgl.rlUnloadVertexArray].
WF1<void> get rlUnloadVertexArray => _module.rlUnloadVertexArray;
/// See [RaylibRlgl.rlUnloadVertexBuffer].
WF1<void> get rlUnloadVertexBuffer => _module.rlUnloadVertexBuffer;
/// See [RaylibRlgl.rlSetVertexAttribute].
WF6<void> get rlSetVertexAttribute => _module.rlSetVertexAttribute;
/// See [RaylibRlgl.rlSetVertexAttributeDivisor].
WF2<void> get rlSetVertexAttributeDivisor => _module.rlSetVertexAttributeDivisor;
/// See [RaylibRlgl.rlSetVertexAttributeDefault].
WF4<void> get rlSetVertexAttributeDefault => _module.rlSetVertexAttributeDefault;
/// See [RaylibRlgl.rlDrawVertexArray].
WF2<void> get rlDrawVertexArray => _module.rlDrawVertexArray;
/// See [RaylibRlgl.rlDrawVertexArrayElements].
WF3<void> get rlDrawVertexArrayElements => _module.rlDrawVertexArrayElements;
/// See [RaylibRlgl.rlDrawVertexArrayInstanced].
WF3<void> get rlDrawVertexArrayInstanced => _module.rlDrawVertexArrayInstanced;
/// See [RaylibRlgl.rlDrawVertexArrayElementsInstanced].
WF4<void> get rlDrawVertexArrayElementsInstanced => _module.rlDrawVertexArrayElementsInstanced;
/// See [RaylibRlgl.rlLoadTexture].
WF5<int> get rlLoadTexture => _module.rlLoadTexture;
/// See [RaylibRlgl.rlLoadTextureDepth].
WF3<int> get rlLoadTextureDepth => _module.rlLoadTextureDepth;
/// See [RaylibRlgl.rlLoadTextureCubemap].
WF4<int> get rlLoadTextureCubemap => _module.rlLoadTextureCubemap;
/// See [RaylibRlgl.rlUpdateTexture].
WF7<void> get rlUpdateTexture => _module.rlUpdateTexture;
/// See [RaylibRlgl.rlGetGlTextureFormats].
WF4<void> get rlGetGlTextureFormats => _module.rlGetGlTextureFormats;
/// See [RaylibRlgl.rlGetPixelFormatName].
WF1<WasmMemoryPointer<RChar>> get rlGetPixelFormatName => _module.rlGetPixelFormatName;
/// See [RaylibRlgl.rlUnloadTexture].
WF1<void> get rlUnloadTexture => _module.rlUnloadTexture;
/// See [RaylibRlgl.rlGenTextureMipmaps].
WF5<void> get rlGenTextureMipmaps => _module.rlGenTextureMipmaps;
/// See [RaylibRlgl.rlReadTexturePixels].
WF4<WasmMemoryPointer<RVoid>> get rlReadTexturePixels => _module.rlReadTexturePixels;
/// See [RaylibRlgl.rlReadScreenPixels].
WF2<WasmMemoryPointer<RUnsignedChar>> get rlReadScreenPixels => _module.rlReadScreenPixels;
/// See [RaylibRlgl.rlLoadFramebuffer].
WF0<int> get rlLoadFramebuffer => _module.rlLoadFramebuffer;
/// See [RaylibRlgl.rlFramebufferAttach].
WF5<void> get rlFramebufferAttach => _module.rlFramebufferAttach;
/// See [RaylibRlgl.rlFramebufferComplete].
WF1<bool> get rlFramebufferComplete => _module.rlFramebufferComplete;
/// See [RaylibRlgl.rlUnloadFramebuffer].
WF1<void> get rlUnloadFramebuffer => _module.rlUnloadFramebuffer;
/// See [RaylibRlgl.rlCopyFramebuffer].
WF6<void> get rlCopyFramebuffer => _module.rlCopyFramebuffer;
/// See [RaylibRlgl.rlResizeFramebuffer].
WF2<void> get rlResizeFramebuffer => _module.rlResizeFramebuffer;
/// See [RaylibRlgl.rlLoadShader].
WF2<int> get rlLoadShader => _module.rlLoadShader;
/// See [RaylibRlgl.rlLoadShaderProgram].
WF2<int> get rlLoadShaderProgram => _module.rlLoadShaderProgram;
/// See [RaylibRlgl.rlLoadShaderProgramEx].
WF2<int> get rlLoadShaderProgramEx => _module.rlLoadShaderProgramEx;
/// See [RaylibRlgl.rlLoadShaderProgramCompute].
WF1<int> get rlLoadShaderProgramCompute => _module.rlLoadShaderProgramCompute;
/// See [RaylibRlgl.rlUnloadShader].
WF1<void> get rlUnloadShader => _module.rlUnloadShader;
/// See [RaylibRlgl.rlUnloadShaderProgram].
WF1<void> get rlUnloadShaderProgram => _module.rlUnloadShaderProgram;
/// See [RaylibRlgl.rlGetLocationUniform].
WF2<int> get rlGetLocationUniform => _module.rlGetLocationUniform;
/// See [RaylibRlgl.rlGetLocationAttrib].
WF2<int> get rlGetLocationAttrib => _module.rlGetLocationAttrib;
/// See [RaylibRlgl.rlSetUniform].
WF4<void> get rlSetUniform => _module.rlSetUniform;
/// See [RaylibRlgl.rlSetUniformMatrix].
WF2<void> get rlSetUniformMatrix => _module.rlSetUniformMatrix;
/// See [RaylibRlgl.rlSetUniformMatrices].
WF3<void> get rlSetUniformMatrices => _module.rlSetUniformMatrices;
/// See [RaylibRlgl.rlSetUniformSampler].
WF2<void> get rlSetUniformSampler => _module.rlSetUniformSampler;
/// See [RaylibRlgl.rlSetShader].
WF2<void> get rlSetShader => _module.rlSetShader;
/// See [RaylibRlgl.rlComputeShaderDispatch].
WF3<void> get rlComputeShaderDispatch => _module.rlComputeShaderDispatch;
/// See [RaylibRlgl.rlLoadShaderBuffer].
WF3<int> get rlLoadShaderBuffer => _module.rlLoadShaderBuffer;
/// See [RaylibRlgl.rlUnloadShaderBuffer].
WF1<void> get rlUnloadShaderBuffer => _module.rlUnloadShaderBuffer;
/// See [RaylibRlgl.rlUpdateShaderBuffer].
WF4<void> get rlUpdateShaderBuffer => _module.rlUpdateShaderBuffer;
/// See [RaylibRlgl.rlBindShaderBuffer].
WF2<void> get rlBindShaderBuffer => _module.rlBindShaderBuffer;
/// See [RaylibRlgl.rlReadShaderBuffer].
WF4<void> get rlReadShaderBuffer => _module.rlReadShaderBuffer;
/// See [RaylibRlgl.rlCopyShaderBuffer].
WF5<void> get rlCopyShaderBuffer => _module.rlCopyShaderBuffer;
/// See [RaylibRlgl.rlGetShaderBufferSize].
WF1<int> get rlGetShaderBufferSize => _module.rlGetShaderBufferSize;
/// See [RaylibRlgl.rlBindImageTexture].
WF4<void> get rlBindImageTexture => _module.rlBindImageTexture;
/// See [RaylibRlgl.rlGetMatrixModelview].
WF1<void> get rlGetMatrixModelview => _module.rlGetMatrixModelview;
/// See [RaylibRlgl.rlGetMatrixProjection].
WF1<void> get rlGetMatrixProjection => _module.rlGetMatrixProjection;
/// See [RaylibRlgl.rlGetMatrixTransform].
WF1<void> get rlGetMatrixTransform => _module.rlGetMatrixTransform;
/// See [RaylibRlgl.rlGetMatrixProjectionStereo].
WF2<void> get rlGetMatrixProjectionStereo => _module.rlGetMatrixProjectionStereo;
/// See [RaylibRlgl.rlGetMatrixViewOffsetStereo].
WF2<void> get rlGetMatrixViewOffsetStereo => _module.rlGetMatrixViewOffsetStereo;
/// See [RaylibRlgl.rlSetMatrixProjection].
WF1<void> get rlSetMatrixProjection => _module.rlSetMatrixProjection;
/// See [RaylibRlgl.rlSetMatrixModelview].
WF1<void> get rlSetMatrixModelview => _module.rlSetMatrixModelview;
/// See [RaylibRlgl.rlSetMatrixProjectionStereo].
WF2<void> get rlSetMatrixProjectionStereo => _module.rlSetMatrixProjectionStereo;
/// See [RaylibRlgl.rlSetMatrixViewOffsetStereo].
WF2<void> get rlSetMatrixViewOffsetStereo => _module.rlSetMatrixViewOffsetStereo;
/// See [RaylibRlgl.rlLoadDrawCube].
WF0<void> get rlLoadDrawCube => _module.rlLoadDrawCube;
/// See [RaylibRlgl.rlLoadDrawQuad].
WF0<void> get rlLoadDrawQuad => _module.rlLoadDrawQuad;