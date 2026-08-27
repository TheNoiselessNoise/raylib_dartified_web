part of '../../../raylib_dartified_web.dart';

class RaylibGuiFlat extends RaylibGuiFlatModule<Raylib> {

  RaylibGuiFlat(super.rl);

  @override
  void GuiEnable() => rl.Gui.GuiEnable.run;

  @override
  void GuiDisable() => rl.Gui.GuiDisable.run;

  @override
  void GuiLock() => rl.Gui.GuiLock.run;

  @override
  void GuiUnlock() => rl.Gui.GuiUnlock.run;

  @override
  bool GuiIsLocked() => rl.Gui.GuiIsLocked.run().toBool();

  @override
  void GuiSetAlpha(
    double alpha,
  ) => rl.Gui.GuiSetAlpha.run(
    alpha.toJS,
  );

  @override
  void GuiSetState(
    int state,
  ) => rl.Gui.GuiSetState.run(
    state.toJS,
  );

  @override
  int GuiGetState() => rl.Gui.GuiGetState.run().toInt();

  @override
  void GuiSetFont(
    FontD font,
  ) => rl.Gui.GuiSetFont.run(
    rl.Temp.Font$.Ref1(font).toJS,
  );

  @override
  FontD GuiGetFont() => rl.Temp.Font$.RefCapture(
    RaylibCaptureIds.GuiGetFont,
    (p) => rl.Gui.GuiGetFont.run(
      p.toJS,
    ),
  );

  @override
  void GuiSetStyle(
    int control,
    int property,
    int value,
  ) => rl.Gui.GuiSetStyle.run(
    control.toJS,
    property.toJS,
    value.toJS,
  );

  @override
  int GuiGetStyle(
    int control,
    int property,
  ) => rl.Gui.GuiGetStyle.run(
    control.toJS,
    property.toJS,
  ).toInt();

  @override
  void GuiLoadStyle(
    MemoryPointer<RChar> fileName,
  ) => rl.Gui.GuiLoadStyle.run(
    fileName.toJS,
  );

  @override
  void GuiLoadStyleDefault() => rl.Gui.GuiLoadStyleDefault.run;

  @override
  void GuiEnableTooltip() => rl.Gui.GuiEnableTooltip.run;

  @override
  void GuiDisableTooltip() => rl.Gui.GuiDisableTooltip.run;

  @override
  void GuiSetTooltip(
    MemoryPointer<RChar> tooltip,
  ) => rl.Gui.GuiSetTooltip.run(
    tooltip.toJS,
  );

  @override
  WasmMemoryPointer<RChar> GuiIconText(
    int iconId,
    MemoryPointer<RChar> text,
  ) => rl.Gui.GuiIconText.run(
    iconId.toJS,
    text.toJS,
  ).asMemoryPointer();

  @override
  void GuiSetIconScale(
    int scale,
  ) => rl.Gui.GuiSetIconScale.run(
    scale.toJS,
  );

  @override
  WasmMemoryPointer<RUnsignedInt> GuiGetIcons() => rl.Gui.GuiGetIcons.run().asMemoryPointer();

  @override
  WasmMemoryPointer<RPointer<RChar>> GuiLoadIcons(
    MemoryPointer<RChar> fileName,
    bool loadIconsName,
  ) => rl.Gui.GuiLoadIcons.run(
    fileName.toJS,
    loadIconsName.toJS,
  ).asMemoryPointer();

  @override
  void GuiDrawIcon(
    int iconId,
    int posX,
    int posY,
    int pixelSize,
    ColorD color,
  ) => rl.Gui.GuiDrawIcon.run(
    iconId.toJS,
    posX.toJS,
    posY.toJS,
    pixelSize.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  );

  @override
  int GuiGetTextWidth(
    MemoryPointer<RChar> text,
  ) => rl.Gui.GuiGetTextWidth.run(
    text.toJS,
  ).toInt();

