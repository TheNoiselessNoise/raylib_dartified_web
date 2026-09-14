part of '../../../raylib_dartified_web.dart';

class RaylibRlglFlat extends RaylibRlglFlatModule<Raylib> {

  RaylibRlglFlat(super.rl);

  RaylibRlgl get _wasm => rl.module();

  @override
  void rlMatrixMode(
    int mode,
  ) => _wasm.rlMatrixMode.run([
    mode.toJS,
  ]);

  @override
  void rlPushMatrix() => _wasm.rlPushMatrix.run();

  @override
  void rlPopMatrix() => _wasm.rlPopMatrix.run();

  @override
  void rlLoadIdentity() => _wasm.rlLoadIdentity.run();

  @override
  void rlTranslatef(
    double x,
    double y,
    double z,
  ) => _wasm.rlTranslatef.run([
    x.toJS,
    y.toJS,
    z.toJS,
  ]);

  @override
  void rlRotatef(
    double angle,
    double x,
    double y,
    double z,
  ) => _wasm.rlRotatef.run([
    angle.toJS,
    x.toJS,
    y.toJS,
    z.toJS,
  ]);

  @override
  void rlScalef(
    double x,
    double y,
    double z,
  ) => _wasm.rlScalef.run([
    x.toJS,
    y.toJS,
    z.toJS,
  ]);

  @override
  void rlMultMatrixf(
    MemoryPointer<RFloat32> matf, 
  ) => _wasm.rlMultMatrixf.run([
    matf.toJS,
  ]);

  @override
  void rlFrustum(
    double left,
    double right,
    double bottom,
    double top,
    double znear,
    double zfar,
  ) => _wasm.rlFrustum.run([
    left.toJS,
    right.toJS,
    bottom.toJS,
    top.toJS,
    znear.toJS,
    zfar.toJS,
  ]);

  @override
  void rlOrtho(
    double left,
    double right,
    double bottom,
    double top,
    double znear,
    double zfar,
  ) => _wasm.rlOrtho.run([
    left.toJS,
    right.toJS,
    bottom.toJS,
    top.toJS,
    znear.toJS,
    zfar.toJS,
  ]);

  @override
  void rlViewport(
    int x,
    int y,
    int width,
    int height,
  ) => _wasm.rlViewport.run([
    x.toJS,
    y.toJS,
    width.toJS,
    height.toJS,
  ]);

  @override
  void rlSetClipPlanes(
    double nearPlane,
    double farPlane,
  ) => _wasm.rlSetClipPlanes.run([
    nearPlane.toJS,
    farPlane.toJS,
  ]);

  @override
  double rlGetCullDistanceNear() => _wasm.rlGetCullDistanceNear.run().toDouble();

  @override
  double rlGetCullDistanceFar() => _wasm.rlGetCullDistanceFar.run().toDouble();

  @override
  void rlBegin(
    int mode,
  ) => _wasm.rlBegin.run([
    mode.toJS,
  ]);

  @override
  void rlEnd() => _wasm.rlEnd.run();

  @override
  void rlVertex2i(
    int x,
    int y,
  ) => _wasm.rlVertex2i.run([
    x.toJS,
    y.toJS,
  ]);

  @override
  void rlVertex2f(
    double x,
    double y,
  ) => _wasm.rlVertex2f.run([
    x.toJS,
    y.toJS,
  ]);

  @override
  void rlVertex3f(
    double x,
    double y,
    double z
  ) => _wasm.rlVertex3f.run([
    x.toJS,
    y.toJS,
    z.toJS,
  ]);

  @override
  void rlTexCoord2f(
    double x,
    double y,
  ) => _wasm.rlTexCoord2f.run([
    x.toJS,
    y.toJS,
  ]);

  @override
  void rlNormal3f(
    double x,
    double y,
    double z,
  ) => _wasm.rlNormal3f.run([
    x.toJS,
    y.toJS,
    z.toJS,
  ]);

