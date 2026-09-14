import 'dart:js_interop';
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibRlgl get _module => Raylib.instance.module();

/// See [RaylibRlgl.rlMatrixMode].
JSFunction get rlMatrixMode => _module.rlMatrixMode;
/// See [RaylibRlgl.rlPushMatrix].
JSFunction get rlPushMatrix => _module.rlPushMatrix;
/// See [RaylibRlgl.rlPopMatrix].
JSFunction get rlPopMatrix => _module.rlPopMatrix;
/// See [RaylibRlgl.rlLoadIdentity].
JSFunction get rlLoadIdentity => _module.rlLoadIdentity;
/// See [RaylibRlgl.rlTranslatef].
JSFunction get rlTranslatef => _module.rlTranslatef;
/// See [RaylibRlgl.rlRotatef].
JSFunction get rlRotatef => _module.rlRotatef;
/// See [RaylibRlgl.rlScalef].
JSFunction get rlScalef => _module.rlScalef;
/// See [RaylibRlgl.rlMultMatrixf].
JSFunction get rlMultMatrixf => _module.rlMultMatrixf;
/// See [RaylibRlgl.rlFrustum].
JSFunction get rlFrustum => _module.rlFrustum;
/// See [RaylibRlgl.rlOrtho].
JSFunction get rlOrtho => _module.rlOrtho;
/// See [RaylibRlgl.rlViewport].
JSFunction get rlViewport => _module.rlViewport;
/// See [RaylibRlgl.rlSetClipPlanes].
JSFunction get rlSetClipPlanes => _module.rlSetClipPlanes;
/// See [RaylibRlgl.rlGetCullDistanceNear].
JSFunction get rlGetCullDistanceNear => _module.rlGetCullDistanceNear;
/// See [RaylibRlgl.rlGetCullDistanceFar].
JSFunction get rlGetCullDistanceFar => _module.rlGetCullDistanceFar;
/// See [RaylibRlgl.rlBegin].
JSFunction get rlBegin => _module.rlBegin;
/// See [RaylibRlgl.rlEnd].
JSFunction get rlEnd => _module.rlEnd;
/// See [RaylibRlgl.rlVertex2i].
JSFunction get rlVertex2i => _module.rlVertex2i;
/// See [RaylibRlgl.rlVertex2f].
JSFunction get rlVertex2f => _module.rlVertex2f;
/// See [RaylibRlgl.rlVertex3f].
JSFunction get rlVertex3f => _module.rlVertex3f;
/// See [RaylibRlgl.rlTexCoord2f].
JSFunction get rlTexCoord2f => _module.rlTexCoord2f;
/// See [RaylibRlgl.rlNormal3f].
JSFunction get rlNormal3f => _module.rlNormal3f;
/// See [RaylibRlgl.rlColor4ub].
JSFunction get rlColor4ub => _module.rlColor4ub;
/// See [RaylibRlgl.rlColor3f].
JSFunction get rlColor3f => _module.rlColor3f;
/// See [RaylibRlgl.rlColor4f].
JSFunction get rlColor4f => _module.rlColor4f;
/// See [RaylibRlgl.rlEnableVertexArray].
JSFunction get rlEnableVertexArray => _module.rlEnableVertexArray;
/// See [RaylibRlgl.rlDisableVertexArray].
JSFunction get rlDisableVertexArray => _module.rlDisableVertexArray;
/// See [RaylibRlgl.rlEnableVertexBuffer].
JSFunction get rlEnableVertexBuffer => _module.rlEnableVertexBuffer;
/// See [RaylibRlgl.rlDisableVertexBuffer].
JSFunction get rlDisableVertexBuffer => _module.rlDisableVertexBuffer;
/// See [RaylibRlgl.rlEnableVertexBufferElement].
JSFunction get rlEnableVertexBufferElement => _module.rlEnableVertexBufferElement;
/// See [RaylibRlgl.rlDisableVertexBufferElement].
JSFunction get rlDisableVertexBufferElement => _module.rlDisableVertexBufferElement;
/// See [RaylibRlgl.rlEnableVertexAttribute].
JSFunction get rlEnableVertexAttribute => _module.rlEnableVertexAttribute;
/// See [RaylibRlgl.rlDisableVertexAttribute].
JSFunction get rlDisableVertexAttribute => _module.rlDisableVertexAttribute;
/// See [RaylibRlgl.rlEnableStatePointer].
JSFunction get rlEnableStatePointer => _module.rlEnableStatePointer;
/// See [RaylibRlgl.rlDisableStatePointer].
JSFunction get rlDisableStatePointer => _module.rlDisableStatePointer;
/// See [RaylibRlgl.rlActiveTextureSlot].
JSFunction get rlActiveTextureSlot => _module.rlActiveTextureSlot;
/// See [RaylibRlgl.rlEnableTexture].
JSFunction get rlEnableTexture => _module.rlEnableTexture;
/// See [RaylibRlgl.rlDisableTexture].
JSFunction get rlDisableTexture => _module.rlDisableTexture;
/// See [RaylibRlgl.rlEnableTextureCubemap].
JSFunction get rlEnableTextureCubemap => _module.rlEnableTextureCubemap;
/// See [RaylibRlgl.rlDisableTextureCubemap].
JSFunction get rlDisableTextureCubemap => _module.rlDisableTextureCubemap;
/// See [RaylibRlgl.rlTextureParameters].
JSFunction get rlTextureParameters => _module.rlTextureParameters;
/// See [RaylibRlgl.rlCubemapParameters].
JSFunction get rlCubemapParameters => _module.rlCubemapParameters;
/// See [RaylibRlgl.rlEnableShader].
JSFunction get rlEnableShader => _module.rlEnableShader;
/// See [RaylibRlgl.rlDisableShader].
JSFunction get rlDisableShader => _module.rlDisableShader;
/// See [RaylibRlgl.rlEnableFramebuffer].
JSFunction get rlEnableFramebuffer => _module.rlEnableFramebuffer;
/// See [RaylibRlgl.rlDisableFramebuffer].
JSFunction get rlDisableFramebuffer => _module.rlDisableFramebuffer;
/// See [RaylibRlgl.rlGetActiveFramebuffer].
JSFunction get rlGetActiveFramebuffer => _module.rlGetActiveFramebuffer;
/// See [RaylibRlgl.rlActiveDrawBuffers].
JSFunction get rlActiveDrawBuffers => _module.rlActiveDrawBuffers;
/// See [RaylibRlgl.rlBlitFramebuffer].
JSFunction get rlBlitFramebuffer => _module.rlBlitFramebuffer;
/// See [RaylibRlgl.rlBindFramebuffer].
JSFunction get rlBindFramebuffer => _module.rlBindFramebuffer;
/// See [RaylibRlgl.rlEnableColorBlend].
JSFunction get rlEnableColorBlend => _module.rlEnableColorBlend;
/// See [RaylibRlgl.rlDisableColorBlend].
JSFunction get rlDisableColorBlend => _module.rlDisableColorBlend;
/// See [RaylibRlgl.rlEnableDepthTest].
JSFunction get rlEnableDepthTest => _module.rlEnableDepthTest;
/// See [RaylibRlgl.rlDisableDepthTest].
JSFunction get rlDisableDepthTest => _module.rlDisableDepthTest;
/// See [RaylibRlgl.rlEnableDepthMask].
JSFunction get rlEnableDepthMask => _module.rlEnableDepthMask;
/// See [RaylibRlgl.rlDisableDepthMask].
JSFunction get rlDisableDepthMask => _module.rlDisableDepthMask;
/// See [RaylibRlgl.rlEnableBackfaceCulling].
JSFunction get rlEnableBackfaceCulling => _module.rlEnableBackfaceCulling;
/// See [RaylibRlgl.rlDisableBackfaceCulling].
JSFunction get rlDisableBackfaceCulling => _module.rlDisableBackfaceCulling;
/// See [RaylibRlgl.rlColorMask].
JSFunction get rlColorMask => _module.rlColorMask;
/// See [RaylibRlgl.rlSetCullFace].
JSFunction get rlSetCullFace => _module.rlSetCullFace;
/// See [RaylibRlgl.rlEnableScissorTest].
JSFunction get rlEnableScissorTest => _module.rlEnableScissorTest;
/// See [RaylibRlgl.rlDisableScissorTest].
JSFunction get rlDisableScissorTest => _module.rlDisableScissorTest;
/// See [RaylibRlgl.rlScissor].
JSFunction get rlScissor => _module.rlScissor;
/// See [RaylibRlgl.rlEnablePointMode].
JSFunction get rlEnablePointMode => _module.rlEnablePointMode;
/// See [RaylibRlgl.rlDisablePointMode].
JSFunction get rlDisablePointMode => _module.rlDisablePointMode;
/// See [RaylibRlgl.rlSetPointSize].
JSFunction get rlSetPointSize => _module.rlSetPointSize;
/// See [RaylibRlgl.rlGetPointSize].
JSFunction get rlGetPointSize => _module.rlGetPointSize;
/// See [RaylibRlgl.rlEnableWireMode].
JSFunction get rlEnableWireMode => _module.rlEnableWireMode;
/// See [RaylibRlgl.rlDisableWireMode].
JSFunction get rlDisableWireMode => _module.rlDisableWireMode;
/// See [RaylibRlgl.rlSetLineWidth].
JSFunction get rlSetLineWidth => _module.rlSetLineWidth;
/// See [RaylibRlgl.rlGetLineWidth].
JSFunction get rlGetLineWidth => _module.rlGetLineWidth;
/// See [RaylibRlgl.rlEnableSmoothLines].
JSFunction get rlEnableSmoothLines => _module.rlEnableSmoothLines;
/// See [RaylibRlgl.rlDisableSmoothLines].
JSFunction get rlDisableSmoothLines => _module.rlDisableSmoothLines;
/// See [RaylibRlgl.rlEnableStereoRender].
JSFunction get rlEnableStereoRender => _module.rlEnableStereoRender;
/// See [RaylibRlgl.rlDisableStereoRender].
JSFunction get rlDisableStereoRender => _module.rlDisableStereoRender;
/// See [RaylibRlgl.rlIsStereoRenderEnabled].
JSFunction get rlIsStereoRenderEnabled => _module.rlIsStereoRenderEnabled;
/// See [RaylibRlgl.rlClearColor].
JSFunction get rlClearColor => _module.rlClearColor;
/// See [RaylibRlgl.rlClearScreenBuffers].
JSFunction get rlClearScreenBuffers => _module.rlClearScreenBuffers;
/// See [RaylibRlgl.rlCheckErrors].
JSFunction get rlCheckErrors => _module.rlCheckErrors;
/// See [RaylibRlgl.rlSetBlendMode].
JSFunction get rlSetBlendMode => _module.rlSetBlendMode;
/// See [RaylibRlgl.rlSetBlendFactors].
JSFunction get rlSetBlendFactors => _module.rlSetBlendFactors;
/// See [RaylibRlgl.rlSetBlendFactorsSeparate].
JSFunction get rlSetBlendFactorsSeparate => _module.rlSetBlendFactorsSeparate;
/// See [RaylibRlgl.rlglInit].
JSFunction get rlglInit => _module.rlglInit;
/// See [RaylibRlgl.rlglClose].
JSFunction get rlglClose => _module.rlglClose;
/// See [RaylibRlgl.rlLoadExtensions].
JSFunction get rlLoadExtensions => _module.rlLoadExtensions;
/// See [RaylibRlgl.rlGetProcAddress].
JSFunction get rlGetProcAddress => _module.rlGetProcAddress;
/// See [RaylibRlgl.rlGetVersion].
JSFunction get rlGetVersion => _module.rlGetVersion;
/// See [RaylibRlgl.rlSetFramebufferWidth].
JSFunction get rlSetFramebufferWidth => _module.rlSetFramebufferWidth;
/// See [RaylibRlgl.rlGetFramebufferWidth].
JSFunction get rlGetFramebufferWidth => _module.rlGetFramebufferWidth;
/// See [RaylibRlgl.rlSetFramebufferHeight].
JSFunction get rlSetFramebufferHeight => _module.rlSetFramebufferHeight;
/// See [RaylibRlgl.rlGetFramebufferHeight].
JSFunction get rlGetFramebufferHeight => _module.rlGetFramebufferHeight;
/// See [RaylibRlgl.rlGetTextureIdDefault].
JSFunction get rlGetTextureIdDefault => _module.rlGetTextureIdDefault;
/// See [RaylibRlgl.rlGetShaderIdDefault].
JSFunction get rlGetShaderIdDefault => _module.rlGetShaderIdDefault;
/// See [RaylibRlgl.rlGetShaderLocsDefault].
JSFunction get rlGetShaderLocsDefault => _module.rlGetShaderLocsDefault;
/// See [RaylibRlgl.rlLoadRenderBatch].
JSFunction get rlLoadRenderBatch => _module.rlLoadRenderBatch;
/// See [RaylibRlgl.rlUnloadRenderBatch].
JSFunction get rlUnloadRenderBatch => _module.rlUnloadRenderBatch;
/// See [RaylibRlgl.rlDrawRenderBatch].
JSFunction get rlDrawRenderBatch => _module.rlDrawRenderBatch;
/// See [RaylibRlgl.rlSetRenderBatchActive].
JSFunction get rlSetRenderBatchActive => _module.rlSetRenderBatchActive;
/// See [RaylibRlgl.rlDrawRenderBatchActive].
JSFunction get rlDrawRenderBatchActive => _module.rlDrawRenderBatchActive;
/// See [RaylibRlgl.rlCheckRenderBatchLimit].
JSFunction get rlCheckRenderBatchLimit => _module.rlCheckRenderBatchLimit;
/// See [RaylibRlgl.rlSetTexture].
JSFunction get rlSetTexture => _module.rlSetTexture;
/// See [RaylibRlgl.rlLoadVertexArray].
JSFunction get rlLoadVertexArray => _module.rlLoadVertexArray;
/// See [RaylibRlgl.rlLoadVertexBuffer].
JSFunction get rlLoadVertexBuffer => _module.rlLoadVertexBuffer;
/// See [RaylibRlgl.rlLoadVertexBufferElement].
JSFunction get rlLoadVertexBufferElement => _module.rlLoadVertexBufferElement;
/// See [RaylibRlgl.rlUpdateVertexBuffer].
JSFunction get rlUpdateVertexBuffer => _module.rlUpdateVertexBuffer;
/// See [RaylibRlgl.rlUpdateVertexBufferElements].
JSFunction get rlUpdateVertexBufferElements => _module.rlUpdateVertexBufferElements;
/// See [RaylibRlgl.rlUnloadVertexArray].
JSFunction get rlUnloadVertexArray => _module.rlUnloadVertexArray;
/// See [RaylibRlgl.rlUnloadVertexBuffer].
JSFunction get rlUnloadVertexBuffer => _module.rlUnloadVertexBuffer;
/// See [RaylibRlgl.rlSetVertexAttribute].
JSFunction get rlSetVertexAttribute => _module.rlSetVertexAttribute;
/// See [RaylibRlgl.rlSetVertexAttributeDivisor].
JSFunction get rlSetVertexAttributeDivisor => _module.rlSetVertexAttributeDivisor;
/// See [RaylibRlgl.rlSetVertexAttributeDefault].
JSFunction get rlSetVertexAttributeDefault => _module.rlSetVertexAttributeDefault;
/// See [RaylibRlgl.rlDrawVertexArray].
JSFunction get rlDrawVertexArray => _module.rlDrawVertexArray;
/// See [RaylibRlgl.rlDrawVertexArrayElements].
JSFunction get rlDrawVertexArrayElements => _module.rlDrawVertexArrayElements;
/// See [RaylibRlgl.rlDrawVertexArrayInstanced].
JSFunction get rlDrawVertexArrayInstanced => _module.rlDrawVertexArrayInstanced;
/// See [RaylibRlgl.rlDrawVertexArrayElementsInstanced].
JSFunction get rlDrawVertexArrayElementsInstanced => _module.rlDrawVertexArrayElementsInstanced;
/// See [RaylibRlgl.rlLoadTexture].
JSFunction get rlLoadTexture => _module.rlLoadTexture;
/// See [RaylibRlgl.rlLoadTextureDepth].
JSFunction get rlLoadTextureDepth => _module.rlLoadTextureDepth;
/// See [RaylibRlgl.rlLoadTextureCubemap].
JSFunction get rlLoadTextureCubemap => _module.rlLoadTextureCubemap;
/// See [RaylibRlgl.rlUpdateTexture].
JSFunction get rlUpdateTexture => _module.rlUpdateTexture;
/// See [RaylibRlgl.rlGetGlTextureFormats].
JSFunction get rlGetGlTextureFormats => _module.rlGetGlTextureFormats;
/// See [RaylibRlgl.rlGetPixelFormatName].
JSFunction get rlGetPixelFormatName => _module.rlGetPixelFormatName;
/// See [RaylibRlgl.rlUnloadTexture].
JSFunction get rlUnloadTexture => _module.rlUnloadTexture;
/// See [RaylibRlgl.rlGenTextureMipmaps].
JSFunction get rlGenTextureMipmaps => _module.rlGenTextureMipmaps;
/// See [RaylibRlgl.rlReadTexturePixels].
JSFunction get rlReadTexturePixels => _module.rlReadTexturePixels;
/// See [RaylibRlgl.rlReadScreenPixels].
JSFunction get rlReadScreenPixels => _module.rlReadScreenPixels;
/// See [RaylibRlgl.rlLoadFramebuffer].
JSFunction get rlLoadFramebuffer => _module.rlLoadFramebuffer;
/// See [RaylibRlgl.rlFramebufferAttach].
JSFunction get rlFramebufferAttach => _module.rlFramebufferAttach;
/// See [RaylibRlgl.rlFramebufferComplete].
JSFunction get rlFramebufferComplete => _module.rlFramebufferComplete;
/// See [RaylibRlgl.rlUnloadFramebuffer].
JSFunction get rlUnloadFramebuffer => _module.rlUnloadFramebuffer;
/// See [RaylibRlgl.rlCopyFramebuffer].
JSFunction get rlCopyFramebuffer => _module.rlCopyFramebuffer;
/// See [RaylibRlgl.rlResizeFramebuffer].
JSFunction get rlResizeFramebuffer => _module.rlResizeFramebuffer;
/// See [RaylibRlgl.rlLoadShader].
JSFunction get rlLoadShader => _module.rlLoadShader;
/// See [RaylibRlgl.rlLoadShaderProgram].
JSFunction get rlLoadShaderProgram => _module.rlLoadShaderProgram;
/// See [RaylibRlgl.rlLoadShaderProgramEx].
JSFunction get rlLoadShaderProgramEx => _module.rlLoadShaderProgramEx;
/// See [RaylibRlgl.rlLoadShaderProgramCompute].
JSFunction get rlLoadShaderProgramCompute => _module.rlLoadShaderProgramCompute;
/// See [RaylibRlgl.rlUnloadShader].
JSFunction get rlUnloadShader => _module.rlUnloadShader;
/// See [RaylibRlgl.rlUnloadShaderProgram].
JSFunction get rlUnloadShaderProgram => _module.rlUnloadShaderProgram;
/// See [RaylibRlgl.rlGetLocationUniform].
JSFunction get rlGetLocationUniform => _module.rlGetLocationUniform;
/// See [RaylibRlgl.rlGetLocationAttrib].
JSFunction get rlGetLocationAttrib => _module.rlGetLocationAttrib;
/// See [RaylibRlgl.rlSetUniform].
JSFunction get rlSetUniform => _module.rlSetUniform;
/// See [RaylibRlgl.rlSetUniformMatrix].
JSFunction get rlSetUniformMatrix => _module.rlSetUniformMatrix;
/// See [RaylibRlgl.rlSetUniformMatrices].
JSFunction get rlSetUniformMatrices => _module.rlSetUniformMatrices;
/// See [RaylibRlgl.rlSetUniformSampler].
JSFunction get rlSetUniformSampler => _module.rlSetUniformSampler;
/// See [RaylibRlgl.rlSetShader].
JSFunction get rlSetShader => _module.rlSetShader;
/// See [RaylibRlgl.rlComputeShaderDispatch].
JSFunction get rlComputeShaderDispatch => _module.rlComputeShaderDispatch;
/// See [RaylibRlgl.rlLoadShaderBuffer].
JSFunction get rlLoadShaderBuffer => _module.rlLoadShaderBuffer;
/// See [RaylibRlgl.rlUnloadShaderBuffer].
JSFunction get rlUnloadShaderBuffer => _module.rlUnloadShaderBuffer;
/// See [RaylibRlgl.rlUpdateShaderBuffer].
JSFunction get rlUpdateShaderBuffer => _module.rlUpdateShaderBuffer;
/// See [RaylibRlgl.rlBindShaderBuffer].
JSFunction get rlBindShaderBuffer => _module.rlBindShaderBuffer;
/// See [RaylibRlgl.rlReadShaderBuffer].
JSFunction get rlReadShaderBuffer => _module.rlReadShaderBuffer;
/// See [RaylibRlgl.rlCopyShaderBuffer].
JSFunction get rlCopyShaderBuffer => _module.rlCopyShaderBuffer;
/// See [RaylibRlgl.rlGetShaderBufferSize].
JSFunction get rlGetShaderBufferSize => _module.rlGetShaderBufferSize;
/// See [RaylibRlgl.rlBindImageTexture].
JSFunction get rlBindImageTexture => _module.rlBindImageTexture;
/// See [RaylibRlgl.rlGetMatrixModelview].
JSFunction get rlGetMatrixModelview => _module.rlGetMatrixModelview;
/// See [RaylibRlgl.rlGetMatrixProjection].
JSFunction get rlGetMatrixProjection => _module.rlGetMatrixProjection;
/// See [RaylibRlgl.rlGetMatrixTransform].
JSFunction get rlGetMatrixTransform => _module.rlGetMatrixTransform;
/// See [RaylibRlgl.rlGetMatrixProjectionStereo].
JSFunction get rlGetMatrixProjectionStereo => _module.rlGetMatrixProjectionStereo;
/// See [RaylibRlgl.rlGetMatrixViewOffsetStereo].
JSFunction get rlGetMatrixViewOffsetStereo => _module.rlGetMatrixViewOffsetStereo;
/// See [RaylibRlgl.rlSetMatrixProjection].
JSFunction get rlSetMatrixProjection => _module.rlSetMatrixProjection;
/// See [RaylibRlgl.rlSetMatrixModelview].
JSFunction get rlSetMatrixModelview => _module.rlSetMatrixModelview;
/// See [RaylibRlgl.rlSetMatrixProjectionStereo].
JSFunction get rlSetMatrixProjectionStereo => _module.rlSetMatrixProjectionStereo;
/// See [RaylibRlgl.rlSetMatrixViewOffsetStereo].
JSFunction get rlSetMatrixViewOffsetStereo => _module.rlSetMatrixViewOffsetStereo;
/// See [RaylibRlgl.rlLoadDrawCube].
JSFunction get rlLoadDrawCube => _module.rlLoadDrawCube;
/// See [RaylibRlgl.rlLoadDrawQuad].
JSFunction get rlLoadDrawQuad => _module.rlLoadDrawQuad;