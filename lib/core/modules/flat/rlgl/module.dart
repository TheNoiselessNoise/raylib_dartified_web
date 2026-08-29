part of '../../../raylib_dartified_web.dart';

class RaylibRlglFlat extends RaylibRlglFlatModule<Raylib> {

  RaylibRlglFlat(super.rl);

  @override
  void rlMatrixMode(
    int mode,
  ) => rl.Rlgl.rlMatrixMode.run([
    mode.toJS,
  ]);

  @override
  void rlPushMatrix() => rl.Rlgl.rlPushMatrix.run();

  @override
  void rlPopMatrix() => rl.Rlgl.rlPopMatrix.run();

  @override
  void rlLoadIdentity() => rl.Rlgl.rlLoadIdentity.run();

  @override
  void rlTranslatef(
    double x,
    double y,
    double z,
  ) => rl.Rlgl.rlTranslatef.run([
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
  ) => rl.Rlgl.rlRotatef.run([
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
  ) => rl.Rlgl.rlScalef.run([
    x.toJS,
    y.toJS,
    z.toJS,
  ]);

  @override
  void rlMultMatrixf(
    MemoryPointer<RFloat32> matf, 
  ) => rl.Rlgl.rlMultMatrixf.run([
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
  ) => rl.Rlgl.rlFrustum.run([
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
  ) => rl.Rlgl.rlOrtho.run([
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
  ) => rl.Rlgl.rlViewport.run([
    x.toJS,
    y.toJS,
    width.toJS,
    height.toJS,
  ]);

  @override
  void rlSetClipPlanes(
    double nearPlane,
    double farPlane,
  ) => rl.Rlgl.rlSetClipPlanes.run([
    nearPlane.toJS,
    farPlane.toJS,
  ]);

  @override
  double rlGetCullDistanceNear() => rl.Rlgl.rlGetCullDistanceNear.run().toDouble();

  @override
  double rlGetCullDistanceFar() => rl.Rlgl.rlGetCullDistanceFar.run().toDouble();

  @override
  void rlBegin(
    int mode,
  ) => rl.Rlgl.rlBegin.run([
    mode.toJS,
  ]);

  @override
  void rlEnd() => rl.Rlgl.rlEnd.run();

  @override
  void rlVertex2i(
    int x,
    int y,
  ) => rl.Rlgl.rlVertex2i.run([
    x.toJS,
    y.toJS,
  ]);

  @override
  void rlVertex2f(
    double x,
    double y,
  ) => rl.Rlgl.rlVertex2f.run([
    x.toJS,
    y.toJS,
  ]);

  @override
  void rlVertex3f(
    double x,
    double y,
    double z
  ) => rl.Rlgl.rlVertex3f.run([
    x.toJS,
    y.toJS,
    z.toJS,
  ]);

  @override
  void rlTexCoord2f(
    double x,
    double y,
  ) => rl.Rlgl.rlTexCoord2f.run([
    x.toJS,
    y.toJS,
  ]);

  @override
  void rlNormal3f(
    double x,
    double y,
    double z,
  ) => rl.Rlgl.rlNormal3f.run([
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
  ) => rl.Rlgl.rlColor4ub.run([
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
  ) => rl.Rlgl.rlColor3f.run([
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
  ) => rl.Rlgl.rlColor4f.run([
    x.toJS,
    y.toJS,
    z.toJS,
    w.toJS,
  ]);

  @override
  bool rlEnableVertexArray(
    int vaoId,
  ) => rl.Rlgl.rlEnableVertexArray.run([
    vaoId.toJS,
  ]).toBool();

  @override
  void rlDisableVertexArray() => rl.Rlgl.rlDisableVertexArray.run();

  @override
  void rlEnableVertexBuffer(
    int id,
  ) => rl.Rlgl.rlEnableVertexBuffer.run([
    id.toJS,
  ]);

  @override
  void rlDisableVertexBuffer() => rl.Rlgl.rlDisableVertexBuffer.run();

  @override
  void rlEnableVertexBufferElement(
    int id,
  ) => rl.Rlgl.rlEnableVertexBufferElement.run([
    id.toJS,
  ]);

  @override
  void rlDisableVertexBufferElement() => rl.Rlgl.rlDisableVertexBufferElement.run();

  @override
  void rlEnableVertexAttribute(
    int index,
  ) => rl.Rlgl.rlEnableVertexAttribute.run([
    index.toJS,
  ]);

  @override
  void rlDisableVertexAttribute(
    int index,
  ) => rl.Rlgl.rlDisableVertexAttribute.run([
    index.toJS,
  ]);

  @override
  void rlEnableStatePointer(
    int vertexAttribType,
    MemoryPointer<RVoid> buffer,
  ) => rl.Rlgl.rlEnableStatePointer.run([
    vertexAttribType.toJS,
    buffer.toJS,
  ]);

  @override
  void rlDisableStatePointer(
    int vertexAttribType,
  ) => rl.Rlgl.rlDisableStatePointer.run([
    vertexAttribType.toJS,
  ]);

  @override
  void rlActiveTextureSlot(
    int slot,
  ) => rl.Rlgl.rlActiveTextureSlot.run([
    slot.toJS,
  ]);

  @override
  void rlEnableTexture(
    int id,
  ) => rl.Rlgl.rlEnableTexture.run([
    id.toJS,
  ]);

  @override
  void rlDisableTexture() => rl.Rlgl.rlDisableTexture.run();

  @override
  void rlEnableTextureCubemap(
    int id,
  ) => rl.Rlgl.rlEnableTextureCubemap.run([
    id.toJS,
  ]);

  @override
  void rlDisableTextureCubemap() => rl.Rlgl.rlDisableTextureCubemap.run();

  @override
  void rlTextureParameters(
    int id,
    int param,
    int value,
  ) => rl.Rlgl.rlTextureParameters.run([
    id.toJS,
    param.toJS,
    value.toJS,
  ]);

  @override
  void rlCubemapParameters(
    int id,
    int param,
    int value,
  ) => rl.Rlgl.rlCubemapParameters.run([
    id.toJS,
    param.toJS,
    value.toJS,
  ]);

  @override
  void rlEnableShader(
    int id,
  ) => rl.Rlgl.rlEnableShader.run([
    id.toJS,
  ]);

  @override
  void rlDisableShader() => rl.Rlgl.rlDisableShader.run();

  @override
  void rlEnableFramebuffer(
    int id,
  ) => rl.Rlgl.rlEnableFramebuffer.run([
    id.toJS,
  ]);

  @override
  void rlDisableFramebuffer() => rl.Rlgl.rlDisableFramebuffer.run();

  @override
  int rlGetActiveFramebuffer() => rl.Rlgl.rlGetActiveFramebuffer.run().toInt();

  @override
  void rlActiveDrawBuffers(
    int count,
  ) => rl.Rlgl.rlActiveDrawBuffers.run([
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
  ) => rl.Rlgl.rlBlitFramebuffer.run([
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
  ) => rl.Rlgl.rlBindFramebuffer.run([
    target.toJS,
    framebuffer.toJS,
  ]);

  @override
  void rlEnableColorBlend() => rl.Rlgl.rlEnableColorBlend.run();

  @override
  void rlDisableColorBlend() => rl.Rlgl.rlDisableColorBlend.run();

  @override
  void rlEnableDepthTest() => rl.Rlgl.rlEnableDepthTest.run();

  @override
  void rlDisableDepthTest() => rl.Rlgl.rlDisableDepthTest.run();

  @override
  void rlEnableDepthMask() => rl.Rlgl.rlEnableDepthMask.run();

  @override
  void rlDisableDepthMask() => rl.Rlgl.rlDisableDepthMask.run();

  @override
  void rlEnableBackfaceCulling() => rl.Rlgl.rlEnableBackfaceCulling.run();

  @override
  void rlDisableBackfaceCulling() => rl.Rlgl.rlDisableBackfaceCulling.run();

  @override
  void rlColorMask(
    bool r,
    bool g,
    bool b,
    bool a,
  ) => rl.Rlgl.rlColorMask.run([
    r.toJS,
    g.toJS,
    b.toJS,
    a.toJS,
  ]);

  @override
  void rlSetCullFace(
    int mode,
  ) => rl.Rlgl.rlSetCullFace.run([
    mode.toJS,
  ]);

  @override
  void rlEnableScissorTest() => rl.Rlgl.rlEnableScissorTest.run();

  @override
  void rlDisableScissorTest() => rl.Rlgl.rlDisableScissorTest.run();

  @override
  void rlScissor(
    int x,
    int y,
    int width,
    int height,
  ) => rl.Rlgl.rlScissor.run([
    x.toJS,
    y.toJS,
    width.toJS,
    height.toJS,
  ]);

  @override
  void rlEnablePointMode() => rl.Rlgl.rlEnablePointMode.run();

  @override
  void rlDisablePointMode() => rl.Rlgl.rlDisablePointMode.run();

  @override
  void rlSetPointSize(
    double size,
  ) => rl.Rlgl.rlSetPointSize.run([
    size.toJS,
  ]);

  @override
  double rlGetPointSize() => rl.Rlgl.rlGetPointSize.run().toDouble();

  @override
  void rlEnableWireMode() => rl.Rlgl.rlEnableWireMode.run();

  @override
  void rlDisableWireMode() => rl.Rlgl.rlDisableWireMode.run();

  @override
  void rlSetLineWidth(
    double width,
  ) => rl.Rlgl.rlSetLineWidth.run([
    width.toJS,
  ]);

  @override
  double rlGetLineWidth() => rl.Rlgl.rlGetLineWidth.run().toDouble();

  @override
  void rlEnableSmoothLines() => rl.Rlgl.rlEnableSmoothLines.run();

  @override
  void rlDisableSmoothLines() => rl.Rlgl.rlDisableSmoothLines.run();

  @override
  void rlEnableStereoRender() => rl.Rlgl.rlEnableStereoRender.run();

  @override
  void rlDisableStereoRender() => rl.Rlgl.rlDisableStereoRender.run();

  @override
  bool rlIsStereoRenderEnabled() => rl.Rlgl.rlIsStereoRenderEnabled.run().toBool();

  @override
  void rlClearColor(
    int r,
    int g,
    int b,
    int a,
  ) => rl.Rlgl.rlClearColor.run([
    r.toJS,
    g.toJS,
    b.toJS,
    a.toJS,
  ]);

  @override
  void rlClearScreenBuffers() => rl.Rlgl.rlClearScreenBuffers.run();

  @override
  void rlCheckErrors() => rl.Rlgl.rlCheckErrors.run();

  @override
  void rlSetBlendMode(
    int mode,
  ) => rl.Rlgl.rlSetBlendMode.run([
    mode.toJS,
  ]);

  @override
  void rlSetBlendFactors(
    int glSrcFactor,
    int glDstFactor,
    int glEquation,
  ) => rl.Rlgl.rlSetBlendFactors.run([
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
  ) => rl.Rlgl.rlSetBlendFactorsSeparate.run([
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
  ) => rl.Rlgl.rlglInit.run([
    width.toJS,
    height.toJS,
  ]);

  @override
  void rlglClose() => rl.Rlgl.rlglClose.run();

  @override
  void rlLoadExtensions(
    MemoryPointer<RVoid> loader,
  ) => rl.Rlgl.rlLoadExtensions.run([
    loader.toJS,
  ]);

  @override
  WasmMemoryPointer<RVoid> rlGetProcAddress(
    MemoryPointer<RChar> procName,
  ) => rl.Rlgl.rlGetProcAddress.run([
    procName.toJS,
  ]).asMemoryPointer();

  @override
  int rlGetVersion() => rl.Rlgl.rlGetVersion.run().toInt();

  @override
  void rlSetFramebufferWidth(
    int width,
  ) => rl.Rlgl.rlSetFramebufferWidth.run([
    width.toJS,
  ]);

  @override
  int rlGetFramebufferWidth() => rl.Rlgl.rlGetFramebufferWidth.run().toInt();

  @override
  void rlSetFramebufferHeight(
    int height,
  ) => rl.Rlgl.rlSetFramebufferHeight.run([
    height.toJS,
  ]);

  @override
  int rlGetFramebufferHeight() => rl.Rlgl.rlGetFramebufferHeight.run().toInt();

  @override
  int rlGetTextureIdDefault() => rl.Rlgl.rlGetTextureIdDefault.run().toInt();

  @override
  int rlGetShaderIdDefault() => rl.Rlgl.rlGetShaderIdDefault.run().toInt();

  @override
  WasmMemoryPointer<RInt> rlGetShaderLocsDefault() => rl.Rlgl.rlGetShaderLocsDefault.run().asMemoryPointer();

  @override
  RlRenderBatchD rlLoadRenderBatch(
    int numBuffers,
    int bufferElements,
  ) => rl.Temp.RlRenderBatch$.RefCapture(
    RaylibCaptureIds.rlLoadRenderBatch,
    (p) => rl.Rlgl.rlLoadRenderBatch.run([
      p.toJS,
      numBuffers.toJS,
      bufferElements.toJS,
    ]),
  );

  @override
  void rlUnloadRenderBatch(
    RlRenderBatchD batch,
  ) => rl.Rlgl.rlUnloadRenderBatch.run([
    rl.Temp.RlRenderBatch$.Ref1(batch).toJS,
  ]);

  @override
  void rlDrawRenderBatch(
    StructPointer<RlRenderBatchD> batch,
  ) => rl.Rlgl.rlDrawRenderBatch.run([
    batch.toJS,
  ]);

  @override
  void rlSetRenderBatchActive(
    StructPointer<RlRenderBatchD> batch,
  ) => rl.Rlgl.rlSetRenderBatchActive.run([
    batch.toJS,
  ]);

  @override
  void rlDrawRenderBatchActive() => rl.Rlgl.rlDrawRenderBatchActive.run();

  @override
  bool rlCheckRenderBatchLimit(
    int vCount,
  ) => rl.Rlgl.rlCheckRenderBatchLimit.run([
    vCount.toJS,
  ]).toBool();

  @override
  void rlSetTexture(
    int id,
  ) => rl.Rlgl.rlSetTexture.run([
    id.toJS,
  ]);

  @override
  int rlLoadVertexArray() => rl.Rlgl.rlLoadVertexArray.run().toInt();

  @override
  int rlLoadVertexBuffer(
    MemoryPointer<RVoid> buffer,
    int size,
    bool dynamic,
  ) => rl.Rlgl.rlLoadVertexBuffer.run([
    buffer.toJS,
    size.toJS,
    dynamic.toJS,
  ]).toInt();

  @override
  int rlLoadVertexBufferElement(
    MemoryPointer<RVoid> buffer,
    int size,
    bool dynamic,
  ) => rl.Rlgl.rlLoadVertexBufferElement.run([
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
  ) => rl.Rlgl.rlUpdateVertexBuffer.run([
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
  ) => rl.Rlgl.rlUpdateVertexBufferElements.run([
    id.toJS,
    data.toJS,
    dataSize.toJS,
    offset.toJS,
  ]);

  @override
  void rlUnloadVertexArray(
    int vaoId,
  ) => rl.Rlgl.rlUnloadVertexArray.run([
    vaoId.toJS,
  ]);

  @override
  void rlUnloadVertexBuffer(
    int vboId,
  ) => rl.Rlgl.rlUnloadVertexBuffer.run([
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
  ) => rl.Rlgl.rlSetVertexAttribute.run([
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
  ) => rl.Rlgl.rlSetVertexAttributeDivisor.run([
    index.toJS,
    divisor.toJS,
  ]);

  @override
  void rlSetVertexAttributeDefault(
    int locIndex,
    MemoryPointer<RVoid> value,
    int attribType,
    int count,
  ) => rl.Rlgl.rlSetVertexAttributeDefault.run([
    locIndex.toJS,
    value.toJS,
    attribType.toJS,
    count.toJS,
  ]);

  @override
  void rlDrawVertexArray(
    int offset,
    int count,
  ) => rl.Rlgl.rlDrawVertexArray.run([
    offset.toJS,
    count.toJS,
  ]);

  @override
  void rlDrawVertexArrayElements(
    int offset,
    int count,
    MemoryPointer<RVoid> buffer,
  ) => rl.Rlgl.rlDrawVertexArrayElements.run([
    offset.toJS,
    count.toJS,
    buffer.toJS,
  ]);

  @override
  void rlDrawVertexArrayInstanced(
    int offset,
    int count,
    int instances,
  ) => rl.Rlgl.rlDrawVertexArrayInstanced.run([
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
  ) => rl.Rlgl.rlDrawVertexArrayElementsInstanced.run([
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
  ) => rl.Rlgl.rlLoadTexture.run([
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
  ) => rl.Rlgl.rlLoadTextureDepth.run([
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
  ) => rl.Rlgl.rlLoadTextureCubemap.run([
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
  ) => rl.Rlgl.rlUpdateTexture.run([
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
  ) => rl.Rlgl.rlGetGlTextureFormats.run([
    format.toJS,
    glInternalFormat.toJS,
    glFormat.toJS,
    glType.toJS,
  ]);

  @override
  WasmMemoryPointer<RChar> rlGetPixelFormatName(
    int format,
  ) => rl.Rlgl.rlGetPixelFormatName.run([
    format.toJS,
  ]).asMemoryPointer();

  @override
  void rlUnloadTexture(
    int id,
  ) => rl.Rlgl.rlUnloadTexture.run([
    id.toJS,
  ]);

  @override
  void rlGenTextureMipmaps(
    int id,
    int width,
    int height,
    int format,
    MemoryPointer<RInt> mipmaps,
  ) => rl.Rlgl.rlGenTextureMipmaps.run([
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
  ) => rl.Rlgl.rlReadTexturePixels.run([
    id.toJS,
    width.toJS,
    height.toJS,
    format.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RUnsignedChar> rlReadScreenPixels(
    int width,
    int height,
  ) => rl.Rlgl.rlReadScreenPixels.run([
    width.toJS,
    height.toJS,
  ]).asMemoryPointer();

  @override
  int rlLoadFramebuffer() => rl.Rlgl.rlLoadFramebuffer.run().toInt();

  @override
  void rlFramebufferAttach(
    int fboId,
    int texId,
    int attachType,
    int texType,
    int mipLevel,
  ) => rl.Rlgl.rlFramebufferAttach.run([
    fboId.toJS,
    texId.toJS,
    attachType.toJS,
    texType.toJS,
    mipLevel.toJS,
  ]);

  @override
  bool rlFramebufferComplete(
    int id,
  ) => rl.Rlgl.rlFramebufferComplete.run([
    id.toJS,
  ]).toBool();

  @override
  void rlUnloadFramebuffer(
    int id,
  ) => rl.Rlgl.rlUnloadFramebuffer.run([
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
  ) => rl.Rlgl.rlCopyFramebuffer.run([
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
  ) => rl.Rlgl.rlResizeFramebuffer.run([
    width.toJS,
    height.toJS,
  ]);

  @override
  int rlLoadShader(
    MemoryPointer<RChar> code,
    int type,
  ) => rl.Rlgl.rlLoadShader.run([
    code.toJS,
    type.toJS,
  ]).toInt();

  @override
  int rlLoadShaderProgram(
    MemoryPointer<RChar> vsCode,
    MemoryPointer<RChar> fsCode,
  ) => rl.Rlgl.rlLoadShaderProgram.run([
    vsCode.toJS,
    fsCode.toJS,
  ]).toInt();

  @override
  int rlLoadShaderProgramEx(
    int vsId,
    int fsId,
  ) => rl.Rlgl.rlLoadShaderProgramEx.run([
    vsId.toJS,
    fsId.toJS,
  ]).toInt();

  @override
  int rlLoadShaderProgramCompute(
    int csId,
  ) => rl.Rlgl.rlLoadShaderProgramCompute.run([
    csId.toJS,
  ]).toInt();

  @override
  void rlUnloadShader(
    int id,
  ) => rl.Rlgl.rlUnloadShader.run([
    id.toJS,
  ]);

  @override
  void rlUnloadShaderProgram(
    int id,
  ) => rl.Rlgl.rlUnloadShaderProgram.run([
    id.toJS,
  ]);

  @override
  int rlGetLocationUniform(
    int shaderId,
    MemoryPointer<RChar> uniformName,
  ) => rl.Rlgl.rlGetLocationUniform.run([
    shaderId.toJS,
    uniformName.toJS,
  ]).toInt();

  @override
  int rlGetLocationAttrib(
    int shaderId,
    MemoryPointer<RChar> attribName,
  ) => rl.Rlgl.rlGetLocationAttrib.run([
    shaderId.toJS,
    attribName.toJS,
  ]).toInt();

  @override
  void rlSetUniform(
    int locIndex,
    MemoryPointer<RVoid> value,
    int uniformType,
    int count,
  ) => rl.Rlgl.rlSetUniform.run([
    locIndex.toJS,
    value.toJS,
    uniformType.toJS,
    count.toJS,
  ]);

  @override
  void rlSetUniformMatrix(
    int locIndex,
    MatrixD mat,
  ) => rl.Rlgl.rlSetUniformMatrix.run([
    locIndex.toJS,
    rl.Temp.Matrix$.Ref1(mat).toJS,
  ]);

  @override
  void rlSetUniformMatrices(
    int locIndex,
    StructPointer<MatrixD> mat,
    int count,
  ) => rl.Rlgl.rlSetUniformMatrices.run([
    locIndex.toJS,
    mat.toJS,
    count.toJS,
  ]);

  @override
  void rlSetUniformSampler(
    int locIndex,
    int textureId,
  ) => rl.Rlgl.rlSetUniformSampler.run([
    locIndex.toJS,
    textureId.toJS,
  ]);

  @override
  void rlSetShader(
    int id,
    MemoryPointer<RInt> locs,
  ) => rl.Rlgl.rlSetShader.run([
    id.toJS,
    locs.toJS,
  ]);

  @override
  void rlComputeShaderDispatch(
    int groupX,
    int groupY,
    int groupZ,
  ) => rl.Rlgl.rlComputeShaderDispatch.run([
    groupX.toJS,
    groupY.toJS,
    groupZ.toJS,
  ]);

  @override
  int rlLoadShaderBuffer(
    int size,
    MemoryPointer<RVoid> data,
    int usageHint,
  ) => rl.Rlgl.rlLoadShaderBuffer.run([
    size.toJS,
    data.toJS,
    usageHint.toJS,
  ]).toInt();

  @override
  void rlUnloadShaderBuffer(
    int ssboId,
  ) => rl.Rlgl.rlUnloadShaderBuffer.run([
    ssboId.toJS,
  ]);

  @override
  void rlUpdateShaderBuffer(
    int id,
    MemoryPointer<RVoid> data,
    int dataSize,
    int offset,
  ) => rl.Rlgl.rlUpdateShaderBuffer.run([
    id.toJS,
    data.toJS,
    dataSize.toJS,
    offset.toJS,
  ]);

  @override
  void rlBindShaderBuffer(
    int id,
    int index,
  ) => rl.Rlgl.rlBindShaderBuffer.run([
    id.toJS,
    index.toJS,
  ]);

  @override
  void rlReadShaderBuffer(
    int id,
    MemoryPointer<RVoid> dest,
    int count,
    int offset,
  ) => rl.Rlgl.rlReadShaderBuffer.run([
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
  ) => rl.Rlgl.rlCopyShaderBuffer.run([
    destId.toJS,
    srcId.toJS,
    destOffset.toJS,
    srcOffset.toJS,
    count.toJS,
  ]);

  @override
  int rlGetShaderBufferSize(
    int id,
  ) => rl.Rlgl.rlGetShaderBufferSize.run([
    id.toJS,
  ]).toInt();

  @override
  void rlBindImageTexture(
    int id,
    int index,
    int format,
    bool readonly,
  ) => rl.Rlgl.rlBindImageTexture.run([
    id.toJS,
    index.toJS,
    format.toJS,
    readonly.toJS,
  ]);

  @override
  MatrixD rlGetMatrixModelview() => rl.Temp.Matrix$.Extract1(
    (p) => rl.Rlgl.rlGetMatrixModelview.run([
      p.toJS,
    ]),
  );

  @override
  MatrixD rlGetMatrixProjection() => rl.Temp.Matrix$.Extract1(
    (p) => rl.Rlgl.rlGetMatrixProjection.run([
      p.toJS,
    ]),
  );

  @override
  MatrixD rlGetMatrixTransform() => rl.Temp.Matrix$.Extract1(
    (p) => rl.Rlgl.rlGetMatrixTransform.run([
      p.toJS,
    ]),
  );

  @override
  MatrixD rlGetMatrixProjectionStereo(
    int eye,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => rl.Rlgl.rlGetMatrixProjectionStereo.run([
      p.toJS,
      eye.toJS,
    ]),
  );

  @override
  MatrixD rlGetMatrixViewOffsetStereo(
    int eye,
  ) => rl.Temp.Matrix$.Extract1(
    (p) => rl.Rlgl.rlGetMatrixViewOffsetStereo.run([
      p.toJS,
      eye.toJS,
    ]),
  );

  @override
  void rlSetMatrixProjection(
    MatrixD proj,
  ) => rl.Rlgl.rlSetMatrixProjection.run([
    rl.Temp.Matrix$.Ref1(proj).toJS,
  ]);

  @override
  void rlSetMatrixModelview(
    MatrixD view,
  ) => rl.Rlgl.rlSetMatrixModelview.run([
    rl.Temp.Matrix$.Ref1(view).toJS,
  ]);

  @override
  void rlSetMatrixProjectionStereo(
    MatrixD right,
    MatrixD left,
  ) => rl.Rlgl.rlSetMatrixProjectionStereo.run([
    rl.Temp.Matrix$.Ref1(right).toJS,
    rl.Temp.Matrix$.Ref2(left).toJS,
  ]);

  @override
  void rlSetMatrixViewOffsetStereo(
    MatrixD right,
    MatrixD left,
  ) => rl.Rlgl.rlSetMatrixViewOffsetStereo.run([
    rl.Temp.Matrix$.Ref1(right).toJS,
    rl.Temp.Matrix$.Ref2(left).toJS,
  ]);

  @override
  void rlLoadDrawCube() => rl.Rlgl.rlLoadDrawCube.run();

  @override
  void rlLoadDrawQuad() => rl.Rlgl.rlLoadDrawQuad.run();
}