  @override
  void rlColor4ub(
    int r,
    int g,
    int b,
    int a,
  ) => _wasm.rlColor4ub.run([
    r.toJS,
    g.toJS,
    b.toJS,
    a.toJS,
  ]);

  @override
  void rlColor3f(
    double x,
    double y,
    double z,
  ) => _wasm.rlColor3f.run([
    x.toJS,
    y.toJS,
    z.toJS,
  ]);

  @override
  void rlColor4f(
    double x,
    double y,
    double z,
    double w,
  ) => _wasm.rlColor4f.run([
    x.toJS,
    y.toJS,
    z.toJS,
    w.toJS,
  ]);

  @override
  bool rlEnableVertexArray(
    int vaoId,
  ) => _wasm.rlEnableVertexArray.run([
    vaoId.toJS,
  ]).toBool();

  @override
  void rlDisableVertexArray() => _wasm.rlDisableVertexArray.run();

  @override
  void rlEnableVertexBuffer(
    int id,
  ) => _wasm.rlEnableVertexBuffer.run([
    id.toJS,
  ]);

  @override
  void rlDisableVertexBuffer() => _wasm.rlDisableVertexBuffer.run();

  @override
  void rlEnableVertexBufferElement(
    int id,
  ) => _wasm.rlEnableVertexBufferElement.run([
    id.toJS,
  ]);

  @override
  void rlDisableVertexBufferElement() => _wasm.rlDisableVertexBufferElement.run();

  @override
  void rlEnableVertexAttribute(
    int index,
  ) => _wasm.rlEnableVertexAttribute.run([
    index.toJS,
  ]);

  @override
  void rlDisableVertexAttribute(
    int index,
  ) => _wasm.rlDisableVertexAttribute.run([
    index.toJS,
  ]);

  @override
  void rlEnableStatePointer(
    int vertexAttribType,
    MemoryPointer<RVoid> buffer,
  ) => _wasm.rlEnableStatePointer.run([
    vertexAttribType.toJS,
    buffer.toJS,
  ]);

  @override
  void rlDisableStatePointer(
    int vertexAttribType,
  ) => _wasm.rlDisableStatePointer.run([
    vertexAttribType.toJS,
  ]);

  @override
  void rlActiveTextureSlot(
    int slot,
  ) => _wasm.rlActiveTextureSlot.run([
    slot.toJS,
  ]);

  @override
  void rlEnableTexture(
    int id,
  ) => _wasm.rlEnableTexture.run([
    id.toJS,
  ]);

  @override
  void rlDisableTexture() => _wasm.rlDisableTexture.run();

  @override
  void rlEnableTextureCubemap(
    int id,
  ) => _wasm.rlEnableTextureCubemap.run([
    id.toJS,
  ]);

  @override
  void rlDisableTextureCubemap() => _wasm.rlDisableTextureCubemap.run();

  @override
  void rlTextureParameters(
    int id,
    int param,
    int value,
  ) => _wasm.rlTextureParameters.run([
    id.toJS,
    param.toJS,
    value.toJS,
  ]);

  @override
  void rlCubemapParameters(
    int id,
    int param,
    int value,
  ) => _wasm.rlCubemapParameters.run([
    id.toJS,
    param.toJS,
    value.toJS,
  ]);

  @override
  void rlEnableShader(
    int id,
  ) => _wasm.rlEnableShader.run([
    id.toJS,
  ]);

  @override
  void rlDisableShader() => _wasm.rlDisableShader.run();

  @override
  void rlEnableFramebuffer(
    int id,
  ) => _wasm.rlEnableFramebuffer.run([
    id.toJS,
  ]);

  @override
  void rlDisableFramebuffer() => _wasm.rlDisableFramebuffer.run();

  @override
  int rlGetActiveFramebuffer() => _wasm.rlGetActiveFramebuffer.run().toInt();

