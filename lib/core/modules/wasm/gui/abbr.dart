import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibGui get _module => Raylib.instance.module();

/// See [RaylibGui.GuiEnable].
WF0<void> get GuiEnable => _module.GuiEnable;
/// See [RaylibGui.GuiDisable].
WF0<void> get GuiDisable => _module.GuiDisable;
/// See [RaylibGui.GuiLock].
WF0<void> get GuiLock => _module.GuiLock;
/// See [RaylibGui.GuiUnlock].
WF0<void> get GuiUnlock => _module.GuiUnlock;
/// See [RaylibGui.GuiIsLocked].
WF0<bool> get GuiIsLocked => _module.GuiIsLocked;
/// See [RaylibGui.GuiSetAlpha].
WF1<void> get GuiSetAlpha => _module.GuiSetAlpha;
/// See [RaylibGui.GuiSetState].
WF1<void> get GuiSetState => _module.GuiSetState;
/// See [RaylibGui.GuiGetState].
WF0<int> get GuiGetState => _module.GuiGetState;
/// See [RaylibGui.GuiSetFont].
WF1<void> get GuiSetFont => _module.GuiSetFont;
/// See [RaylibGui.GuiGetFont].
WF1<void> get GuiGetFont => _module.GuiGetFont;
/// See [RaylibGui.GuiSetStyle].
WF3<void> get GuiSetStyle => _module.GuiSetStyle;
/// See [RaylibGui.GuiGetStyle].
WF2<int> get GuiGetStyle => _module.GuiGetStyle;
/// See [RaylibGui.GuiLoadStyle].
WF1<void> get GuiLoadStyle => _module.GuiLoadStyle;
/// See [RaylibGui.GuiLoadStyleFromMemory].
WF2<void> get GuiLoadStyleFromMemory => _module.GuiLoadStyleFromMemory;
/// See [RaylibGui.GuiLoadStyleDefault].
WF0<void> get GuiLoadStyleDefault => _module.GuiLoadStyleDefault;
/// See [RaylibGui.GuiEnableTooltip].
WF0<void> get GuiEnableTooltip => _module.GuiEnableTooltip;
/// See [RaylibGui.GuiDisableTooltip].
WF0<void> get GuiDisableTooltip => _module.GuiDisableTooltip;
/// See [RaylibGui.GuiSetTooltip].
WF1<void> get GuiSetTooltip => _module.GuiSetTooltip;
/// See [RaylibGui.GuiIconText].
WF2<WasmMemoryPointer<RChar>> get GuiIconText => _module.GuiIconText;
/// See [RaylibGui.GuiSetIconScale].
WF1<void> get GuiSetIconScale => _module.GuiSetIconScale;
/// See [RaylibGui.GuiGetIcons].
WF0<WasmMemoryPointer<RUnsignedInt>> get GuiGetIcons => _module.GuiGetIcons;
/// See [RaylibGui.GuiLoadIcons].
WF2<WasmMemoryPointer<RPointer<RChar>>> get GuiLoadIcons => _module.GuiLoadIcons;
/// See [RaylibGui.GuiLoadIconsFromMemory].
WF3<WasmMemoryPointer<RPointer<RChar>>> get GuiLoadIconsFromMemory => _module.GuiLoadIconsFromMemory;
/// See [RaylibGui.GuiDrawIcon].
WF5<void> get GuiDrawIcon => _module.GuiDrawIcon;
/// See [RaylibGui.GuiGetTextWidth].
WF1<int> get GuiGetTextWidth => _module.GuiGetTextWidth;
/// See [RaylibGui.GuiWindowBox].
WF2<int> get GuiWindowBox => _module.GuiWindowBox;
/// See [RaylibGui.GuiGroupBox].
WF2<int> get GuiGroupBox => _module.GuiGroupBox;
/// See [RaylibGui.GuiLine].
WF2<int> get GuiLine => _module.GuiLine;
/// See [RaylibGui.GuiPanel].
WF2<int> get GuiPanel => _module.GuiPanel;
/// See [RaylibGui.GuiScrollPanel].
WF5<int> get GuiScrollPanel => _module.GuiScrollPanel;
/// See [RaylibGui.GuiLabel].
WF2<int> get GuiLabel => _module.GuiLabel;
/// See [RaylibGui.GuiButton].
WF2<int> get GuiButton => _module.GuiButton;
/// See [RaylibGui.GuiLabelButton].
WF2<int> get GuiLabelButton => _module.GuiLabelButton;
/// See [RaylibGui.GuiToggle].
WF3<int> get GuiToggle => _module.GuiToggle;
/// See [RaylibGui.GuiToggleGroup].
WF3<int> get GuiToggleGroup => _module.GuiToggleGroup;
/// See [RaylibGui.GuiToggleSlider].
WF3<int> get GuiToggleSlider => _module.GuiToggleSlider;
/// See [RaylibGui.GuiCheckBox].
WF3<int> get GuiCheckBox => _module.GuiCheckBox;
/// See [RaylibGui.GuiComboBox].
WF3<int> get GuiComboBox => _module.GuiComboBox;
/// See [RaylibGui.GuiDropdownBox].
WF4<int> get GuiDropdownBox => _module.GuiDropdownBox;
/// See [RaylibGui.GuiSpinner].
WF6<int> get GuiSpinner => _module.GuiSpinner;
/// See [RaylibGui.GuiValueBox].
WF6<int> get GuiValueBox => _module.GuiValueBox;
/// See [RaylibGui.GuiValueBoxFloat].
WF5<int> get GuiValueBoxFloat => _module.GuiValueBoxFloat;
/// See [RaylibGui.GuiTextBox].
WF4<int> get GuiTextBox => _module.GuiTextBox;
/// See [RaylibGui.GuiSlider].
WF6<int> get GuiSlider => _module.GuiSlider;
/// See [RaylibGui.GuiSliderBar].
WF6<int> get GuiSliderBar => _module.GuiSliderBar;
/// See [RaylibGui.GuiProgressBar].
WF6<int> get GuiProgressBar => _module.GuiProgressBar;
/// See [RaylibGui.GuiStatusBar].
WF2<int> get GuiStatusBar => _module.GuiStatusBar;
/// See [RaylibGui.GuiDummyRec].
WF2<int> get GuiDummyRec => _module.GuiDummyRec;
/// See [RaylibGui.GuiGrid].
WF5<int> get GuiGrid => _module.GuiGrid;
/// See [RaylibGui.GuiListView].
WF4<int> get GuiListView => _module.GuiListView;
/// See [RaylibGui.GuiListViewEx].
WF6<int> get GuiListViewEx => _module.GuiListViewEx;
/// See [RaylibGui.GuiTabBar].
WF4<int> get GuiTabBar => _module.GuiTabBar;
/// See [RaylibGui.GuiTabBarEx].
WF6<int> get GuiTabBarEx => _module.GuiTabBarEx;
/// See [RaylibGui.GuiMessageBox].
WF5<int> get GuiMessageBox => _module.GuiMessageBox;
/// See [RaylibGui.GuiTextInputBox].
WF8<int> get GuiTextInputBox => _module.GuiTextInputBox;
/// See [RaylibGui.GuiColorPicker].
WF3<int> get GuiColorPicker => _module.GuiColorPicker;
/// See [RaylibGui.GuiColorPanel].
WF3<int> get GuiColorPanel => _module.GuiColorPanel;
/// See [RaylibGui.GuiColorBarAlpha].
WF3<int> get GuiColorBarAlpha => _module.GuiColorBarAlpha;
/// See [RaylibGui.GuiColorBarHue].
WF3<int> get GuiColorBarHue => _module.GuiColorBarHue;
/// See [RaylibGui.GuiColorPickerHSV].
WF3<int> get GuiColorPickerHSV => _module.GuiColorPickerHSV;
/// See [RaylibGui.GuiColorPanelHSV].
WF3<int> get GuiColorPanelHSV => _module.GuiColorPanelHSV;