part of '../../raylib_dartified_web.dart';

class RaylibGuiD extends RaylibGuiModuleBase<
  Raylib,
  
  // types
  ColorD,
  FontD,
  GlyphInfoD,
  ImageD,
  MatrixD,
  QuaternionD,
  RectangleD,
  TextureD,
  Vector2D,
  Vector3D,
  Vector4D
  
> {

  RaylibGuiD(super.rl);

  @override
  void GuiEnable() => run(
    () => RaylibDebugLabels.GuiEnable(),
    () => rl.Gui.GuiEnable.run,
  );

  @override
  void GuiDisable() => run(
    () => RaylibDebugLabels.GuiDisable(),
    () => rl.Gui.GuiDisable.run,
  );

  @override
  void GuiLock() => run(
    () => RaylibDebugLabels.GuiLock(),
    () => rl.Gui.GuiLock.run,
  );

  @override
  void GuiUnlock() => run(
    () => RaylibDebugLabels.GuiUnlock(),
    () => rl.Gui.GuiUnlock.run,
  );

  @override
  bool GuiIsLocked() => run(
    () => RaylibDebugLabels.GuiIsLocked(),
    () => rl.Gui.GuiIsLocked.run.toBool(),
  );

  @override
  void GuiSetAlpha(
    num alpha,
  ) => run(
    () => RaylibDebugLabels.GuiSetAlpha(alpha),
    () => rl.Gui.GuiSetAlpha.run1(
      alpha.toJS,
    ),
  );

  @override
  void GuiSetState(
    GuiState state,
  ) => run(
    () => RaylibDebugLabels.GuiSetState(state),
    () => rl.Gui.GuiSetState.run1(state.value.toJS),
  );

  @override
  int GuiGetState() => run(
    () => RaylibDebugLabels.GuiGetState(),
    () => rl.Gui.GuiGetState.run.toInt(),
  );

  @override
  void GuiSetFont(
    FontD font,
  ) => run(
    () => RaylibDebugLabels.GuiSetFont(font),
    () => rl.Gui.GuiSetFont.run1(
      rl.Temp.Font$.Ref1(font).toJS,
    ),
  );

  @override
  FontD GuiGetFont() => run(
    () => RaylibDebugLabels.GuiGetFont(),
    () => rl.Temp.Font$.RefCapture(
      RaylibCaptureIds.GuiGetFont(),
      (p) => rl.Gui.GuiGetFont.run1(
        p.toJS,
      ),
    ),
  );

  @override
  void GuiSetStyle(
    GuiControl control,
    GuiProperty property,
    num value,
  ) => run(
    () => RaylibDebugLabels.GuiSetStyle(control, property, value),
    () => rl.Gui.GuiSetStyle.run3(
      control.value.toJS,
      property.value.toJS,
      value.toJS,
    ),
  );

  @override
  int GuiGetStyle(
    GuiControl control,
    GuiProperty property,
  ) => run(
    () => RaylibDebugLabels.GuiGetStyle(control, property),
    () => rl.Gui.GuiGetStyle.run2(
      control.value.toJS,
      property.value.toJS,
    ).toInt(),
  );

  @override
  void GuiLoadStyle(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.GuiLoadStyle(fileName),
    () => rl.Gui.GuiLoadStyle.run1(
      fileName.toJS,
    ),
  );

  @override
  void GuiLoadStyleDefault() => run(
    () => RaylibDebugLabels.GuiLoadStyleDefault(),
    () => rl.Gui.GuiLoadStyleDefault.run,
  );

  @override
  void GuiEnableTooltip() => run(
    () => RaylibDebugLabels.GuiEnableTooltip(),
    () => rl.Gui.GuiEnableTooltip.run,
  );

  @override
  void GuiDisableTooltip() => run(
    () => RaylibDebugLabels.GuiDisableTooltip(),
    () => rl.Gui.GuiDisableTooltip.run,
  );

  @override
  void GuiSetTooltip(
    String? tooltip,
  ) => run(
    () => RaylibDebugLabels.GuiSetTooltip(tooltip),
    () => rl.Gui.GuiSetTooltip.run1(
      tooltip?.toJS,
    ),
  );

  @override
  String GuiIconText(
    GuiIconName iconId,
    String? text,
  ) => run(
    () => RaylibDebugLabels.GuiIconText(iconId, text),
    () {
      final iconTextPtr = rl.Gui.GuiIconText.run2(
        iconId.value.toJS,
        text?.toJS,
      ).toInt();
      return WasmStringPointer(iconTextPtr).ref;
    },
  );

  @override
  void GuiSetIconScale(
    num scale,
  ) => run(
    () => RaylibDebugLabels.GuiSetIconScale(scale),
    () => rl.Gui.GuiSetIconScale.run1(scale.toJS),
  );

  @override
  List<int> GuiGetIcons() => run(
    () => RaylibDebugLabels.GuiGetIcons(),
    () {
      final iconsPtr = rl.Gui.GuiGetIcons.run.toInt();
      return WasmUint32Pointer(iconsPtr).readArray(RAYGUI_ICON_MAX_ICONS*RAYGUI_ICON_DATA_ELEMENTS);
    },
  );

  @override
  List<String> GuiLoadIcons(
    String fileName,
    bool loadIconsName,
  ) => run(
    () => RaylibDebugLabels.GuiLoadIcons(fileName, loadIconsName),
    () {
      final valuesPtr = rl.Gui.GuiLoadIcons.run2(
        fileName.toJS,
        loadIconsName.toJS,
      ).toInt();
      if (!loadIconsName || valuesPtr == 0) return [];

      final bytes = Uint8List.fromList(rl.CoreD.LoadFileData(fileName));
      if (bytes.length < 10) return [];

      // read iconCount from file header (2 bytes short at offset 8)
      final iconCount = ByteData.sublistView(bytes).getInt16(8, Endian.little);

      final icons = WasmStringPointerPointer(valuesPtr).readStrings(iconCount);
      WasmMemory.free(valuesPtr);
      return icons;
    },
  );

  @override
  void GuiDrawIcon(
    GuiIconName iconId,
    num posX,
    num posY,
    num pixelSize,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.GuiDrawIcon(iconId, posX, posY, pixelSize, color),
    () => rl.Gui.GuiDrawIcon.run5(
      iconId.value.toJS,
      posX.toJS,
      posY.toJS,
      pixelSize.toJS,
      rl.Temp.Color$.Ref1(color).toJS,
    ),
  );

  @override
  int GuiGetTextWidth(
    String? text,
  ) => run(
    () => RaylibDebugLabels.GuiGetTextWidth(text),
    () => rl.Gui.GuiGetTextWidth.run1(
      text?.toJS, 
    ).toInt(),
  );

  @override
  int GuiWindowBox(
    RectangleD bounds,
    String? title,
  ) => run(
    () => RaylibDebugLabels.GuiWindowBox(bounds, title),
    () => rl.Gui.GuiWindowBox.run2(
      rl.Temp.Rectangle$.Ref1(bounds).toJS,
      title?.toJS,
    ).toInt(),
  );

  @override
  int GuiGroupBox(
    RectangleD bounds,
    String? text,
  ) => run(
    () => RaylibDebugLabels.GuiGroupBox(bounds, text),
    () => rl.Gui.GuiGroupBox.run2(
      rl.Temp.Rectangle$.Ref1(bounds).toJS,
      text?.toJS,
    ).toInt(),
  );

  @override
  int GuiLine(
    RectangleD bounds,
    String? text,
  ) => run(
    () => RaylibDebugLabels.GuiLine(bounds, text),
    () => rl.Gui.GuiLine.run2(
      rl.Temp.Rectangle$.Ref1(bounds).toJS,
      text?.toJS,
    ).toInt(),
  );

  @override
  int GuiPanel(
    RectangleD bounds,
    String? text,
  ) => run(
    () => RaylibDebugLabels.GuiPanel(bounds, text),
    () => rl.Gui.GuiPanel.run2(
      rl.Temp.Rectangle$.Ref1(bounds).toJS,
      text?.toJS,
    ).toInt(),
  );

  @override
  (int tab, int active) GuiTabBar(
    RectangleD bounds,
    List<String> text,
  ) => run(
    () => RaylibDebugLabels.GuiTabBar(bounds, text),
    () {
      final activePtr = rl.Temp.Int32$.Ref1();
      final currentTabClosingRequested = rl.Gui.GuiTabBar.run4(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        rl.Temp.String$.Array(text).toJS,
        text.length.toJS,
        activePtr.toJS,
      ).toInt();
      return (currentTabClosingRequested, activePtr.value);
    },
  );

  @override
  int GuiScrollPanel(
    RectangleD bounds,
    String? text,
    RectangleD content,
    Vector2D scroll,
    [RectangleD? view]
  ) => run(
    () => RaylibDebugLabels.GuiScrollPanel(bounds, text, content, scroll, view),
    () => rl.Temp.Vector2$.RefUpdate1(scroll,
      (ps) => rl.Temp.Rectangle$.RefUpdate1(view,
        (pv) => rl.Gui.GuiScrollPanel.run5(
          rl.Temp.Rectangle$.Ref2(bounds).toJS,
          text?.toJS,
          rl.Temp.Rectangle$.Ref3(content).toJS,
          ps.toJS,
          pv.toJS,
        ).toInt(),
      ),
    ),
  );

  @override
  int GuiLabel(
    RectangleD bounds,
    String? text,
  ) => run(
    () => RaylibDebugLabels.GuiLabel(bounds, text),
    () => rl.Gui.GuiLabel.run2(
      rl.Temp.Rectangle$.Ref1(bounds).toJS,
      text?.toJS,
    ).toInt(),
  );

  @override
  int GuiButton(
    RectangleD bounds,
    String? text,
  ) => run(
    () => RaylibDebugLabels.GuiButton(bounds, text),
    () => rl.Gui.GuiButton.run2(
      rl.Temp.Rectangle$.Ref1(bounds).toJS,
      text?.toJS,
    ).toInt(),
  );

  @override
  int GuiLabelButton(
    RectangleD bounds,
    String? text,
  ) => run(
    () => RaylibDebugLabels.GuiLabelButton(bounds, text),
    () => rl.Gui.GuiLabelButton.run2(
      rl.Temp.Rectangle$.Ref1(bounds).toJS,
      text?.toJS,
    ).toInt(),
  );

  @override
  (int result, bool active) GuiToggle(
    RectangleD bounds,
    String? text,
    bool active,
  ) => run(
    () => RaylibDebugLabels.GuiToggle(bounds, text, active),
    () {
      final valuePtr = rl.Temp.Bool$.Ref1(active);
      final result = rl.Gui.GuiToggle.run3(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        text?.toJS,
        valuePtr.toJS,
      ).toInt();
      return (result, valuePtr.value);
    },
  );

  @override
  (int result, int active) GuiToggleGroup(
    RectangleD bounds,
    String? text,
    num active,
  ) => run(
    () => RaylibDebugLabels.GuiToggleGroup(bounds, text, active),
    () {
      final valuePtr = rl.Temp.Int32$.Ref1(active.toInt());
      final result = rl.Gui.GuiToggleGroup.run3(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        text?.toJS,
        valuePtr.toJS,
      ).toInt();
      return (result, valuePtr.value);
    },
  );

  @override
  (int result, int active) GuiToggleSlider(
    RectangleD bounds,
    String? text,
    num active,
  ) => run(
    () => RaylibDebugLabels.GuiToggleSlider(bounds, text, active),
    () {
      final valuePtr = rl.Temp.Int32$.Ref1(active.toInt());
      final result = rl.Gui.GuiToggleSlider.run3(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        text?.toJS,
        valuePtr.toJS,
      ).toInt();
      return (result, valuePtr.value);
    },
  );

  @override
  (int result, bool checked) GuiCheckBox(
    RectangleD bounds,
    String? text,
    bool checked,
  ) => run(
    () => RaylibDebugLabels.GuiCheckBox(bounds, text, checked),
    () {
      final valuePtr = rl.Temp.Bool$.Ref1(checked);
      final result = rl.Gui.GuiCheckBox.run3(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        text?.toJS,
        valuePtr.toJS,
      ).toInt();
      return (result, valuePtr.value);
    },
  );

  @override
  (int result, int active) GuiComboBox(
    RectangleD bounds,
    String? text,
    num active,
  ) => run(
    () => RaylibDebugLabels.GuiComboBox(bounds, text, active),
    () {
      final valuePtr = rl.Temp.Int32$.Ref1(active.toInt());
      final result = rl.Gui.GuiComboBox.run3(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        text?.toJS,
        valuePtr.toJS,
      ).toInt();
      return (result, valuePtr.value);
    },
  );

  @override
  (int result, int active) GuiDropdownBox(
    RectangleD bounds,
    String? text,
    num active,
    bool editMode,
  ) => run(
    () => RaylibDebugLabels.GuiDropdownBox(bounds, text, active, editMode),
    () {
      final valuePtr = rl.Temp.Int32$.Ref1(active.toInt());
      final result = rl.Gui.GuiDropdownBox.run4(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        text?.toJS,
        valuePtr.toJS,
        editMode.toJS,
      ).toInt();
      return (result, valuePtr.value);
    },
  );

  @override
  (int result, int value) GuiSpinner(
    RectangleD bounds,
    String? text,
    num value,
    num minValue,
    num maxValue,
    bool editMode,
  ) => run(
    () => RaylibDebugLabels.GuiSpinner(bounds, text, value, minValue, maxValue, editMode),
    () {
      final valuePtr = rl.Temp.Int32$.Ref1(value.toInt());
      final result = rl.Gui.GuiSpinner.run6(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        text?.toJS,
        valuePtr.toJS,
        minValue.toJS,
        maxValue.toJS,
        editMode.toJS,
      ).toInt();
      return (result, valuePtr.value);
    },
  );

  @override
  (int result, int value) GuiValueBox(
    RectangleD bounds,
    String? text,
    num value,
    num minValue,
    num maxValue,
    bool editMode,
  ) => run(
    () => RaylibDebugLabels.GuiValueBox(bounds, text, value, minValue, maxValue, editMode),
    () {
      final valuePtr = rl.Temp.Int32$.Ref1(value.toInt());
      final result = rl.Gui.GuiValueBox.run6(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        text?.toJS,
        valuePtr.toJS,
        minValue.toJS,
        maxValue.toJS,
        editMode.toJS,
      ).toInt();
      return (result, valuePtr.value);
    },
  );

  @override
  (int result, double value) GuiValueBoxFloat(
    RectangleD bounds,
    String? text,
    String textValue,
    num value,
    bool editMode,
  ) => run(
    () => RaylibDebugLabels.GuiValueBoxFloat(bounds, text, textValue, value, editMode),
    () {
      final valuePtr = rl.Temp.Float32$.Ref1(value.toDouble());
      final result = rl.Gui.GuiValueBoxFloat.run5(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        text?.toJS,
        textValue.toJS,
        valuePtr.toJS,
        editMode.toJS,
      ).toInt();
      return (result, valuePtr.value);
    },
  );

  @override
  (int result, String value) GuiTextBox(
    RectangleD bounds,
    String? text,
    num textSize,
    bool editMode,
  ) => run(
    () => RaylibDebugLabels.GuiTextBox(bounds, text, textSize, editMode),
    () {
      final valuePtr = rl.Temp.String$.Ref1(text ?? '', textSize.toInt());
      final result = rl.Gui.GuiTextBox.run4(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        valuePtr.toJS,
        textSize.toJS,
        editMode.toJS,
      );
      return (result.toInt(), valuePtr.value);
    },
  );

  @override
  (int result, double value) GuiSlider(
    RectangleD bounds,
    String? textLeft,
    String? textRight,
    num value,
    num minValue,
    num maxValue,
  ) => run(
    () => RaylibDebugLabels.GuiSlider(bounds, textLeft, textRight, value, minValue, maxValue),
    () {
      final valuePtr = rl.Temp.Float32$.Ref1(value.toDouble());
      final result = rl.Gui.GuiSlider.run6(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        textLeft?.toJS,
        textRight?.toJS,
        valuePtr.toJS,
        minValue.toJS,
        maxValue.toJS,
      ).toInt();
      return (result, valuePtr.value);
    },
  );

  @override
  (int result, double value) GuiSliderBar(
    RectangleD bounds,
    String? textLeft,
    String? textRight,
    num value,
    num minValue,
    num maxValue,
  ) => run(
    () => RaylibDebugLabels.GuiSliderBar(bounds, textLeft, textRight, value, minValue, maxValue),
    () {
      final valuePtr = rl.Temp.Float32$.Ref1(value.toDouble());
      final result = rl.Gui.GuiSliderBar.run6(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        textLeft?.toJS,
        textRight?.toJS,
        valuePtr.toJS,
        minValue.toJS,
        maxValue.toJS,
      ).toInt();
      return (result, valuePtr.value);
    },
  );

  @override
  (int result, double value) GuiProgressBar(
    RectangleD bounds,
    String? textLeft,
    String? textRight,
    num value,
    num minValue,
    num maxValue,
  ) => run(
    () => RaylibDebugLabels.GuiProgressBar(bounds, textLeft, textRight, value, minValue, maxValue),
    () {
      final valuePtr = rl.Temp.Float32$.Ref1(value.toDouble());
      final result = rl.Gui.GuiProgressBar.run6(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        textLeft?.toJS,
        textRight?.toJS,
        valuePtr.toJS,
        minValue.toJS,
        maxValue.toJS,
      ).toInt();
      return (result, valuePtr.value);
    },
  );

  @override
  int GuiStatusBar(
    RectangleD bounds,
    String? text,
  ) => run(
    () => RaylibDebugLabels.GuiStatusBar(bounds, text),
    () => rl.Gui.GuiStatusBar.run2(
      rl.Temp.Rectangle$.Ref1(bounds).toJS,
      text?.toJS,
    ).toInt(),
  );

  @override
  int GuiDummyRec(
    RectangleD bounds,
    String? text,
  ) => run(
    () => RaylibDebugLabels.GuiDummyRec(bounds, text),
    () => rl.Gui.GuiDummyRec.run2(
      rl.Temp.Rectangle$.Ref1(bounds).toJS,
      text?.toJS,
    ).toInt(),
  );

  @override
  int GuiGrid(
    RectangleD bounds,
    num spacing,
    num subdivs,
    [Vector2D? mouseCell]
  ) => run(
    () => RaylibDebugLabels.GuiGrid(bounds, spacing, subdivs, mouseCell),
    () => rl.Temp.Vector2$.RefUpdate1(mouseCell,
      (pv) => rl.Gui.GuiGrid.run5(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        0.toJS, // `text`, it's not used at all
        spacing.toJS,
        subdivs.toJS,
        pv.toJS,
      ).toInt(),
    ),
  );

  @override
  (int result, int? scrollIndex, int? active) GuiListView(
    RectangleD bounds,
    String? text, {
      int? scrollIndex,
      int? active,
    }
  ) => run(
    () => RaylibDebugLabels.GuiListView(bounds, text, scrollIndex: scrollIndex, active: active),
    () {
      final scrollIndexPtr = rl.Temp.Int32$.RefOrNull1(scrollIndex);
      final activePtr = rl.Temp.Int32$.RefOrNull2(active);
      final result = rl.Gui.GuiListView.run4(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        text?.toJS,
        scrollIndexPtr.toJS,
        activePtr.toJS,
      ).toInt();
      return (
        result,
        scrollIndex == null ? null : scrollIndexPtr.value,
        active == null ? null : activePtr.value,
      );
    },
  );

  @override
  (int result, int? scrollIndex, int? active, int? focus) GuiListViewEx(
    RectangleD bounds,
    List<String>? text, {
      int? scrollIndex,
      int? active,
      int? focus,
    }
  ) => run(
    () => RaylibDebugLabels.GuiListViewEx(bounds, text, scrollIndex: scrollIndex, active: active, focus: focus),
    () {
      final scrollIndexPtr = rl.Temp.Int32$.RefOrNull1(scrollIndex);
      final activePtr = rl.Temp.Int32$.RefOrNull2(active);
      final focusPtr = rl.Temp.Int32$.RefOrNull3(focus);
      final result = rl.Gui.GuiListViewEx.run6(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        (text == null ? 0 : rl.Temp.String$.Array(text).address).toJS,
        (text?.length ?? 0).toJS,
        scrollIndexPtr.toJS,
        activePtr.toJS,
        focusPtr.toJS,
      ).toInt();
      return (
        result,
        scrollIndex == null ? null : scrollIndexPtr.value,
        active == null ? null : activePtr.value,
        focus == null ? null : focusPtr.value,
      );
    },
  );

  @override
  int GuiMessageBox(
    RectangleD bounds,
    String? title,
    String message,
    String buttons,
  ) => run(
    () => RaylibDebugLabels.GuiMessageBox(bounds, title, message, buttons),
    () => rl.Gui.GuiMessageBox.run4(
      rl.Temp.Rectangle$.Ref1(bounds).toJS,
      title?.toJS,
      message.toJS,
      buttons.toJS,
    ).toInt(),
  );

  @override
  (int result, String value, bool? secretViewActive) GuiTextInputBox(
    RectangleD bounds,
    String? title,
    String? message,
    String buttons,
    String? text,
    num textMaxSize,
    bool? secretViewActive,
  ) => run(
    () => RaylibDebugLabels.GuiTextInputBox(bounds, title, message, buttons, text, textMaxSize, secretViewActive),
    () {
      final valuePtr = rl.Temp.String$.Ref1(text, textMaxSize.toInt());
      final secretViewActivePtr = rl.Temp.Bool$.RefOrNull1(secretViewActive);
      final result = rl.Gui.GuiTextInputBox.run7(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        title?.toJS,
        message?.toJS,
        buttons.toJS,
        valuePtr.toJS,
        textMaxSize.toJS,
        secretViewActivePtr.toJS,
      ).toInt();
      return (result, valuePtr.value, secretViewActive == null ? null : secretViewActivePtr.value);
    },
  );

  @override
  (int result, ColorD color) GuiColorPicker(
    RectangleD bounds,
    ColorD? color,
  ) => run(
    () => RaylibDebugLabels.GuiColorPicker(bounds, color),
    () {
      final valuePtr = rl.Temp.Color$.Ref1(color);
      final result = rl.Gui.GuiColorPicker.run3(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        0.toJS, // `text`, it's not used at all
        valuePtr.toJS,
      ).toInt();
      return (result, valuePtr.value);
    },
  );

  @override
  (int result, ColorD color) GuiColorPanel(
    RectangleD bounds,
    ColorD color,
  ) => run(
    () => RaylibDebugLabels.GuiColorPanel(bounds, color),
    () {
      final valuePtr = rl.Temp.Color$.Ref1(color);
      final result = rl.Gui.GuiColorPanel.run3(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        0.toJS, // `text`, it's not used at all
        valuePtr.toJS,
      ).toInt();
      return (result, valuePtr.ref);
    },
  );

  @override
  (int result, double alpha) GuiColorBarAlpha(
    RectangleD bounds,
    num alpha,
  ) => run(
    () => RaylibDebugLabels.GuiColorBarAlpha(bounds, alpha),
    () {
      final valuePtr = rl.Temp.Float32$.Ref1(alpha.toDouble());
      final result = rl.Gui.GuiColorBarAlpha.run3(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        0.toJS, // `text`, it's not used at all
        valuePtr.toJS,
      ).toInt();
      return (result, valuePtr.ref);
    },
  );

  @override
  (int result, double value) GuiColorBarHue(
    RectangleD bounds,
    num value,
  ) => run(
    () => RaylibDebugLabels.GuiColorBarHue(bounds, value),
    () {
      final valuePtr = rl.Temp.Float32$.Ref1(value.toDouble());
      final result = rl.Gui.GuiColorBarHue.run3(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        0.toJS, // `text`, it's not used at all
        valuePtr.toJS,
      ).toInt();
      return (result, valuePtr.value);
    },
  );

  @override
  (int result, Vector3D hsv) GuiColorPickerHSV(
    RectangleD bounds,
    [Vector3D? colorHsv]
  ) => run(
    () => RaylibDebugLabels.GuiColorPickerHSV(bounds, colorHsv),
    () {
      final valuePtr = rl.Temp.Vector3$.Ref1(colorHsv);
      final result = rl.Gui.GuiColorPickerHSV.run3(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        0.toJS, // `text`, it's not used at all
        valuePtr.toJS,
      ).toInt();
      return (result, valuePtr.value);
    },
  );

  @override
  (int result, Vector3D hsv) GuiColorPanelHSV(
    RectangleD bounds,
    [Vector3D? colorHsv]
  ) => run(
    () => RaylibDebugLabels.GuiColorPanelHSV(bounds, colorHsv),
    () {
      final valuePtr = rl.Temp.Vector3$.Ref1(colorHsv);
      final result = rl.Gui.GuiColorPanelHSV.run3(
        rl.Temp.Rectangle$.Ref1(bounds).toJS,
        0.toJS, // `text`, it's not used at all
        valuePtr.toJS,
      ).toInt();
      return (result, valuePtr.value);
    },
  );
}