  @override
  void rlActiveDrawBuffers(
    int count,
  ) => _wasm.rlActiveDrawBuffers.run([
    count.toJS,
  ]);

  @override
  void rlBlitFramebuffer(
    int srcX,
    int srcY,
    int srcWidth,
    int srcHeight,
    int dstX,
    int dstY,
    int dstWidth,
    int dstHeight,
    int bufferMask,
  ) => _wasm.rlBlitFramebuffer.run([
    srcX.toJS,
    srcY.toJS,
    srcWidth.toJS,
    srcHeight.toJS,
    dstX.toJS,
    dstY.toJS,
    dstWidth.toJS,
    dstHeight.toJS,
    bufferMask.toJS,
  ]);

  @override
  void rlBindFramebuffer(
    int target,
    int framebuffer,
  ) => _wasm.rlBindFramebuffer.run([
    target.toJS,
    framebuffer.toJS,
  ]);

  @override
  void rlEnableColorBlend() => _wasm.rlEnableColorBlend.run();

  @override
  void rlDisableColorBlend() => _wasm.rlDisableColorBlend.run();

  @override
  void rlEnableDepthTest() => _wasm.rlEnableDepthTest.run();

  @override
  void rlDisableDepthTest() => _wasm.rlDisableDepthTest.run();

  @override
  void rlEnableDepthMask() => _wasm.rlEnableDepthMask.run();

  @override
  void rlDisableDepthMask() => _wasm.rlDisableDepthMask.run();

  @override
  void rlEnableBackfaceCulling() => _wasm.rlEnableBackfaceCulling.run();

  @override
  void rlDisableBackfaceCulling() => _wasm.rlDisableBackfaceCulling.run();

  @override
  void rlColorMask(
    bool r,
    bool g,
    bool b,
    bool a,
  ) => _wasm.rlColorMask.run([
    r.toJS,
    g.toJS,
    b.toJS,
    a.toJS,
  ]);

  @override
  void rlSetCullFace(
    int mode,
  ) => _wasm.rlSetCullFace.run([
    mode.toJS,
  ]);

  @override
  void rlEnableScissorTest() => _wasm.rlEnableScissorTest.run();

  @override
  void rlDisableScissorTest() => _wasm.rlDisableScissorTest.run();

  @override
  void rlScissor(
    int x,
    int y,
    int width,
    int height,
  ) => _wasm.rlScissor.run([
    x.toJS,
    y.toJS,
    width.toJS,
    height.toJS,
  ]);

  @override
  void rlEnablePointMode() => _wasm.rlEnablePointMode.run();

  @override
  void rlDisablePointMode() => _wasm.rlDisablePointMode.run();

  @override
  void rlSetPointSize(
    double size,
  ) => _wasm.rlSetPointSize.run([
    size.toJS,
  ]);

  @override
  double rlGetPointSize() => _wasm.rlGetPointSize.run().toDouble();

  @override
  void rlEnableWireMode() => _wasm.rlEnableWireMode.run();

  @override
  void rlDisableWireMode() => _wasm.rlDisableWireMode.run();

  @override
  void rlSetLineWidth(
    double width,
  ) => _wasm.rlSetLineWidth.run([
    width.toJS,
  ]);

  @override
  double rlGetLineWidth() => _wasm.rlGetLineWidth.run().toDouble();

  @override
  void rlEnableSmoothLines() => _wasm.rlEnableSmoothLines.run();

  @override
  void rlDisableSmoothLines() => _wasm.rlDisableSmoothLines.run();

  @override
  void rlEnableStereoRender() => _wasm.rlEnableStereoRender.run();

  @override
  void rlDisableStereoRender() => _wasm.rlDisableStereoRender.run();

  @override
  bool rlIsStereoRenderEnabled() => _wasm.rlIsStereoRenderEnabled.run().toBool();

  @override
  void rlClearColor(
    int r,
    int g,
    int b,
    int a,
  ) => _wasm.rlClearColor.run([
    r.toJS,
    g.toJS,
    b.toJS,
    a.toJS,
  ]);

