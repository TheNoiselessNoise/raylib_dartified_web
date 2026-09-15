part of '../../../raylib_dartified_web.dart';

class RaylibGuiFlat extends RaylibGuiFlatModule<Raylib> {

  RaylibGuiFlat(super.rl);

  RaylibGui get _wasm => rl.module();

  @override
  void GuiEnable() => _wasm.GuiEnable();

  @override
  void GuiDisable() => _wasm.GuiDisable();

  @override
  void GuiLock() => _wasm.GuiLock();

  @override
  void GuiUnlock() => _wasm.GuiUnlock();

  @override
  bool GuiIsLocked() => _wasm.GuiIsLocked();

  @override
  void GuiSetAlpha(
    double alpha,
  ) => _wasm.GuiSetAlpha(
    alpha.toJS,
  );

  @override
  void GuiSetState(
    int state,
  ) => _wasm.GuiSetState(
    state.toJS,
  );

  @override
  int GuiGetState() => _wasm.GuiGetState();

  @override
  void GuiSetFont(
    FontD font,
  ) => _wasm.GuiSetFont(
    rl.Temp.Font$.Ref1(font).toJS,
  );

  @override
  FontD GuiGetFont() => rl.Temp.Font$.RefCaptureCached(
    RaylibCaptureIds.GuiGetFont,
    (p) => _wasm.GuiGetFont(
      p.toJS,
    ),
  );

  @override
  void GuiSetStyle(
    int control,
    int property,
    int value,
  ) => _wasm.GuiSetStyle(
    control.toJS,
    property.toJS,
    value.toJS,
  );

  @override
  int GuiGetStyle(
    int control,
    int property,
  ) => _wasm.GuiGetStyle(
    control.toJS,
    property.toJS,
  );

  @override
  void GuiLoadStyle(
    MemoryPointer<RChar> fileName,
  ) => _wasm.GuiLoadStyle(
    fileName.toJS,
  );

  @override
  void GuiLoadStyleFromMemory(
    MemoryPointer<RUnsignedChar> fileData,
    int dataSize,
  ) => _wasm.GuiLoadStyleFromMemory(
    fileData.toJS,
    dataSize.toJS,
  );

  @override
  void GuiLoadStyleDefault() => _wasm.GuiLoadStyleDefault();

  @override
  void GuiEnableTooltip() => _wasm.GuiEnableTooltip();

  @override
  void GuiDisableTooltip() => _wasm.GuiDisableTooltip();

  @override
  void GuiSetTooltip(
    MemoryPointer<RChar> tooltip,
  ) => _wasm.GuiSetTooltip(
    tooltip.toJS,
  );

  @override
  WasmMemoryPointer<RChar> GuiIconText(
    int iconId,
    MemoryPointer<RChar> text,
  ) => _wasm.GuiIconText(
    iconId.toJS,
    text.toJS,
  );

  @override
  void GuiSetIconScale(
    int scale,
  ) => _wasm.GuiSetIconScale(
    scale.toJS,
  );

  @override
  WasmMemoryPointer<RUnsignedInt> GuiGetIcons() => _wasm.GuiGetIcons();

  @override
  WasmMemoryPointer<RPointer<RChar>> GuiLoadIcons(
    MemoryPointer<RChar> fileName,
    bool loadIconsName,
  ) => _wasm.GuiLoadIcons(
    fileName.toJS,
    loadIconsName.toJS,
  );

  @override
  WasmMemoryPointer<RPointer<RChar>> GuiLoadIconsFromMemory(
    MemoryPointer<RUnsignedChar> fileData,
    int dataSize,
    bool loadIconsName,
  ) => _wasm.GuiLoadIconsFromMemory(
    fileData.toJS,
    dataSize.toJS,
    loadIconsName.toJS,
  );

  @override
  void GuiDrawIcon(
    int iconId,
    int posX,
    int posY,
    int pixelSize,
    ColorD color,
  ) => _wasm.GuiDrawIcon(
    iconId.toJS,
    posX.toJS,
    posY.toJS,
    pixelSize.toJS,
    rl.Temp.Color$.Ref1(color).toJS,
  );

