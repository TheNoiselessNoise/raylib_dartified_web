part of '../../raylib_dartified_web.dart';

class RaylibRlglD extends RaylibRlglModuleBase<
  Raylib,
  
  // types
  MatrixD,
  QuaternionD,
  RlDrawCallD,
  RlRenderBatchD,
  RlVertexBufferD,
  Vector3D,
  Vector4D
  
> {

  RaylibRlglD(super.rl);

  @override
  void rlMatrixMode(
    RlMatrixMode mode,
  ) => run(
    () => RaylibDebugLabels.rlMatrixMode(mode),
    () => rl.Rlgl.rlMatrixMode.run1(
      mode.value.toJS,
    ),
  );

  @override
  void rlPushMatrix() => run(
    () => RaylibDebugLabels.rlPushMatrix(),
    () => rl.Rlgl.rlPushMatrix.run,
  );

  @override
  void rlPopMatrix() => run(
    () => RaylibDebugLabels.rlPopMatrix(),
    () => rl.Rlgl.rlPopMatrix.run,
  );

  @override
  void rlLoadIdentity() => run(
    () => RaylibDebugLabels.rlLoadIdentity(),
    () => rl.Rlgl.rlLoadIdentity.run,
  );

  @override
  void rlTranslatef(
    num x,
    num y,
    num z,
  ) => run(
    () => RaylibDebugLabels.rlTranslatef(x, y, z),
    () => rl.Rlgl.rlTranslatef.run3(
      x.toJS,
      y.toJS,
      z.toJS,
    ),
  );

  @override
  void rlRotatef(
    num angle,
    num x,
    num y,
    num z,
  ) => run(
    () => RaylibDebugLabels.rlRotatef(angle, x, y, z),
    () => rl.Rlgl.rlRotatef.run4(
      angle.toJS,
      x.toJS,
      y.toJS,
      z.toJS,
    ),
  );

  @override
  void rlScalef(
    num x,
    num y,
    num z,
  ) => run(
    () => RaylibDebugLabels.rlScalef(x, y, z),
    () => rl.Rlgl.rlScalef.run3(
      x.toJS,
      y.toJS,
      z.toJS,
    ),
  );

  @override
  void rlMultMatrixf(
    List<double> matf,
  ) => run(
    () => RaylibDebugLabels.rlMultMatrixf(matf),
    () => rl.Rlgl.rlMultMatrixf.run1(
      rl.Temp.Float32$.Array(matf).toJS,
    ),
  );

  @override
  void rlFrustum(
    num left,
    num right,
    num bottom,
    num top,
    num znear,
    num zfar,
  ) => run(
    () => RaylibDebugLabels.rlFrustum(left, right, bottom, top, znear, zfar),
    () => rl.Rlgl.rlFrustum.run6(
      left.toJS,
      right.toJS,
      bottom.toJS,
      top.toJS,
      znear.toJS,
      zfar.toJS,
    ),
  );

  @override
  void rlOrtho(
    num left,
    num right,
    num bottom,
    num top,
    num znear,
    num zfar,
  ) => run(
    () => RaylibDebugLabels.rlOrtho(left, right, bottom, top, znear, zfar),
    () => rl.Rlgl.rlOrtho.run6(
      left.toJS,
      right.toJS,
      bottom.toJS,
      top.toJS,
      znear.toJS,
      zfar.toJS,
    ),
  );

  @override
  void rlViewport(
    num x,
    num y,
    num width,
    num height,
  ) => run(
    () => RaylibDebugLabels.rlViewport(x, y, width, height),
    () => rl.Rlgl.rlViewport.run4(
      x.toJS,
      y.toJS,
      width.toJS,
      height.toJS,
    ),
  );

  @override
  void rlSetClipPlanes(
    num nearPlane,
    num farPlane,
  ) => run(
    () => RaylibDebugLabels.rlSetClipPlanes(nearPlane, farPlane),
    () => rl.Rlgl.rlSetClipPlanes.run2(
      nearPlane.toJS,
      farPlane.toJS,
    ),
  );

  @override
  double rlGetCullDistanceNear() => run(
    () => RaylibDebugLabels.rlGetCullDistanceNear(),
    () => rl.Rlgl.rlGetCullDistanceNear.run.toDouble(),
  );

  @override
  double rlGetCullDistanceFar() => run(
    () => RaylibDebugLabels.rlGetCullDistanceFar(),
    () => rl.Rlgl.rlGetCullDistanceFar.run.toDouble(),
  );

  @override
  void rlBegin(
    RlDrawMode mode,
  ) => run(
    () => RaylibDebugLabels.rlBegin(mode),
    () => rl.Rlgl.rlBegin.run1(
      mode.value.toJS,
    ),
  );

  @override
  void rlEnd() => run(
    () => RaylibDebugLabels.rlEnd(),
    () => rl.Rlgl.rlEnd.run,
  );

  @override
  void rlVertex2i(
    num x,
    num y,
  ) => run(
    () => RaylibDebugLabels.rlVertex2i(x, y),
    () => rl.Rlgl.rlVertex2i.run2(
      x.toJS,
      y.toJS,
    ),
  );

  @override
  void rlVertex2f(
    num x,
    num y,
  ) => run(
    () => RaylibDebugLabels.rlVertex2f(x, y),
    () => rl.Rlgl.rlVertex2f.run2(
      x.toJS,
      y.toJS,
    ),
  );

  @override
  void rlVertex3f(
    num x,
    num y,
    num z,
  ) => run(
    () => RaylibDebugLabels.rlVertex3f(x, y, z),
    () => rl.Rlgl.rlVertex3f.run3(
      x.toJS,
      y.toJS,
      z.toJS,
    ),
  );

  @override
  void rlTexCoord2f(
    num x,
    num y,
  ) => run(
    () => RaylibDebugLabels.rlTexCoord2f(x, y),
    () => rl.Rlgl.rlTexCoord2f.run2(
      x.toJS,
      y.toJS,
    ),
  );

  @override
  void rlNormal3f(
    num x,
    num y,
    num z,
  ) => run(
    () => RaylibDebugLabels.rlNormal3f(x, y, z),
    () => rl.Rlgl.rlNormal3f.run3(
      x.toJS,
      y.toJS,
      z.toJS,
    ),
  );

  @override
  void rlColor4ub(
    num r,
    num g,
    num b,
    num a,
  ) => run(
    () => RaylibDebugLabels.rlColor4ub(r, g, b, a),
    () => rl.Rlgl.rlColor4ub.run4(
      r.toJS,
      g.toJS,
      b.toJS,
      a.toJS,
    ),
  );

  @override
  void rlColor3f(
    num x,
    num y,
    num z,
  ) => run(
    () => RaylibDebugLabels.rlColor3f(x, y, z),
    () => rl.Rlgl.rlColor3f.run3(
      x.toJS,
      y.toJS,
      z.toJS,
    ),
  );

  @override
  void rlColor4f(
    num x,
    num y,
    num z,
    num w,
  ) => run(
    () => RaylibDebugLabels.rlColor4f(x, y, z, w),
    () => rl.Rlgl.rlColor4f.run4(
      x.toJS,
      y.toJS,
      z.toJS,
      w.toJS,
    ),
  );

  @override
  bool rlEnableVertexArray(
    num vaoId,
  ) => run(
    () => RaylibDebugLabels.rlEnableVertexArray(vaoId),
    () => rl.Rlgl.rlEnableVertexArray.run1(
      vaoId.toJS,
    ).toBool(),
  );

  @override
  void rlDisableVertexArray() => run(
    () => RaylibDebugLabels.rlDisableVertexArray(),
    () => rl.Rlgl.rlDisableVertexArray.run,
  );

  @override
  void rlEnableVertexBuffer(
    num id,
  ) => run(
    () => RaylibDebugLabels.rlEnableVertexBuffer(id),
    () => rl.Rlgl.rlEnableVertexBuffer.run1(
      id.toJS,
    ),
  );

  @override
  void rlDisableVertexBuffer() => run(
    () => RaylibDebugLabels.rlDisableVertexBuffer(),
    () => rl.Rlgl.rlDisableVertexBuffer.run,
  );

  @override
  void rlEnableVertexBufferElement(
    num id,
  ) => run(
    () => RaylibDebugLabels.rlEnableVertexBufferElement(id),
    () => rl.Rlgl.rlEnableVertexBufferElement.run1(
      id.toJS,
    ),
  );

  @override
  void rlDisableVertexBufferElement() => run(
    () => RaylibDebugLabels.rlDisableVertexBufferElement(),
    () => rl.Rlgl.rlDisableVertexBufferElement.run,
  );

  @override
  void rlEnableVertexAttribute(
    num index,
  ) => run(
    () => RaylibDebugLabels.rlEnableVertexAttribute(index),
    () => rl.Rlgl.rlEnableVertexAttribute.run1(
      index.toJS,
    ),
  );

  @override
  void rlDisableVertexAttribute(
    num index,
  ) => run(
    () => RaylibDebugLabels.rlDisableVertexAttribute(index),
    () => rl.Rlgl.rlDisableVertexAttribute.run1(
      index.toJS,
    ),
  );

  @override
  void rlActiveTextureSlot(
    num slot,
  ) => run(
    () => RaylibDebugLabels.rlActiveTextureSlot(slot),
    () => rl.Rlgl.rlActiveTextureSlot.run1(
      slot.toJS,
    ),
  );

  @override
  void rlEnableTexture(
    num id,
  ) => run(
    () => RaylibDebugLabels.rlEnableTexture(id),
    () => rl.Rlgl.rlEnableTexture.run1(
      id.toJS,
    ),
  );

  @override
  void rlDisableTexture() => run(
    () => RaylibDebugLabels.rlDisableTexture(),
    () => rl.Rlgl.rlDisableTexture.run,
  );

  @override
  void rlEnableTextureCubemap(
    num id,
  ) => run(
    () => RaylibDebugLabels.rlEnableTextureCubemap(id),
    () => rl.Rlgl.rlEnableTextureCubemap.run1(
      id.toJS,
    ),
  );

  @override
  void rlDisableTextureCubemap() => run(
    () => RaylibDebugLabels.rlDisableTextureCubemap(),
    () => rl.Rlgl.rlDisableTextureCubemap.run,
  );

  @override
  void rlTextureParameters(
    num id,
    num param,
    num value,
  ) => run(
    () => RaylibDebugLabels.rlTextureParameters(id, param, value),
    () => rl.Rlgl.rlTextureParameters.run3(
      id.toJS,
      param.toJS,
      value.toJS,
    ),
  );

  @override
  void rlCubemapParameters(
    num id,
    num param,
    num value,
  ) => run(
    () => RaylibDebugLabels.rlCubemapParameters(id, param, value),
    () => rl.Rlgl.rlCubemapParameters.run3(
      id.toJS,
      param.toJS,
      value.toJS,
    ),
  );

  @override
  void rlEnableShader(
    num id,
  ) => run(
    () => RaylibDebugLabels.rlEnableShader(id),
    () => rl.Rlgl.rlEnableShader.run1(
      id.toJS,
    ),
  );

  @override
  void rlDisableShader() => run(
    () => RaylibDebugLabels.rlDisableShader(),
    () => rl.Rlgl.rlDisableShader.run,
  );

  @override
  void rlEnableFramebuffer(
    num id,
  ) => run(
    () => RaylibDebugLabels.rlEnableFramebuffer(id),
    () => rl.Rlgl.rlEnableFramebuffer.run1(
      id.toJS,
    ),
  );

  @override
  void rlDisableFramebuffer() => run(
    () => RaylibDebugLabels.rlDisableFramebuffer(),
    () => rl.Rlgl.rlDisableFramebuffer.run,
  );

  @override
  int rlGetActiveFramebuffer() => run(
    () => RaylibDebugLabels.rlGetActiveFramebuffer(),
    () => rl.Rlgl.rlGetActiveFramebuffer.run.toInt(),
  );

  @override
  void rlActiveDrawBuffers(
    num count,
  ) => run(
    () => RaylibDebugLabels.rlActiveDrawBuffers(count),
    () => rl.Rlgl.rlActiveDrawBuffers.run1(
      count.toJS,
    ),
  );

  @override
  void rlBlitFramebuffer(
    num srcX,
    num srcY,
    num srcWidth,
    num srcHeight,
    num dstX,
    num dstY,
    num dstWidth,
    num dstHeight,
    num bufferMask,
  ) => run(
    () => RaylibDebugLabels.rlBlitFramebuffer(srcX, srcY, srcWidth, srcHeight, dstX, dstY, dstWidth, dstHeight, bufferMask),
    () => rl.Rlgl.rlBlitFramebuffer.run9(
      srcX.toJS,
      srcY.toJS,
      srcWidth.toJS,
      srcHeight.toJS,
      dstX.toJS,
      dstY.toJS,
      dstWidth.toJS,
      dstHeight.toJS,
      bufferMask.toJS,
    ),
  );

  @override
  void rlBindFramebuffer(
    num target,
    num framebuffer,
  ) => run(
    () => RaylibDebugLabels.rlBindFramebuffer(target, framebuffer),
    () => rl.Rlgl.rlBindFramebuffer.run2(
      target.toJS,
      framebuffer.toJS,
    ),
  );

  @override
  void rlEnableColorBlend() => run(
    () => RaylibDebugLabels.rlEnableColorBlend(),
    () => rl.Rlgl.rlEnableColorBlend.run,
  );

  @override
  void rlDisableColorBlend() => run(
    () => RaylibDebugLabels.rlDisableColorBlend(),
    () => rl.Rlgl.rlDisableColorBlend.run,
  );

  @override
  void rlEnableDepthTest() => run(
    () => RaylibDebugLabels.rlEnableDepthTest(),
    () => rl.Rlgl.rlEnableDepthTest.run,
  );

  @override
  void rlDisableDepthTest() => run(
    () => RaylibDebugLabels.rlDisableDepthTest(),
    () => rl.Rlgl.rlDisableDepthTest.run,
  );

  @override
  void rlEnableDepthMask() => run(
    () => RaylibDebugLabels.rlEnableDepthMask(),
    () => rl.Rlgl.rlEnableDepthMask.run,
  );

  @override
  void rlDisableDepthMask() => run(
    () => RaylibDebugLabels.rlDisableDepthMask(),
    () => rl.Rlgl.rlDisableDepthMask.run,
  );

  @override
  void rlEnableBackfaceCulling() => run(
    () => RaylibDebugLabels.rlEnableBackfaceCulling(),
    () => rl.Rlgl.rlEnableBackfaceCulling.run,
  );

  @override
  void rlDisableBackfaceCulling() => run(
    () => RaylibDebugLabels.rlDisableBackfaceCulling(),
    () => rl.Rlgl.rlDisableBackfaceCulling.run,
  );

  @override
  void rlColorMask(
    bool r,
    bool g,
    bool b,
    bool a,
  ) => run(
    () => RaylibDebugLabels.rlColorMask(r, g, b, a),
    () => rl.Rlgl.rlColorMask.run4(
      r.toJS,
      g.toJS,
      b.toJS,
      a.toJS,
    ),
  );

  @override
  void rlSetCullFace(
    RlCullMode mode,
  ) => run(
    () => RaylibDebugLabels.rlSetCullFace(mode),
    () => rl.Rlgl.rlSetCullFace.run1(
      mode.value.toJS,
    ),
  );

  @override
  void rlEnableScissorTest() => run(
    () => RaylibDebugLabels.rlEnableScissorTest(),
    () => rl.Rlgl.rlEnableScissorTest.run,
  );

  @override
  void rlDisableScissorTest() => run(
    () => RaylibDebugLabels.rlDisableScissorTest(),
    () => rl.Rlgl.rlDisableScissorTest.run,
  );

  @override
  void rlScissor(
    num x,
    num y,
    num width,
    num height,
  ) => run(
    () => RaylibDebugLabels.rlScissor(x, y, width, height),
    () => rl.Rlgl.rlScissor.run4(
      x.toJS,
      y.toJS,
      width.toJS,
      height.toJS,
    ),
  );

  @override
  void rlEnableWireMode() => run(
    () => RaylibDebugLabels.rlEnableWireMode(),
    () => rl.Rlgl.rlEnableWireMode.run,
  );

  @override
  void rlEnablePointMode() => run(
    () => RaylibDebugLabels.rlEnablePointMode(),
    () => rl.Rlgl.rlEnablePointMode.run,
  );

  @override
  void rlDisableWireMode() => run(
    () => RaylibDebugLabels.rlDisableWireMode(),
    () => rl.Rlgl.rlDisableWireMode.run,
  );

  @override
  void rlSetLineWidth(
    num width,
  ) => run(
    () => RaylibDebugLabels.rlSetLineWidth(width),
    () => rl.Rlgl.rlSetLineWidth.run1(
      width.toJS,
    ),
  );

  @override
  double rlGetLineWidth() => run(
    () => RaylibDebugLabels.rlGetLineWidth(),
    () => rl.Rlgl.rlGetLineWidth.run.toDouble(),
  );

  @override
  void rlEnableSmoothLines() => run(
    () => RaylibDebugLabels.rlEnableSmoothLines(),
    () => rl.Rlgl.rlEnableSmoothLines.run,
  );

  @override
  void rlDisableSmoothLines() => run(
    () => RaylibDebugLabels.rlDisableSmoothLines(),
    () => rl.Rlgl.rlDisableSmoothLines.run,
  );

  @override
  void rlEnableStereoRender() => run(
    () => RaylibDebugLabels.rlEnableStereoRender(),
    () => rl.Rlgl.rlEnableStereoRender.run,
  );

  @override
  void rlDisableStereoRender() => run(
    () => RaylibDebugLabels.rlDisableStereoRender(),
    () => rl.Rlgl.rlDisableStereoRender.run,
  );

  @override
  bool rlIsStereoRenderEnabled() => run(
    () => RaylibDebugLabels.rlIsStereoRenderEnabled(),
    () => rl.Rlgl.rlIsStereoRenderEnabled.run.toBool(),
  );

  @override
  void rlClearColor(
    num r,
    num g,
    num b,
    num a,
  ) => run(
    () => RaylibDebugLabels.rlClearColor(r, g, b, a),
    () => rl.Rlgl.rlClearColor.run4(
      r.toJS,
      g.toJS,
      b.toJS,
      a.toJS,
    ),
  );

  @override
  void rlClearScreenBuffers() => run(
    () => RaylibDebugLabels.rlClearScreenBuffers(),
    () => rl.Rlgl.rlClearScreenBuffers.run,
  );

  @override
  void rlCheckErrors() => run(
    () => RaylibDebugLabels.rlCheckErrors(),
    () => rl.Rlgl.rlCheckErrors.run,
  );

  @override
  void rlSetBlendMode(
    BlendMode mode,
  ) => run(
    () => RaylibDebugLabels.rlSetBlendMode(mode),
    () => rl.Rlgl.rlSetBlendMode.run1(
      mode.value.toJS,
    ),
  );

  @override
  void rlSetBlendFactors(
    num glSrcFactor,
    num glDstFactor,
    num glEquation,
  ) => run(
    () => RaylibDebugLabels.rlSetBlendFactors(glSrcFactor, glDstFactor, glEquation),
    () => rl.Rlgl.rlSetBlendFactors.run3(
      glSrcFactor.toJS,
      glDstFactor.toJS,
      glEquation.toJS,
    ),
  );

  @override
  void rlSetBlendFactorsSeparate(
    num glSrcRGB,
    num glDstRGB,
    num glSrcAlpha,
    num glDstAlpha,
    num glEqRGB,
    num glEqAlpha,
  ) => run(
    () => RaylibDebugLabels.rlSetBlendFactorsSeparate(glSrcRGB, glDstRGB, glSrcAlpha, glDstAlpha, glEqRGB, glEqAlpha),
    () => rl.Rlgl.rlSetBlendFactorsSeparate.run6(
      glSrcRGB.toJS,
      glDstRGB.toJS,
      glSrcAlpha.toJS,
      glDstAlpha.toJS,
      glEqRGB.toJS,
      glEqAlpha.toJS,
    ),
  );

  @override
  void rlglInit(
    num width,
    num height,
  ) => run(
    () => RaylibDebugLabels.rlglInit(width, height),
    () => rl.Rlgl.rlglInit.run2(
      width.toJS,
      height.toJS,
    ),
  );

  @override
  void rlglClose() => run(
    () => RaylibDebugLabels.rlglClose(),
    () => rl.Rlgl.rlglClose.run,
  );

  // NOTE: rlLoadExtensions is not implemented, use it in raw WASM layer if you really need it

  @override
  int rlGetVersion() => run(
    () => RaylibDebugLabels.rlGetVersion(),
    () => rl.Rlgl.rlGetVersion.run.toInt(),
  );

  @override
  void rlSetFramebufferWidth(
    num width,
  ) => run(
    () => RaylibDebugLabels.rlSetFramebufferWidth(width),
    () => rl.Rlgl.rlSetFramebufferWidth.run1(
      width.toJS,
    ),
  );

  @override
  int rlGetFramebufferWidth() => run(
    () => RaylibDebugLabels.rlGetFramebufferWidth(),
    () => rl.Rlgl.rlGetFramebufferWidth.run.toInt(),
  );

  @override
  void rlSetFramebufferHeight(
    num height,
  ) => run(
    () => RaylibDebugLabels.rlSetFramebufferHeight(height),
    () => rl.Rlgl.rlSetFramebufferHeight.run1(
      height.toJS,
    ),
  );

  @override
  int rlGetFramebufferHeight() => run(
    () => RaylibDebugLabels.rlGetFramebufferHeight(),
    () => rl.Rlgl.rlGetFramebufferHeight.run.toInt(),
  );

  @override
  int rlGetTextureIdDefault() => run(
    () => RaylibDebugLabels.rlGetTextureIdDefault(),
    () => rl.Rlgl.rlGetTextureIdDefault.run.toInt(),
  );

  @override
  int rlGetShaderIdDefault() => run(
    () => RaylibDebugLabels.rlGetShaderIdDefault(),
    () => rl.Rlgl.rlGetShaderIdDefault.run.toInt(),
  );

  @override
  List<int> rlGetShaderLocsDefault() => run(
    () => RaylibDebugLabels.rlGetShaderLocsDefault(),
    () {
      final locsPtr = rl.Rlgl.rlGetShaderLocsDefault.run.toInt();
      return WasmInt32Pointer(locsPtr).readArray(RL_MAX_SHADER_LOCATIONS);
    },
  );

  @override
  RlRenderBatchD rlLoadRenderBatch(
    num numBuffers,
    num bufferElements,
  ) => run(
    () => RaylibDebugLabels.rlLoadRenderBatch(numBuffers, bufferElements),
    () => rl.Temp.RlRenderBatch$.RefCapture(
      RaylibCaptureIds.rlLoadRenderBatch(numBuffers, bufferElements),
      (p) => rl.Rlgl.rlLoadRenderBatch.run3(
        p.toJS,
        numBuffers.toJS,
        bufferElements.toJS,
      ),
    ),
  );

  @override
  void rlUnloadRenderBatch(
    RlRenderBatchD batch,
  ) => run(
    () => RaylibDebugLabels.rlUnloadRenderBatch(batch),
    () => rl.Rlgl.rlUnloadRenderBatch.run1(
      rl.Temp.RlRenderBatch$.Ref1(batch).toJS,
    ),
  );

  @override
  void rlDrawRenderBatch(
    RlRenderBatchD batch,
  ) => run(
    () => RaylibDebugLabels.rlDrawRenderBatch(batch),
    () => rl.Temp.RlRenderBatch$.RefUpdate1(batch,
      (pb) => rl.Rlgl.rlDrawRenderBatch.run1(
        pb.toJS,
      ),
    ),
  );

  @override
  void rlSetRenderBatchActive(
    RlRenderBatchD batch,
  ) => run(
    () => RaylibDebugLabels.rlSetRenderBatchActive(batch),
    () => rl.Temp.RlRenderBatch$.RefUpdate1(batch,
      (pb) => rl.Rlgl.rlSetRenderBatchActive.run1(
        pb.toJS,
      ),
    ),
  );

  @override
  void rlDrawRenderBatchActive() => run(
    () => RaylibDebugLabels.rlDrawRenderBatchActive(),
    () => rl.Rlgl.rlDrawRenderBatchActive.run,
  );

  @override
  bool rlCheckRenderBatchLimit(
    num vCount,
  ) => run(
    () => RaylibDebugLabels.rlCheckRenderBatchLimit(vCount),
    () => rl.Rlgl.rlCheckRenderBatchLimit.run1(
      vCount.toJS,
    ).toBool(),
  );

  @override
  void rlSetTexture(
    num id,
  ) => run(
    () => RaylibDebugLabels.rlSetTexture(id),
    () => rl.Rlgl.rlSetTexture.run1(
      id.toJS,
    ),
  );

  @override
  int rlLoadVertexArray() => run(
    () => RaylibDebugLabels.rlLoadVertexArray(),
    () => rl.Rlgl.rlLoadVertexArray.run.toInt(),
  );

  @override
  int rlLoadVertexBuffer(
    TypedDataList buffer,
    bool dynamic,
  ) => run(
    () => RaylibDebugLabels.rlLoadVertexBuffer(buffer, dynamic),
    () => rl.Rlgl.rlLoadVertexBuffer.run3(
      rl.Temp.TypedDataList$.Array(buffer).toJS,
      buffer.length.toJS,
      dynamic.toJS,
    ).toInt(),
  );

  @override
  int rlLoadVertexBufferElement(
    TypedDataList buffer,
    bool dynamic,
  ) => run(
    () => RaylibDebugLabels.rlLoadVertexBufferElement(buffer, dynamic),
    () => rl.Rlgl.rlLoadVertexBufferElement.run3(
      rl.Temp.TypedDataList$.Array(buffer).toJS,
      buffer.length.toJS,
      dynamic.toJS,
    ).toInt(),
  );

  @override
  void rlUpdateVertexBuffer(
    num bufferId,
    TypedDataList data,
    num offset,
  ) => run(
    () => RaylibDebugLabels.rlUpdateVertexBuffer(bufferId, data, offset),
    () => rl.Rlgl.rlUpdateVertexBuffer.run4(
      bufferId.toJS,
      rl.Temp.TypedDataList$.Array(data).toJS,
      data.length.toJS,
      offset.toJS,
    ),
  );

  @override
  void rlUpdateVertexBufferElements(
    num id,
    TypedDataList data,
    num offset,
  ) => run(
    () => RaylibDebugLabels.rlUpdateVertexBufferElements(id, data, offset),
    () => rl.Rlgl.rlUpdateVertexBufferElements.run4(
      id.toJS,
      rl.Temp.TypedDataList$.Array(data).toJS,
      data.length.toJS,
      offset.toJS,
    ),
  );

  @override
  void rlUnloadVertexArray(
    num vaoId,
  ) => run(
    () => RaylibDebugLabels.rlUnloadVertexArray(vaoId),
    () => rl.Rlgl.rlUnloadVertexArray.run1(
      vaoId.toJS,
    ),
  );

  @override
  void rlUnloadVertexBuffer(
    num vboId,
  ) => run(
    () => RaylibDebugLabels.rlUnloadVertexBuffer(vboId),
    () => rl.Rlgl.rlUnloadVertexBuffer.run1(
      vboId.toJS,
    ),
  );

  @override
  void rlSetVertexAttribute(
    num index,
    num compSize,
    num type,
    bool normalized,
    num stride,
    num offset,
  ) => run(
    () => RaylibDebugLabels.rlSetVertexAttribute(index, compSize, type, normalized, stride, offset),
    () => rl.Rlgl.rlSetVertexAttribute.run6(
      index.toJS,
      compSize.toJS,
      type.toJS,
      normalized.toJS,
      stride.toJS,
      offset.toJS,
    ),
  );

  @override
  void rlSetVertexAttributeDivisor(
    num index,
    num divisor,
  ) => run(
    () => RaylibDebugLabels.rlSetVertexAttributeDivisor(index, divisor),
    () => rl.Rlgl.rlSetVertexAttributeDivisor.run2(
      index.toJS,
      divisor.toJS,
    ),
  );

  @override
  void rlSetVertexAttributeDefault(
    num locIndex,
    Float32List value,
    RlShaderAttributeDataType attribType,
  ) => run(
    () => RaylibDebugLabels.rlSetVertexAttributeDefault(locIndex, value, attribType),
    () => rl.Rlgl.rlSetVertexAttributeDefault.run4(
      locIndex.toJS,
      rl.Temp.Float32$.FromTypedList(value).toJS,
      attribType.value.toJS,
      value.length.toJS,
    ),
  );

  @override
  void rlDrawVertexArray(
    num offset,
    num count,
  ) => run(
    () => RaylibDebugLabels.rlDrawVertexArray(offset, count),
    () => rl.Rlgl.rlDrawVertexArray.run2(
      offset.toJS,
      count.toJS,
    ),
  );

  @override
  void rlDrawVertexArrayElements(
    num offset,
    num count,
    Uint16List buffer,
  ) => run(
    () => RaylibDebugLabels.rlDrawVertexArrayElements(offset, count, buffer),
    () => rl.Rlgl.rlDrawVertexArrayElements.run3(
      offset.toJS,
      count.toJS,
      rl.Temp.Uint16$.FromTypedList(buffer).toJS,
    ),
  );

  @override
  void rlDrawVertexArrayInstanced(
    num offset,
    num count,
    num instances,
  ) => run(
    () => RaylibDebugLabels.rlDrawVertexArrayInstanced(offset, count, instances),
    () => rl.Rlgl.rlDrawVertexArrayInstanced.run3(
      offset.toJS,
      count.toJS,
      instances.toJS,
    ),
  );

  @override
  void rlDrawVertexArrayElementsInstanced(
    num offset,
    num count,
    Uint16List buffer,
    num instances,
  ) => run(
    () => RaylibDebugLabels.rlDrawVertexArrayElementsInstanced(offset, count, buffer, instances),
    () => rl.Rlgl.rlDrawVertexArrayElementsInstanced.run4(
      offset.toJS,
      count.toJS,
      rl.Temp.Uint16$.FromTypedList(buffer).toJS,
      instances.toJS,
    ),
  );

  @override
  int rlLoadTexture(
    Uint8List? data,
    num width,
    num height,
    PixelFormat format,
    num mipmapCount,
  ) => run(
    () => RaylibDebugLabels.rlLoadTexture(data, width, height, format, mipmapCount),
    () => rl.Rlgl.rlLoadTexture.run5(
      (data == null ? 0 : rl.Temp.Uint8$.FromTypedList(data).address).toJS,
      width.toJS,
      height.toJS,
      format.value.toJS,
      mipmapCount.toJS,
    ).toInt(),
  );

  @override
  int rlLoadTextureDepth(
    num width,
    num height,
    bool useRenderBuffer,
  ) => run(
    () => RaylibDebugLabels.rlLoadTextureDepth(width, height, useRenderBuffer),
    () => rl.Rlgl.rlLoadTextureDepth.run3(
      width.toJS,
      height.toJS,
      useRenderBuffer.toJS,
    ).toInt(),
  );

  @override
  int rlLoadTextureCubemap(
    Uint8List? data,
    num size,
    PixelFormat format,
    num mipmapCount,
  ) => run(
    () => RaylibDebugLabels.rlLoadTextureCubemap(data, size, format, mipmapCount),
    () => rl.Rlgl.rlLoadTextureCubemap.run4(
      (data == null ? 0 : rl.Temp.Uint8$.FromTypedList(data).address).toJS,
      size.toJS,
      format.value.toJS,
      mipmapCount.toJS,
    ).toInt(),
  );

  @override
  void rlUpdateTexture(
    num id,
    num offsetX,
    num offsetY,
    num width,
    num height,
    PixelFormat format,
    Uint8List data,
  ) => run(
    () => RaylibDebugLabels.rlUpdateTexture(id, offsetX, offsetY, width, height, format, data),
    () => rl.Rlgl.rlUpdateTexture.run7(
      id.toJS,
      offsetX.toJS,
      offsetY.toJS,
      width.toJS,
      height.toJS,
      format.value.toJS,
      rl.Temp.Uint8$.FromTypedList(data).toJS,
    ),
  );

  @override
  (int glInternalFormat, int glFormat, int glType) rlGetGlTextureFormats(
    PixelFormat format,
  ) => run(
    () => RaylibDebugLabels.rlGetGlTextureFormats(format),
    () {
      final glInternalFormatPtr = rl.Temp.Uint32$.Ref1();
      final glFormatPtr = rl.Temp.Uint32$.Ref2();
      final glTypePtr = rl.Temp.Uint32$.Ref3();
      rl.Rlgl.rlGetGlTextureFormats.run4(
        format.value.toJS,
        glInternalFormatPtr.toJS,
        glFormatPtr.toJS,
        glTypePtr.toJS,
      );
      return (glInternalFormatPtr.value, glFormatPtr.value, glTypePtr.value);
    },
  );

  @override
  String rlGetPixelFormatName(
    PixelFormat format,
  ) => run(
    () => RaylibDebugLabels.rlGetPixelFormatName(format),
    () {
      final namePtr = rl.Rlgl.rlGetPixelFormatName.run1(
        format.value.toJS,
      ).toInt();
      return WasmStringPointer(namePtr).ref;
    },
  );

  @override
  void rlUnloadTexture(
    num id,
  ) => run(
    () => RaylibDebugLabels.rlUnloadTexture(id),
    () => rl.Rlgl.rlUnloadTexture.run1(
      id.toJS,
    ),
  );

  @override
  int rlGenTextureMipmaps(
    num id,
    num width,
    num height,
    PixelFormat format,
  ) => run(
    () => RaylibDebugLabels.rlGenTextureMipmaps(id, width, height, format),
    () {
      final mipmapsPtr = rl.Temp.Int32$.Ref1();
      rl.Rlgl.rlGenTextureMipmaps.run5(
        id.toJS,
        width.toJS,
        height.toJS,
        format.value.toJS,
        mipmapsPtr.toJS,
      );
      return mipmapsPtr.value;
    },
  );

  @override
  Uint8List rlReadTexturePixels(
    num id,
    num width,
    num height,
    PixelFormat format,
  ) => run(
    () => RaylibDebugLabels.rlReadTexturePixels(id, width, height, format),
    () {
      final size = rl.Utils.GetPixelDataSize(
        width.toInt(),
        height.toInt(),
        format,
      );
      final pixelsPtr = rl.Rlgl.rlReadTexturePixels.run4(
        id.toJS,
        width.toJS,
        height.toJS,
        format.value.toJS,
      ).toInt();
      return WasmUint8Pointer(pixelsPtr).readTypedArray(size);
    },
  );

  @override
  Uint8List rlReadScreenPixels(
    num width,
    num height,
  ) => run(
    () => RaylibDebugLabels.rlReadScreenPixels(width, height),
    () {
      final valuesPtr = rl.Rlgl.rlReadScreenPixels.run2(
        width.toJS,
        height.toJS,
      ).toInt();
      final pixels = WasmUint8Pointer(valuesPtr).readTypedArray(width.toInt()*height.toInt()*4);
      WasmMemory.free(valuesPtr);
      return pixels;
    },
  );

  @override
  int rlLoadFramebuffer() => run(
    () => RaylibDebugLabels.rlLoadFramebuffer(),
    () => rl.Rlgl.rlLoadFramebuffer.run.toInt(),
  );

  @override
  void rlFramebufferAttach(
    num fboId,
    num texId,
    RlFramebufferAttachType attachType,
    RlFramebufferAttachTextureType texType,
    num mipLevel,
  ) => run(
    () => RaylibDebugLabels.rlFramebufferAttach(fboId, texId, attachType, texType, mipLevel),
    () => rl.Rlgl.rlFramebufferAttach.run5(
      fboId.toJS,
      texId.toJS,
      attachType.value.toJS,
      texType.value.toJS,
      mipLevel.toJS,
    ),
  );

  @override
  bool rlFramebufferComplete(
    num id,
  ) => run(
    () => RaylibDebugLabels.rlFramebufferComplete(id),
    () => rl.Rlgl.rlFramebufferComplete.run1(
      id.toJS,
    ).toBool(),
  );

  @override
  void rlUnloadFramebuffer(
    num id,
  ) => run(
    () => RaylibDebugLabels.rlUnloadFramebuffer(id),
    () => rl.Rlgl.rlUnloadFramebuffer.run1(
      id.toJS,
    ),
  );

  @override
  int rlLoadShaderCode(
    String? vsCode,
    String? fsCode,
  ) => run(
    () => RaylibDebugLabels.rlLoadShaderCode(vsCode, fsCode),
    () => rl.Rlgl.rlLoadShaderCode.run2(
      vsCode?.toJS,
      fsCode?.toJS,
    ).toInt(),
  );

  @override
  int rlCompileShader(
    String shaderCode,
    RlShaderType type,
  ) => run(
    () => RaylibDebugLabels.rlCompileShader(shaderCode, type),
    () => rl.Rlgl.rlCompileShader.run2(
      shaderCode.toJS,
      type.value.toJS,
    ).toInt(),
  );

  @override
  int rlLoadShaderProgram(
    num vShaderId,
    num fShaderId,
  ) => run(
    () => RaylibDebugLabels.rlLoadShaderProgram(vShaderId, fShaderId),
    () => rl.Rlgl.rlLoadShaderProgram.run2(
      vShaderId.toJS,
      fShaderId.toJS,
    ).toInt(),
  );

  @override
  void rlUnloadShaderProgram(
    num id,
  ) => run(
    () => RaylibDebugLabels.rlUnloadShaderProgram(id),
    () => rl.Rlgl.rlUnloadShaderProgram.run1(
      id.toJS,
    ),
  );

  @override
  int rlGetLocationUniform(
    num shaderId,
    String uniformName,
  ) => run(
    () => RaylibDebugLabels.rlGetLocationUniform(shaderId, uniformName),
    () => rl.Rlgl.rlGetLocationUniform.run2(
      shaderId.toJS,
      uniformName.toJS,
    ).toInt(),
  );

  @override
  int rlGetLocationAttrib(
    num shaderId,
    String attribName,
  ) => run(
    () => RaylibDebugLabels.rlGetLocationAttrib(shaderId, attribName),
    () => rl.Rlgl.rlGetLocationAttrib.run2(
      shaderId.toJS,
      attribName.toJS,
    ).toInt(),
  );

  @override
  void rlSetUniform(
    num locIndex,
    TypedDataList value,
    RlShaderUniformDataType uniformType,
    num count,
  ) => run(
    () => RaylibDebugLabels.rlSetUniform(locIndex, value, uniformType, count),
    () {
      final WasmPointer ptr;
      switch (uniformType) {
        case .RL_SHADER_UNIFORM_FLOAT:
        case .RL_SHADER_UNIFORM_VEC2:
        case .RL_SHADER_UNIFORM_VEC3:
        case .RL_SHADER_UNIFORM_VEC4:
          ptr = rl.Temp.Float32$.FromTypedData(value);
        case .RL_SHADER_UNIFORM_INT:
        case .RL_SHADER_UNIFORM_IVEC2:
        case .RL_SHADER_UNIFORM_IVEC3:
        case .RL_SHADER_UNIFORM_IVEC4:
        case .RL_SHADER_UNIFORM_SAMPLER2D:
          ptr = rl.Temp.Int32$.FromTypedData(value);
        case .RL_SHADER_UNIFORM_UINT:
        case .RL_SHADER_UNIFORM_UIVEC2:
        case .RL_SHADER_UNIFORM_UIVEC3:
        case .RL_SHADER_UNIFORM_UIVEC4:
          ptr = rl.Temp.Uint32$.FromTypedData(value);
      }
      rl.Rlgl.rlSetUniform.run4(
        locIndex.toJS,
        ptr.toJS,
        uniformType.value.toJS,
        count.toJS,
      );
    },
  );

  @override
  void rlSetUniformMatrix(
    num locIndex,
    MatrixD mat,
  ) => run(
    () => RaylibDebugLabels.rlSetUniformMatrix(locIndex, mat),
    () => rl.Rlgl.rlSetUniformMatrix.run2(
      locIndex.toJS,
      rl.Temp.Matrix$.Ref1(mat).toJS,
    ),
  );

  @override
  void rlSetUniformMatrices(
    num locIndex,
    List<MatrixD> mat,
  ) => run(
    () => RaylibDebugLabels.rlSetUniformMatrices(locIndex, mat),
    () => rl.Rlgl.rlSetUniformMatrices.run3(
      locIndex.toJS,
      rl.Temp.Matrix$.Array(mat).toJS,
      mat.length.toJS,
    ),
  );

  @override
  void rlSetUniformSampler(
    num locIndex,
    num textureId,
  ) => run(
    () => RaylibDebugLabels.rlSetUniformSampler(locIndex, textureId),
    () => rl.Rlgl.rlSetUniformSampler.run2(
      locIndex.toJS,
      textureId.toJS,
    ),
  );

  @override
  void rlSetShader(
    num id,
    List<int> locs,
  ) => run(
    () => RaylibDebugLabels.rlSetShader(id, locs),
    () => rl.Rlgl.rlSetShader.run2(
      id.toJS,
      rl.Temp.Int32$.Array(locs).toJS,
    ),
  );

  @override
  int rlLoadComputeShaderProgram(
    num shaderId,
  ) => run(
    () => RaylibDebugLabels.rlLoadComputeShaderProgram(shaderId),
    () => rl.Rlgl.rlLoadComputeShaderProgram.run1(
      shaderId.toJS,
    ).toInt(),
  );

  @override
  void rlComputeShaderDispatch(
    num groupX,
    num groupY,
    num groupZ,
  ) => run(
    () => RaylibDebugLabels.rlComputeShaderDispatch(groupX, groupY, groupZ),
    () => rl.Rlgl.rlComputeShaderDispatch.run3(
      groupX.toJS,
      groupY.toJS,
      groupZ.toJS,
    ),
  );

  @override
  int rlLoadShaderBuffer(
    num size,
    TypedDataList? data,
    RlUsageHint? usageHint,
  ) => run(
    () => RaylibDebugLabels.rlLoadShaderBuffer(size, data, usageHint),
    () => rl.Rlgl.rlLoadShaderBuffer.run3(
      size.toJS,
      (data == null ? 0 : rl.Temp.TypedDataList$.Array(data).address).toJS,
      (usageHint?.value ?? 0).toJS,
    ).toInt(),
  );

  @override
  void rlUnloadShaderBuffer(
    num ssboId,
  ) => run(
    () => RaylibDebugLabels.rlUnloadShaderBuffer(ssboId),
    () => rl.Rlgl.rlUnloadShaderBuffer.run1(
      ssboId.toJS,
    ),
  );

  @override
  void rlUpdateShaderBuffer(
    num id,
    TypedDataList data,
    num offset,
  ) => run(
    () => RaylibDebugLabels.rlUpdateShaderBuffer(id, data, offset),
    () => rl.Rlgl.rlUpdateShaderBuffer.run4(
      id.toJS,
      rl.Temp.TypedDataList$.Array(data).toJS,
      data.length.toJS,
      offset.toJS,
    ),
  );

  @override
  void rlBindShaderBuffer(
    num id,
    num index,
  ) => run(
    () => RaylibDebugLabels.rlBindShaderBuffer(id, index),
    () => rl.Rlgl.rlBindShaderBuffer.run2(
      id.toJS,
      index.toJS,
    ),
  );

  @override
  Uint8List rlReadShaderBuffer(
    num id,
    num count,
    num offset,
  ) => run(
    () => RaylibDebugLabels.rlReadShaderBuffer(id, count, offset),
    () {
      final valuesPtr = rl.Temp.Uint8$.Sized(count.toInt());
      rl.Rlgl.rlReadShaderBuffer.run4(
        id.toJS,
        valuesPtr.toJS,
        count.toJS,
        offset.toJS,
      );
      return valuesPtr.readTypedArray(count.toInt());
    },
  );

  @override
  void rlCopyShaderBuffer(
    num destId,
    num srcId,
    num destOffset,
    num srcOffset,
    num count,
  ) => run(
    () => RaylibDebugLabels.rlCopyShaderBuffer(destId, srcId, destOffset, srcOffset, count),
    () => rl.Rlgl.rlCopyShaderBuffer.run5(
      destId.toJS,
      srcId.toJS,
      destOffset.toJS,
      srcOffset.toJS,
      count.toJS,
    ),
  );

  @override
  int rlGetShaderBufferSize(
    num id,
  ) => run(
    () => RaylibDebugLabels.rlGetShaderBufferSize(id),
    () => rl.Rlgl.rlGetShaderBufferSize.run1(
      id.toJS,
    ).toInt(),
  );

  @override
  void rlBindImageTexture(
    num id,
    num index,
    PixelFormat format,
    bool readonly,
  ) => run(
    () => RaylibDebugLabels.rlBindImageTexture(id, index, format, readonly),
    () => rl.Rlgl.rlBindImageTexture.run4(
      id.toJS,
      index.toJS,
      format.value.toJS,
      readonly.toJS,
    ),
  );

  @override
  MatrixD rlGetMatrixModelview() => run(
    () => RaylibDebugLabels.rlGetMatrixModelview(),
    () => rl.Temp.Matrix$.Extract1(
      (p) => rl.Rlgl.rlGetMatrixModelview.run1(
        p.toJS,
      ),
    ),
  );

  @override
  MatrixD rlGetMatrixProjection() => run(
    () => RaylibDebugLabels.rlGetMatrixProjection(),
    () => rl.Temp.Matrix$.Extract1(
      (p) => rl.Rlgl.rlGetMatrixProjection.run1(
        p.toJS,
      ),
    ),
  );

  @override
  MatrixD rlGetMatrixTransform() => run(
    () => RaylibDebugLabels.rlGetMatrixTransform(),
    () => rl.Temp.Matrix$.Extract1(
      (p) => rl.Rlgl.rlGetMatrixTransform.run1(
        p.toJS,
      ),
    ),
  );

  @override
  MatrixD rlGetMatrixProjectionStereo(
    num eye,
  ) => run(
    () => RaylibDebugLabels.rlGetMatrixProjectionStereo(eye),
    () => rl.Temp.Matrix$.Extract1(
      (p) => rl.Rlgl.rlGetMatrixProjectionStereo.run2(
        p.toJS,
        eye.toJS,
      ),
    ),
  );

  @override
  MatrixD rlGetMatrixViewOffsetStereo(
    num eye,
  ) => run(
    () => RaylibDebugLabels.rlGetMatrixViewOffsetStereo(eye),
    () => rl.Temp.Matrix$.Extract1(
      (p) => rl.Rlgl.rlGetMatrixViewOffsetStereo.run2(
        p.toJS,
        eye.toJS,
      ),
    ),
  );

  @override
  void rlSetMatrixProjection(
    MatrixD proj,
  ) => run(
    () => RaylibDebugLabels.rlSetMatrixProjection(proj),
    () => rl.Rlgl.rlSetMatrixProjection.run1(
      rl.Temp.Matrix$.Ref1(proj).toJS,
    ),
  );

  @override
  void rlSetMatrixModelview(
    MatrixD view,
  ) => run(
    () => RaylibDebugLabels.rlSetMatrixModelview(view),
    () => rl.Rlgl.rlSetMatrixModelview.run1(
      rl.Temp.Matrix$.Ref1(view).toJS,
    ),
  );

  @override
  void rlSetMatrixProjectionStereo(
    MatrixD right,
    MatrixD left,
  ) => run(
    () => RaylibDebugLabels.rlSetMatrixProjectionStereo(right, left),
    () => rl.Rlgl.rlSetMatrixProjectionStereo.run2(
      rl.Temp.Matrix$.Ref1(right).toJS,
      rl.Temp.Matrix$.Ref2(left).toJS,
    ),
  );

  @override
  void rlSetMatrixViewOffsetStereo(
    MatrixD right,
    MatrixD left,
  ) => run(
    () => RaylibDebugLabels.rlSetMatrixViewOffsetStereo(right, left),
    () => rl.Rlgl.rlSetMatrixViewOffsetStereo.run2(
      rl.Temp.Matrix$.Ref1(right).toJS,
      rl.Temp.Matrix$.Ref2(left).toJS,
    ),
  );

  @override
  void rlLoadDrawCube() => run(
    () => RaylibDebugLabels.rlLoadDrawCube(),
    () => rl.Rlgl.rlLoadDrawCube.run,
  );

  @override
  void rlLoadDrawQuad() => run(
    () => RaylibDebugLabels.rlLoadDrawQuad(),
    () => rl.Rlgl.rlLoadDrawQuad.run,
  );
}