  @override
  void rlClearScreenBuffers() => _wasm.rlClearScreenBuffers.run();

  @override
  void rlCheckErrors() => _wasm.rlCheckErrors.run();

  @override
  void rlSetBlendMode(
    int mode,
  ) => _wasm.rlSetBlendMode.run([
    mode.toJS,
  ]);

  @override
  void rlSetBlendFactors(
    int glSrcFactor,
    int glDstFactor,
    int glEquation,
  ) => _wasm.rlSetBlendFactors.run([
    glSrcFactor.toJS,
    glDstFactor.toJS,
    glEquation.toJS,
  ]);

  @override
  void rlSetBlendFactorsSeparate(
    int glSrcRGB,
    int glDstRGB,
    int glSrcAlpha,
    int glDstAlpha,
    int glEqRGB,
    int glEqAlpha,
  ) => _wasm.rlSetBlendFactorsSeparate.run([
    glSrcRGB.toJS,
    glDstRGB.toJS,
    glSrcAlpha.toJS,
    glDstAlpha.toJS,
    glEqRGB.toJS,
    glEqAlpha.toJS,
  ]);

  @override
  void rlglInit(
    int width,
    int height,
  ) => _wasm.rlglInit.run([
    width.toJS,
    height.toJS,
  ]);

  @override
  void rlglClose() => _wasm.rlglClose.run();

  @override
  void rlLoadExtensions(
    MemoryPointer<RVoid> loader,
  ) => _wasm.rlLoadExtensions.run([
    loader.toJS,
  ]);

  @override
  WasmMemoryPointer<RVoid> rlGetProcAddress(
    MemoryPointer<RChar> procName,
  ) => _wasm.rlGetProcAddress.run([
    procName.toJS,
  ]).asMemoryPointer();

  @override
  int rlGetVersion() => _wasm.rlGetVersion.run().toInt();

  @override
  void rlSetFramebufferWidth(
    int width,
  ) => _wasm.rlSetFramebufferWidth.run([
    width.toJS,
  ]);

  @override
  int rlGetFramebufferWidth() => _wasm.rlGetFramebufferWidth.run().toInt();

  @override
  void rlSetFramebufferHeight(
    int height,
  ) => _wasm.rlSetFramebufferHeight.run([
    height.toJS,
  ]);

  @override
  int rlGetFramebufferHeight() => _wasm.rlGetFramebufferHeight.run().toInt();

  @override
  int rlGetTextureIdDefault() => _wasm.rlGetTextureIdDefault.run().toInt();

  @override
  int rlGetShaderIdDefault() => _wasm.rlGetShaderIdDefault.run().toInt();

  @override
  WasmMemoryPointer<RInt> rlGetShaderLocsDefault() => _wasm.rlGetShaderLocsDefault.run().asMemoryPointer();

  @override
  RlRenderBatchD rlLoadRenderBatch(
    int numBuffers,
    int bufferElements,
  ) => rl.Temp.RlRenderBatch$.RefCapture(
    RaylibCaptureIds.rlLoadRenderBatch,
    (p) => _wasm.rlLoadRenderBatch.run([
      p.toJS,
      numBuffers.toJS,
      bufferElements.toJS,
    ]),
  );

  @override
  void rlUnloadRenderBatch(
    RlRenderBatchD batch,
  ) => _wasm.rlUnloadRenderBatch.run([
    rl.Temp.RlRenderBatch$.Ref1(batch).toJS,
  ]);

  @override
  void rlDrawRenderBatch(
    StructPointer<RlRenderBatchD> batch,
  ) => _wasm.rlDrawRenderBatch.run([
    batch.toJS,
  ]);

  @override
  void rlSetRenderBatchActive(
    StructPointer<RlRenderBatchD> batch,
  ) => _wasm.rlSetRenderBatchActive.run([
    batch.toJS,
  ]);

