part of '../../../raylib_dartified_web.dart';

class RaylibGuiFlat extends RaylibGuiFlatModule<Raylib> {

  RaylibGuiFlat(super.rl);

  RaylibGui get _wasm => rl.module();

  @override
  void GuiEnable() => _wasm.GuiEnable.run();

  @override
  void GuiDisable() => _wasm.GuiDisable.run();

  @override
  void GuiLock() => _wasm.GuiLock.run();

  @override
  void GuiUnlock() => _wasm.GuiUnlock.run();

  @override
  bool GuiIsLocked() => _wasm.GuiIsLocked.run().toBool();

  @override
  void GuiSetAlpha(
    double alpha,
  ) => _wasm.GuiSetAlpha.run([
    alpha.toJS,
  ]);

  @override
  void GuiSetState(
    int state,
  ) => _wasm.GuiSetState.run([
    state.toJS,
  ]);

  @override
  int GuiGetState() => _wasm.GuiGetState.run().toInt();

  @override
  void GuiSetFont(
    FontD font,
  ) => _wasm.GuiSetFont.run([
    rl.Temp.Font$.Ref1(font).toJS,
  ]);

  @override
  FontD GuiGetFont() => rl.Temp.Font$.RefCaptureCached(
    RaylibCaptureIds.GuiGetFont,
    (p) => _wasm.GuiGetFont.run([
      p.toJS,
    ]),
  );

  @override
  void GuiSetStyle(
    int control,
    int property,
    int value,
  ) => _wasm.GuiSetStyle.run([
    control.toJS,
    property.toJS,
    value.toJS,
  ]);

  @override
  int GuiGetStyle(
    int control,
    int property,
  ) => _wasm.GuiGetStyle.run([
    control.toJS,
    property.toJS,
  ]).toInt();

  @override
  void GuiLoadStyle(
    MemoryPointer<RChar> fileName,
  ) => _wasm.GuiLoadStyle.run([
    fileName.toJS,
  ]);

  @override
  void GuiLoadStyleFromMemory(
    MemoryPointer<RUnsignedChar> fileData,
    int dataSize,
  ) => _wasm.GuiLoadStyleFromMemory.run([
    fileData.toJS,
    dataSize.toJS,
  ]);

  @override
  void GuiLoadStyleDefault() => _wasm.GuiLoadStyleDefault.run();

  @override
  void GuiEnableTooltip() => _wasm.GuiEnableTooltip.run();

  @override
  void GuiDisableTooltip() => _wasm.GuiDisableTooltip.run();

  @override
  void GuiSetTooltip(
    MemoryPointer<RChar> tooltip,
  ) => _wasm.GuiSetTooltip.run([
    tooltip.toJS,
  ]);

  @override
  WasmMemoryPointer<RChar> GuiIconText(
    int iconId,
    MemoryPointer<RChar> text,
  ) => _wasm.GuiIconText.run([
    iconId.toJS,
    text.toJS,
  ]).asMemoryPointer();

  @override
  void GuiSetIconScale(
    int scale,
  ) => _wasm.GuiSetIconScale.run([
    scale.toJS,
  ]);

  @override
  WasmMemoryPointer<RUnsignedInt> GuiGetIcons() => _wasm.GuiGetIcons.run().asMemoryPointer();

  @override
  WasmMemoryPointer<RPointer<RChar>> GuiLoadIcons(
    MemoryPointer<RChar> fileName,
    bool loadIconsName,
  ) => _wasm.GuiLoadIcons.run([
    fileName.toJS,
    loadIconsName.toJS,
  ]).asMemoryPointer();

  @override
  WasmMemoryPointer<RPointer<RChar>> GuiLoadIconsFromMemory(
    MemoryPointer<RUnsignedChar> fileData,
    int dataSize,
    bool loadIconsName,
  ) => _wasm.GuiLoadIconsFromMemory.run([
    fileData.toJS,
    dataSize.toJS,
    loadIconsName.toJS,
  ]).asMemoryPointer();

  @override
  void GuiDrawIcon(
    int iconId,
    int posX,
    int posY,
    int pixelSize,
    ColorD color,
  ) => _wasm.GuiDrawIcon.run([
    iconId.toJS,
    posX.toJS,
    posY.toJS,
    pixelSize.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  ]);