  @override
  int GuiWindowBox(
    RectangleD bounds,
    MemoryPointer<RChar> title,
  ) => rl.Gui.GuiWindowBox.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    title.toJS,
  ).toInt();

  @override
  int GuiGroupBox(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => rl.Gui.GuiGroupBox.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  ).toInt();

  @override
  int GuiLine(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => rl.Gui.GuiLine.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  ).toInt();

  @override
  int GuiPanel(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => rl.Gui.GuiPanel.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  ).toInt();

  @override
  int GuiTabBar(
    RectangleD bounds,
    MemoryPointer<RPointer<RChar>> text,
    int count,
    MemoryPointer<RInt> active,
  ) => rl.Gui.GuiTabBar.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    count.toJS,
    active.toJS,
  ).toInt();

  @override
  int GuiScrollPanel(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    RectangleD content,
    StructPointer<Vector2D> scroll,
    StructPointer<RectangleD> view,
  ) => rl.Gui.GuiScrollPanel.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    rl.Temp.Rectangle$.Ref2(content).toJS,
    scroll.toJS,
    view.toJS,
  ).toInt();

  @override
  int GuiLabel(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => rl.Gui.GuiLabel.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  ).toInt();

  @override
  int GuiButton(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => rl.Gui.GuiButton.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  ).toInt();

  @override
  int GuiLabelButton(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => rl.Gui.GuiLabelButton.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  ).toInt();

  @override
  int GuiToggle(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RBool> active,
  ) => rl.Gui.GuiToggle.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    active.toJS,
  ).toInt();

  @override
  int GuiToggleGroup(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> active,
  ) => rl.Gui.GuiToggleGroup.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    active.toJS,
  ).toInt();

  @override
  int GuiToggleSlider(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> active,
  ) => rl.Gui.GuiToggleSlider.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    active.toJS,
  ).toInt();

  @override
  int GuiCheckBox(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RBool> checked,
  ) => rl.Gui.GuiCheckBox.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    checked.toJS,
  ).toInt();

  @override
  int GuiComboBox(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> active,
  ) => rl.Gui.GuiComboBox.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    active.toJS,
  ).toInt();

  @override
  int GuiDropdownBox(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> active,
    bool editMode,
  ) => rl.Gui.GuiDropdownBox.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    active.toJS,
    editMode.toJS,
  ).toInt();

  @override
  int GuiSpinner(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> value,
    int minValue,
    int maxValue,
    bool editMode,
  ) => rl.Gui.GuiSpinner.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    value.toJS,
    minValue.toJS,
    maxValue.toJS,
    editMode.toJS,
  ).toInt();

  @override
  int GuiValueBox(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> value,
    int minValue,
    int maxValue,
    bool editMode,
  ) => rl.Gui.GuiValueBox.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    value.toJS,
    minValue.toJS,
    maxValue.toJS,
    editMode.toJS,
  ).toInt();

  @override
  int GuiValueBoxFloat(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> textValue,
    MemoryPointer<RFloat> value,
    bool editMode,
  ) => rl.Gui.GuiValueBoxFloat.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    textValue.toJS,
    value.toJS,
    editMode.toJS,
  ).toInt();

  @override
  int GuiTextBox(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    int textSize,
    bool editMode,
  ) => rl.Gui.GuiTextBox.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    textSize.toJS,
    editMode.toJS,
  ).toInt();

  @override
  int GuiSlider(
    RectangleD bounds,
    MemoryPointer<RChar> textLeft,
    MemoryPointer<RChar> textRight,
    MemoryPointer<RFloat> value,
    double minValue,
    double maxValue,
  ) => rl.Gui.GuiSlider.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    textLeft.toJS,
    textRight.toJS,
    value.toJS,
    minValue.toJS,
    maxValue.toJS,
  ).toInt();

  @override
  int GuiSliderBar(
    RectangleD bounds,
    MemoryPointer<RChar> textLeft,
    MemoryPointer<RChar> textRight,
    MemoryPointer<RFloat> value,
    double minValue,
    double maxValue,
  ) => rl.Gui.GuiSliderBar.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    textLeft.toJS,
    textRight.toJS,
    value.toJS,
    minValue.toJS,
    maxValue.toJS,
  ).toInt();

  @override
  int GuiProgressBar(
    RectangleD bounds,
    MemoryPointer<RChar> textLeft,
    MemoryPointer<RChar> textRight,
    MemoryPointer<RFloat> value,
    double minValue,
    double maxValue,
  ) => rl.Gui.GuiProgressBar.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    textLeft.toJS,
    textRight.toJS,
    value.toJS,
    minValue.toJS,
    maxValue.toJS,
  ).toInt();

  @override
  int GuiStatusBar(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => rl.Gui.GuiStatusBar.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  ).toInt();

  @override
  int GuiDummyRec(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => rl.Gui.GuiDummyRec.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  ).toInt();

  @override
  int GuiGrid(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    double spacing,
    int subdivs,
    StructPointer<Vector2D> mouseCell,
  ) => rl.Gui.GuiGrid.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    spacing.toJS,
    subdivs.toJS,
    mouseCell.toJS,
  ).toInt();

  @override
  int GuiListView(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> scrollIndex,
    MemoryPointer<RInt> active,
  ) => rl.Gui.GuiListView.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    scrollIndex.toJS,
    active.toJS,
  ).toInt();

  @override
  int GuiListViewEx(
    RectangleD bounds,
    MemoryPointer<RPointer<RChar>> text,
    int count,
    MemoryPointer<RInt> scrollIndex,
    MemoryPointer<RInt> active,
    MemoryPointer<RInt> focus,
  ) => rl.Gui.GuiListViewEx.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    count.toJS,
    scrollIndex.toJS,
    active.toJS,
    focus.toJS,
  ).toInt();

  @override
  int GuiMessageBox(
    RectangleD bounds,
    MemoryPointer<RChar> title,
    MemoryPointer<RChar> message,
    MemoryPointer<RChar> buttons,
  ) => rl.Gui.GuiMessageBox.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    title.toJS,
    message.toJS,
    buttons.toJS,
  ).toInt();

  @override
  int GuiTextInputBox(
    RectangleD bounds,
    MemoryPointer<RChar> title,
    MemoryPointer<RChar> message,
    MemoryPointer<RChar> buttons,
    MemoryPointer<RChar> text,
    int textMaxSize,
    MemoryPointer<RBool> secretViewActive,
  ) => rl.Gui.GuiTextInputBox.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    title.toJS,
    message.toJS,
    buttons.toJS,
    text.toJS,
    textMaxSize.toJS,
    secretViewActive.toJS,
  ).toInt();

  @override
  int GuiColorPicker(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    StructPointer<ColorD> color,
  ) => rl.Gui.GuiColorPicker.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    color.toJS,
  ).toInt();

  @override
  int GuiColorPanel(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    StructPointer<ColorD> color,
  ) => rl.Gui.GuiColorPanel.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    color.toJS,
  ).toInt();

  @override
  int GuiColorBarAlpha(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RFloat> alpha,
  ) => rl.Gui.GuiColorBarAlpha.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    alpha.toJS,
  ).toInt();

  @override
  int GuiColorBarHue(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RFloat> value,
  ) => rl.Gui.GuiColorBarHue.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    value.toJS,
  ).toInt();

  @override
  int GuiColorPickerHSV(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    StructPointer<Vector3D> colorHsv,
  ) => rl.Gui.GuiColorPickerHSV.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    colorHsv.toJS,
  ).toInt();

  @override
  int GuiColorPanelHSV(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    StructPointer<Vector3D> colorHsv,
  ) => rl.Gui.GuiColorPanelHSV.run(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    colorHsv.toJS,
  ).toInt();
}