  @override
  void rlDrawRenderBatchActive() => _wasm.rlDrawRenderBatchActive.run();

  @override
  bool rlCheckRenderBatchLimit(
    int vCount,
  ) => _wasm.rlCheckRenderBatchLimit.run([
    vCount.toJS,
  ]).toBool();

  @override
  void rlSetTexture(
    int id,
  ) => _wasm.rlSetTexture.run([
    id.toJS,
  ]);

  @override
  int rlLoadVertexArray() => _wasm.rlLoadVertexArray.run().toInt();

  @override
  int rlLoadVertexBuffer(
    MemoryPointer<RVoid> buffer,
    int size,
    bool dynamic,
  ) => _wasm.rlLoadVertexBuffer.run([
    buffer.toJS,
    size.toJS,
    dynamic.toJS,
  ]).toInt();

  @override
  int rlLoadVertexBufferElement(
    MemoryPointer<RVoid> buffer,
    int size,
    bool dynamic,
  ) => _wasm.rlLoadVertexBufferElement.run([
    buffer.toJS,
    size.toJS,
    dynamic.toJS,
  ]).toInt();

  @override
  void rlUpdateVertexBuffer(
    int bufferId,
    MemoryPointer<RVoid> data,
    int dataSize,
    int offset,
  ) => _wasm.rlUpdateVertexBuffer.run([
    bufferId.toJS,
    data.toJS,
    dataSize.toJS,
    offset.toJS,
  ]);

  @override
  void rlUpdateVertexBufferElements(
    int id,
    MemoryPointer<RVoid> data,
    int dataSize,
    int offset,
  ) => _wasm.rlUpdateVertexBufferElements.run([
    id.toJS,
    data.toJS,
    dataSize.toJS,
    offset.toJS,
  ]);

  @override
  void rlUnloadVertexArray(
    int vaoId,
  ) => _wasm.rlUnloadVertexArray.run([
    vaoId.toJS,
  ]);

  @override
  void rlUnloadVertexBuffer(
    int vboId,
  ) => _wasm.rlUnloadVertexBuffer.run([
    vboId.toJS,
  ]);

  @override
  void rlSetVertexAttribute(
    int index,
    int compSize,
    int type,
    bool normalized,
    int stride,
    int offset,
  ) => _wasm.rlSetVertexAttribute.run([
    index.toJS,
    compSize.toJS,
    type.toJS,
    normalized.toJS,
    stride.toJS,
    offset.toJS,
  ]);

  @override
  void rlSetVertexAttributeDivisor(
    int index,
    int divisor,
  ) => _wasm.rlSetVertexAttributeDivisor.run([
    index.toJS,
    divisor.toJS,
  ]);

  @override
  void rlSetVertexAttributeDefault(
    int locIndex,
    MemoryPointer<RVoid> value,
    int attribType,
    int count,
  ) => _wasm.rlSetVertexAttributeDefault.run([
    locIndex.toJS,
    value.toJS,
    attribType.toJS,
    count.toJS,
  ]);

  @override
  void rlDrawVertexArray(
    int offset,
    int count,
  ) => _wasm.rlDrawVertexArray.run([
    offset.toJS,
    count.toJS,
  ]);

  @override
  void rlDrawVertexArrayElements(
    int offset,
    int count,
    MemoryPointer<RVoid> buffer,
  ) => _wasm.rlDrawVertexArrayElements.run([
    offset.toJS,
    count.toJS,
    buffer.toJS,
  ]);

  @override
  void rlDrawVertexArrayInstanced(
    int offset,
    int count,
    int instances,
  ) => _wasm.rlDrawVertexArrayInstanced.run([
    offset.toJS,
    count.toJS,
    instances.toJS,
  ]);