  @override
  int GuiGetTextWidth(
    MemoryPointer<RChar> text,
  ) => _wasm.GuiGetTextWidth.run([
    text.toJS,
  ]).toInt();

  @override
  int GuiWindowBox(
    RectangleD bounds,
    MemoryPointer<RChar> title,
  ) => _wasm.GuiWindowBox.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    title.toJS,
  ]).toInt();

  @override
  int GuiGroupBox(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => _wasm.GuiGroupBox.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  ]).toInt();

  @override
  int GuiLine(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => _wasm.GuiLine.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  ]).toInt();

  @override
  int GuiPanel(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => _wasm.GuiPanel.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  ]).toInt();

  @override
  int GuiScrollPanel(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    RectangleD content,
    StructPointer<Vector2D> scroll,
    StructPointer<RectangleD> view,
  ) => _wasm.GuiScrollPanel.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    rl.Temp.Rectangle$.Ref2(content).toJS,
    scroll.toJS,
    view.toJS,
  ]).toInt();

  @override
  int GuiLabel(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => _wasm.GuiLabel.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  ]).toInt();

  @override
  int GuiButton(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => _wasm.GuiButton.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  ]).toInt();

  @override
  int GuiLabelButton(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => _wasm.GuiLabelButton.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  ]).toInt();

  @override
  int GuiToggle(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RBool> active,
  ) => _wasm.GuiToggle.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    active.toJS,
  ]).toInt();

  @override
  int GuiToggleGroup(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> active,
  ) => _wasm.GuiToggleGroup.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    active.toJS,
  ]).toInt();

  @override
  int GuiToggleSlider(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> active,
  ) => _wasm.GuiToggleSlider.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    active.toJS,
  ]).toInt();

  @override
  int GuiCheckBox(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RBool> checked,
  ) => _wasm.GuiCheckBox.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    checked.toJS,
  ]).toInt();

  @override
  int GuiComboBox(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> active,
  ) => _wasm.GuiComboBox.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    active.toJS,
  ]).toInt();

  @override
  int GuiDropdownBox(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> active,
    bool editMode,
  ) => _wasm.GuiDropdownBox.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    active.toJS,
    editMode.toJS,
  ]).toInt();

  @override
  int GuiSpinner(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> value,
    int minValue,
    int maxValue,
    bool editMode,
  ) => _wasm.GuiSpinner.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    value.toJS,
    minValue.toJS,
    maxValue.toJS,
    editMode.toJS,
  ]).toInt();

  @override
  int GuiValueBox(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> value,
    int minValue,
    int maxValue,
    bool editMode,
  ) => _wasm.GuiValueBox.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    value.toJS,
    minValue.toJS,
    maxValue.toJS,
    editMode.toJS,
  ]).toInt();

  @override
  int GuiValueBoxFloat(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> textValue,
    MemoryPointer<RFloat> value,
    bool editMode,
  ) => _wasm.GuiValueBoxFloat.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    textValue.toJS,
    value.toJS,
    editMode.toJS,
  ]).toInt();

  @override
  int GuiTextBox(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    int textSize,
    bool editMode,
  ) => _wasm.GuiTextBox.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    textSize.toJS,
    editMode.toJS,
  ]).toInt();

  @override
  int GuiSlider(
    RectangleD bounds,
    MemoryPointer<RChar> textLeft,
    MemoryPointer<RChar> textRight,
    MemoryPointer<RFloat> value,
    double minValue,
    double maxValue,
  ) => _wasm.GuiSlider.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    textLeft.toJS,
    textRight.toJS,
    value.toJS,
    minValue.toJS,
    maxValue.toJS,
  ]).toInt();

  @override
  int GuiSliderBar(
    RectangleD bounds,
    MemoryPointer<RChar> textLeft,
    MemoryPointer<RChar> textRight,
    MemoryPointer<RFloat> value,
    double minValue,
    double maxValue,
  ) => _wasm.GuiSliderBar.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    textLeft.toJS,
    textRight.toJS,
    value.toJS,
    minValue.toJS,
    maxValue.toJS,
  ]).toInt();

  @override
  int GuiProgressBar(
    RectangleD bounds,
    MemoryPointer<RChar> textLeft,
    MemoryPointer<RChar> textRight,
    MemoryPointer<RFloat> value,
    double minValue,
    double maxValue,
  ) => _wasm.GuiProgressBar.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    textLeft.toJS,
    textRight.toJS,
    value.toJS,
    minValue.toJS,
    maxValue.toJS,
  ]).toInt();

  @override
  int GuiStatusBar(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => _wasm.GuiStatusBar.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  ]).toInt();

  @override
  int GuiDummyRec(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => _wasm.GuiDummyRec.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  ]).toInt();

  @override
  int GuiGrid(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    double spacing,
    int subdivs,
    StructPointer<Vector2D> mouseCell,
  ) => _wasm.GuiGrid.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    spacing.toJS,
    subdivs.toJS,
    mouseCell.toJS,
  ]).toInt();

  @override
  int GuiListView(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> scrollIndex,
    MemoryPointer<RInt> active,
  ) => _wasm.GuiListView.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    scrollIndex.toJS,
    active.toJS,
  ]).toInt();

  @override
  int GuiListViewEx(
    RectangleD bounds,
    MemoryPointer<RPointer<RChar>> text,
    int count,
    MemoryPointer<RInt> scrollIndex,
    MemoryPointer<RInt> active,
    MemoryPointer<RInt> focus,
  ) => _wasm.GuiListViewEx.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    count.toJS,
    scrollIndex.toJS,
    active.toJS,
    focus.toJS,
  ]).toInt();

  @override
  int GuiTabBar(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> hscroll,
    MemoryPointer<RInt> active,
  ) => _wasm.GuiTabBar.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    hscroll.toJS,
    active.toJS,
  ]).toInt();

  @override
  int GuiTabBarEx(
    RectangleD bounds,
    MemoryPointer<RPointer<RChar>> text,
    int count,
    MemoryPointer<RInt> hscroll,
    MemoryPointer<RInt> active,
    MemoryPointer<RInt> focus,
  ) => _wasm.GuiTabBarEx.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    count.toJS,
    hscroll.toJS,
    active.toJS,
    focus.toJS,
  ]).toInt();

  @override
  int GuiMessageBox(
    RectangleD bounds,
    MemoryPointer<RChar> title,
    MemoryPointer<RChar> message,
    MemoryPointer<RChar> btnText,
    MemoryPointer<RInt> btnActive,
  ) => _wasm.GuiMessageBox.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    title.toJS,
    message.toJS,
    btnText.toJS,
    btnActive.toJS,
  ]).toInt();

  @override
  int GuiTextInputBox(
    RectangleD bounds,
    MemoryPointer<RChar> title,
    MemoryPointer<RChar> message,
    MemoryPointer<RChar> text,
    int textSize,
    MemoryPointer<RChar> btnText,
    MemoryPointer<RInt> btnActive,
    MemoryPointer<RBool> secretViewActive,
  ) => _wasm.GuiTextInputBox.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    title.toJS,
    message.toJS,
    text.toJS,
    textSize.toJS,
    btnText.toJS,
    btnActive.toJS,
    secretViewActive.toJS,
  ]).toInt();

  @override
  int GuiColorPicker(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    StructPointer<ColorD> color,
  ) => _wasm.GuiColorPicker.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    color.toJS,
  ]).toInt();

  @override
  int GuiColorPanel(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    StructPointer<ColorD> color,
  ) => _wasm.GuiColorPanel.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    color.toJS,
  ]).toInt();

  @override
  int GuiColorBarAlpha(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RFloat> alpha,
  ) => _wasm.GuiColorBarAlpha.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    alpha.toJS,
  ]).toInt();

  @override
  int GuiColorBarHue(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RFloat> value,
  ) => _wasm.GuiColorBarHue.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    value.toJS,
  ]).toInt();

  @override
  int GuiColorPickerHSV(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    StructPointer<Vector3D> colorHsv,
  ) => _wasm.GuiColorPickerHSV.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    colorHsv.toJS,
  ]).toInt();

  @override
  int GuiColorPanelHSV(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    StructPointer<Vector3D> colorHsv,
  ) => _wasm.GuiColorPanelHSV.run([
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    colorHsv.toJS,
  ]).toInt();
}