  @override
  int GuiGetTextWidth(
    MemoryPointer<RChar> text,
  ) => _wasm.GuiGetTextWidth(
    text.toJS,
  );

  @override
  int GuiWindowBox(
    RectangleD bounds,
    MemoryPointer<RChar> title,
  ) => _wasm.GuiWindowBox(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    title.toJS,
  );

  @override
  int GuiGroupBox(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => _wasm.GuiGroupBox(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  );

  @override
  int GuiLine(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => _wasm.GuiLine(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  );

  @override
  int GuiPanel(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => _wasm.GuiPanel(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  );

  @override
  int GuiScrollPanel(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    RectangleD content,
    StructPointer<Vector2D> scroll,
    StructPointer<RectangleD> view,
  ) => _wasm.GuiScrollPanel(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    rl.Temp.Rectangle$.Ref2(content).toJS,
    scroll.toJS,
    view.toJS,
  );

  @override
  int GuiLabel(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => _wasm.GuiLabel(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  );

  @override
  int GuiButton(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => _wasm.GuiButton(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  );

  @override
  int GuiLabelButton(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => _wasm.GuiLabelButton(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  );

  @override
  int GuiToggle(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RBool> active,
  ) => _wasm.GuiToggle(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    active.toJS,
  );

  @override
  int GuiToggleGroup(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> active,
  ) => _wasm.GuiToggleGroup(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    active.toJS,
  );

  @override
  int GuiToggleSlider(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> active,
  ) => _wasm.GuiToggleSlider(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    active.toJS,
  );

  @override
  int GuiCheckBox(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RBool> checked,
  ) => _wasm.GuiCheckBox(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    checked.toJS,
  );

  @override
  int GuiComboBox(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> active,
  ) => _wasm.GuiComboBox(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    active.toJS,
  );

  @override
  int GuiDropdownBox(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> active,
    bool editMode,
  ) => _wasm.GuiDropdownBox(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    active.toJS,
    editMode.toJS,
  );

  @override
  int GuiSpinner(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> value,
    int minValue,
    int maxValue,
    bool editMode,
  ) => _wasm.GuiSpinner(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    value.toJS,
    minValue.toJS,
    maxValue.toJS,
    editMode.toJS,
  );

  @override
  int GuiValueBox(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> value,
    int minValue,
    int maxValue,
    bool editMode,
  ) => _wasm.GuiValueBox(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    value.toJS,
    minValue.toJS,
    maxValue.toJS,
    editMode.toJS,
  );

  @override
  int GuiValueBoxFloat(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RChar> textValue,
    MemoryPointer<RFloat> value,
    bool editMode,
  ) => _wasm.GuiValueBoxFloat(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    textValue.toJS,
    value.toJS,
    editMode.toJS,
  );

  @override
  int GuiTextBox(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    int textSize,
    bool editMode,
  ) => _wasm.GuiTextBox(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    textSize.toJS,
    editMode.toJS,
  );

  @override
  int GuiSlider(
    RectangleD bounds,
    MemoryPointer<RChar> textLeft,
    MemoryPointer<RChar> textRight,
    MemoryPointer<RFloat> value,
    double minValue,
    double maxValue,
  ) => _wasm.GuiSlider(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    textLeft.toJS,
    textRight.toJS,
    value.toJS,
    minValue.toJS,
    maxValue.toJS,
  );

  @override
  int GuiSliderBar(
    RectangleD bounds,
    MemoryPointer<RChar> textLeft,
    MemoryPointer<RChar> textRight,
    MemoryPointer<RFloat> value,
    double minValue,
    double maxValue,
  ) => _wasm.GuiSliderBar(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    textLeft.toJS,
    textRight.toJS,
    value.toJS,
    minValue.toJS,
    maxValue.toJS,
  );

  @override
  int GuiProgressBar(
    RectangleD bounds,
    MemoryPointer<RChar> textLeft,
    MemoryPointer<RChar> textRight,
    MemoryPointer<RFloat> value,
    double minValue,
    double maxValue,
  ) => _wasm.GuiProgressBar(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    textLeft.toJS,
    textRight.toJS,
    value.toJS,
    minValue.toJS,
    maxValue.toJS,
  );

  @override
  int GuiStatusBar(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => _wasm.GuiStatusBar(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  );

  @override
  int GuiDummyRec(
    RectangleD bounds,
    MemoryPointer<RChar> text,
  ) => _wasm.GuiDummyRec(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
  );

  @override
  int GuiGrid(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    double spacing,
    int subdivs,
    StructPointer<Vector2D> mouseCell,
  ) => _wasm.GuiGrid(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    spacing.toJS,
    subdivs.toJS,
    mouseCell.toJS,
  );

  @override
  int GuiListView(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> scrollIndex,
    MemoryPointer<RInt> active,
  ) => _wasm.GuiListView(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    scrollIndex.toJS,
    active.toJS,
  );

  @override
  int GuiListViewEx(
    RectangleD bounds,
    MemoryPointer<RPointer<RChar>> text,
    int count,
    MemoryPointer<RInt> scrollIndex,
    MemoryPointer<RInt> active,
    MemoryPointer<RInt> focus,
  ) => _wasm.GuiListViewEx(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    count.toJS,
    scrollIndex.toJS,
    active.toJS,
    focus.toJS,
  );

  @override
  int GuiTabBar(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RInt> hscroll,
    MemoryPointer<RInt> active,
  ) => _wasm.GuiTabBar(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    hscroll.toJS,
    active.toJS,
  );

  @override
  int GuiTabBarEx(
    RectangleD bounds,
    MemoryPointer<RPointer<RChar>> text,
    int count,
    MemoryPointer<RInt> hscroll,
    MemoryPointer<RInt> active,
    MemoryPointer<RInt> focus,
  ) => _wasm.GuiTabBarEx(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    count.toJS,
    hscroll.toJS,
    active.toJS,
    focus.toJS,
  );

  @override
  int GuiMessageBox(
    RectangleD bounds,
    MemoryPointer<RChar> title,
    MemoryPointer<RChar> message,
    MemoryPointer<RChar> btnText,
    MemoryPointer<RInt> btnActive,
  ) => _wasm.GuiMessageBox(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    title.toJS,
    message.toJS,
    btnText.toJS,
    btnActive.toJS,
  );

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
  ) => _wasm.GuiTextInputBox(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    title.toJS,
    message.toJS,
    text.toJS,
    textSize.toJS,
    btnText.toJS,
    btnActive.toJS,
    secretViewActive.toJS,
  );

  @override
  int GuiColorPicker(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    StructPointer<ColorD> color,
  ) => _wasm.GuiColorPicker(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    color.toJS,
  );

  @override
  int GuiColorPanel(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    StructPointer<ColorD> color,
  ) => _wasm.GuiColorPanel(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    color.toJS,
  );

  @override
  int GuiColorBarAlpha(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RFloat> alpha,
  ) => _wasm.GuiColorBarAlpha(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    alpha.toJS,
  );

  @override
  int GuiColorBarHue(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    MemoryPointer<RFloat> value,
  ) => _wasm.GuiColorBarHue(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    value.toJS,
  );

  @override
  int GuiColorPickerHSV(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    StructPointer<Vector3D> colorHsv,
  ) => _wasm.GuiColorPickerHSV(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    colorHsv.toJS,
  );

  @override
  int GuiColorPanelHSV(
    RectangleD bounds,
    MemoryPointer<RChar> text,
    StructPointer<Vector3D> colorHsv,
  ) => _wasm.GuiColorPanelHSV(
    rl.Temp.Rectangle$.Ref1(bounds).toJS,
    text.toJS,
    colorHsv.toJS,
  );
}