  @override
  void rlDrawVertexArrayElementsInstanced(
    int offset,
    int count,
    MemoryPointer<RVoid> buffer,
    int instances,
  ) => _wasm.rlDrawVertexArrayElementsInstanced.run([
    offset.toJS,
    count.toJS,
    buffer.toJS,
    instances.toJS,
  ]);

  @override
  int rlLoadTexture(
    MemoryPointer<RVoid> data,
    int width,
    int height,
    int format,
    int mipmapCount,
  ) => _wasm.rlLoadTexture.run([
    data.toJS,
    width.toJS,
    height.toJS,
    format.toJS,
    mipmapCount.toJS,
  ]).toInt();

  @override
  int rlLoadTextureDepth(
    int width,
    int height,
    bool useRenderBuffer,
  ) => _wasm.rlLoadTextureDepth.run([
    width.toJS,
    height.toJS,
    useRenderBuffer.toJS,
  ]).toInt();

  @override
  int rlLoadTextureCubemap(
    MemoryPointer<RVoid> data,
    int size,
    int format,
    int mipmapCount,
  ) => _wasm.rlLoadTextureCubemap.run([
    data.toJS,
    size.toJS,
    format.toJS,
    mipmapCount.toJS,
  ]).toInt();

  @override
  void rlUpdateTexture(
    int id,
    int offsetX,
    int offsetY,
    int width,
    int height,
    int format,
    MemoryPointer<RVoid> data,
  ) => _wasm.rlUpdateTexture.run([
    id.toJS,
    offsetX.toJS,
    offsetY.toJS,
    width.toJS,
    height.toJS,
    format.toJS,
    data.toJS,
  ]);

  @override
  void rlGetGlTextureFormats(
    int format,
    MemoryPointer<RUnsignedInt> glInternalFormat,
    MemoryPointer<RUnsignedInt> glFormat,
    MemoryPointer<RUnsignedInt> glType,
  ) => _wasm.rlGetGlTextureFormats.run([
    format.toJS,
    glInternalFormat.toJS,
    glFormat.toJS,
    glType.toJS,
  ]);

  @override
  WasmMemoryPointer<RChar> rlGetPixelFormatName(
    int format,
  ) => _wasm.rlGetPixelFormatName.run([
    format.toJS,
  ]).asMemoryPointer();

  @override
  void rlUnloadTexture(
    int id,
  ) => _wasm.rlUnloadTexture.run([
    id.toJS,
  ]);

  @override
  void rlGenTextureMipmaps(
    int id,
    int width,
    int height,
    int format,
    MemoryPointer<RInt> mipmaps,
  ) => _wasm.rlGenTextureMipmaps.run([
    id.toJS,
    width.toJS,
    height.toJS,
    format.toJS,
    mipmaps.toJS, 
  ]);

  @override
  WasmMemoryPointer<RVoid> rlReadTexturePixels(
    int id,
    int width,
    int height,
    int format,
  ) => _wasm.rlReadTexturePixels.run([
    id.toJS,
    width.toJS,
    height.toJS,
    format.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RUnsignedChar> rlReadScreenPixels(
    int width,
    int height,
  ) => _wasm.rlReadScreenPixels.run([
    width.toJS,
    height.toJS,
  ]).asMemoryPointer();

  @override
  int rlLoadFramebuffer() => _wasm.rlLoadFramebuffer.run().toInt();

  @override
  void rlFramebufferAttach(
    int fboId,
    int texId,
    int attachType,
    int texType,
    int mipLevel,
  ) => _wasm.rlFramebufferAttach.run([
    fboId.toJS,
    texId.toJS,
    attachType.toJS,
    texType.toJS,
    mipLevel.toJS,
  ]);

  @override
  bool rlFramebufferComplete(
    int id,
  ) => _wasm.rlFramebufferComplete.run([
    id.toJS,
  ]).toBool();

  @override
  void rlUnloadFramebuffer(
    int id,
  ) => _wasm.rlUnloadFramebuffer.run([
    id.toJS,
  ]).toBool();

  @override
  void rlCopyFramebuffer(
    int x,
    int y,
    int width,
    int height,
    int format,
    MemoryPointer<RVoid> pixels,
  ) => _wasm.rlCopyFramebuffer.run([
    x.toJS,
    y.toJS,
    width.toJS,
    height.toJS,
    format.toJS,
    pixels.toJS,
  ]);

  @override
  void rlResizeFramebuffer(
    int width,
    int height,
  ) => _wasm.rlResizeFramebuffer.run([
    width.toJS,
    height.toJS,
  ]);

  @override
  int rlLoadShader(
    MemoryPointer<RChar> code,
    int type,
  ) => _wasm.rlLoadShader.run([
    code.toJS,
    type.toJS,
  ]).toInt();

  @override
  int rlLoadShaderProgram(
    MemoryPointer<RChar> vsCode,
    MemoryPointer<RChar> fsCode,
  ) => _wasm.rlLoadShaderProgram.run([
    vsCode.toJS,
    fsCode.toJS,
  ]).toInt();

  @override
  int rlLoadShaderProgramEx(
    int vsId,
    int fsId,
  ) => _wasm.rlLoadShaderProgramEx.run([
    vsId.toJS,
    fsId.toJS,
  ]).toInt();

  @override
  int rlLoadShaderProgramCompute(
    int csId,
  ) => _wasm.rlLoadShaderProgramCompute.run([
    csId.toJS,
  ]).toInt();

  @override
  void rlUnloadShader(
    int id,
  ) => _wasm.rlUnloadShader.run([
    id.toJS,
  ]);

  @override
  void rlUnloadShaderProgram(
    int id,
  ) => _wasm.rlUnloadShaderProgram.run([
    id.toJS,
  ]);

  @override
  int rlGetLocationUniform(
    int shaderId,
    MemoryPointer<RChar> uniformName,
  ) => _wasm.rlGetLocationUniform.run([
    shaderId.toJS,
    uniformName.toJS,
  ]).toInt();

  @override
  int rlGetLocationAttrib(
    int shaderId,
    MemoryPointer<RChar> attribName,
  ) => _wasm.rlGetLocationAttrib.run([
    shaderId.toJS,
    attribName.toJS,
  ]).toInt();

  @override
  void rlSetUniform(
    int locIndex,
    MemoryPointer<RVoid> value,
    int uniformType,
    int count,
  ) => _wasm.rlSetUniform.run([
    locIndex.toJS,
    value.toJS,
    uniformType.toJS,
    count.toJS,
  ]);

  @override
  void rlSetUniformMatrix(
    int locIndex,
    MatrixD mat,
  ) => _wasm.rlSetUniformMatrix.run([
    locIndex.toJS,
    rl.Temp.Matrix$.Ref1(mat).toJS,
  ]);

  @override
  void rlSetUniformMatrices(
    int locIndex,
    StructPointer<MatrixD> mat,
    int count,
  ) => _wasm.rlSetUniformMatrices.run([
    locIndex.toJS,
    mat.toJS,
    count.toJS,
  ]);

  @override
  void rlSetUniformSampler(
    int locIndex,
    int textureId,
  ) => _wasm.rlSetUniformSampler.run([
    locIndex.toJS,
    textureId.toJS,
  ]);

  @override
  void rlSetShader(
    int id,
    MemoryPointer<RInt> locs,
  ) => _wasm.rlSetShader.run([
    id.toJS,
    locs.toJS,
  ]);

  @override
  void rlComputeShaderDispatch(
    int groupX,
    int groupY,
    int groupZ,
  ) => _wasm.rlComputeShaderDispatch.run([
    groupX.toJS,
    groupY.toJS,
    groupZ.toJS,
  ]);

  @override
  int rlLoadShaderBuffer(
    int size,
    MemoryPointer<RVoid> data,
    int usageHint,
  ) => _wasm.rlLoadShaderBuffer.run([
    size.toJS,
    data.toJS,
    usageHint.toJS,
  ]).toInt();

  @override
  void rlUnloadShaderBuffer(
    int ssboId,
  ) => _wasm.rlUnloadShaderBuffer.run([
    ssboId.toJS,
  ]);

  @override
  void rlUpdateShaderBuffer(
    int id,
    MemoryPointer<RVoid> data,
    int dataSize,
    int offset,
  ) => _wasm.rlUpdateShaderBuffer.run([
    id.toJS,
    data.toJS,
    dataSize.toJS,
    offset.toJS,
  ]);

  @override
  void rlBindShaderBuffer(
    int id,
    int index,
  ) => _wasm.rlBindShaderBuffer.run([
    id.toJS,
    index.toJS,
  ]);

  @override
  void rlReadShaderBuffer(
    int id,
    MemoryPointer<RVoid> dest,
    int count,
    int offset,
  ) => _wasm.rlReadShaderBuffer.run([
    id.toJS,
    dest.toJS,
    count.toJS,
    offset.toJS,
  ]);

  @override
  void rlCopyShaderBuffer(
    int destId,
    int srcId,
    int destOffset,
    int srcOffset,
    int count,
  ) => _wasm.rlCopyShaderBuffer.run([
    destId.toJS,
    srcId.toJS,
    destOffset.toJS,
    srcOffset.toJS,
    count.toJS,
  ]);

  @override
  int rlGetShaderBufferSize(
    int id,
  ) => _wasm.rlGetShaderBufferSize.run([
    id.toJS,
  ]).toInt();

  @override
  void rlBindImageTexture(
    int id,
    int index,
    int format,
    bool readonly,
  ) => _wasm.rlBindImageTexture.run([
    id.toJS,
    index.toJS,
    format.toJS,
    readonly.toJS,
  ]);

  @override
  MatrixD rlGetMatrixModelview() => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.rlGetMatrixModelview.run([
      p.toJS,
    ]),
  );

  @override
  MatrixD rlGetMatrixProjection() => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.rlGetMatrixProjection.run([
      p.toJS,
    ]),
  );

  @override
  MatrixD rlGetMatrixTransform() => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.rlGetMatrixTransform.run([
      p.toJS,
    ]),
  );

  @override
  MatrixD rlGetMatrixProjectionStereo(
    int eye,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.rlGetMatrixProjectionStereo.run([
      p.toJS,
      eye.toJS,
    ]),
  );

  @override
  MatrixD rlGetMatrixViewOffsetStereo(
    int eye,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => _wasm.rlGetMatrixViewOffsetStereo.run([
      p.toJS,
      eye.toJS,
    ]),
  );

  @override
  void rlSetMatrixProjection(
    MatrixD proj,
  ) => _wasm.rlSetMatrixProjection.run([
    rl.Temp.Matrix$.Ref1(proj).toJS,
  ]);

  @override
  void rlSetMatrixModelview(
    MatrixD view,
  ) => _wasm.rlSetMatrixModelview.run([
    rl.Temp.Matrix$.Ref1(view).toJS,
  ]);

  @override
  void rlSetMatrixProjectionStereo(
    MatrixD right,
    MatrixD left,
  ) => _wasm.rlSetMatrixProjectionStereo.run([
    rl.Temp.Matrix$.Ref1(right).toJS,
    rl.Temp.Matrix$.Ref2(left).toJS,
  ]);

  @override
  void rlSetMatrixViewOffsetStereo(
    MatrixD right,
    MatrixD left,
  ) => _wasm.rlSetMatrixViewOffsetStereo.run([
    rl.Temp.Matrix$.Ref1(right).toJS,
    rl.Temp.Matrix$.Ref2(left).toJS,
  ]);

  @override
  void rlLoadDrawCube() => _wasm.rlLoadDrawCube.run();

  @override
  void rlLoadDrawQuad() => _wasm.rlLoadDrawQuad.run();
}