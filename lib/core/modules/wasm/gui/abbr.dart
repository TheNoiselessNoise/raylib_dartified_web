import 'dart:js_interop';
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibGui get _module => Raylib.instance.module();

/// See [RaylibGui.GuiEnable].
JSFunction get GuiEnable => _module.GuiEnable;
/// See [RaylibGui.GuiDisable].
JSFunction get GuiDisable => _module.GuiDisable;
/// See [RaylibGui.GuiLock].
JSFunction get GuiLock => _module.GuiLock;
/// See [RaylibGui.GuiUnlock].
JSFunction get GuiUnlock => _module.GuiUnlock;
/// See [RaylibGui.GuiIsLocked].
JSFunction get GuiIsLocked => _module.GuiIsLocked;
/// See [RaylibGui.GuiSetAlpha].
JSFunction get GuiSetAlpha => _module.GuiSetAlpha;
/// See [RaylibGui.GuiSetState].
JSFunction get GuiSetState => _module.GuiSetState;
/// See [RaylibGui.GuiGetState].
JSFunction get GuiGetState => _module.GuiGetState;
/// See [RaylibGui.GuiSetFont].
JSFunction get GuiSetFont => _module.GuiSetFont;
/// See [RaylibGui.GuiGetFont].
JSFunction get GuiGetFont => _module.GuiGetFont;
/// See [RaylibGui.GuiSetStyle].
JSFunction get GuiSetStyle => _module.GuiSetStyle;
/// See [RaylibGui.GuiGetStyle].
JSFunction get GuiGetStyle => _module.GuiGetStyle;
/// See [RaylibGui.GuiLoadStyle].
JSFunction get GuiLoadStyle => _module.GuiLoadStyle;
/// See [RaylibGui.GuiLoadStyleFromMemory].
JSFunction get GuiLoadStyleFromMemory => _module.GuiLoadStyleFromMemory;
/// See [RaylibGui.GuiLoadStyleDefault].
JSFunction get GuiLoadStyleDefault => _module.GuiLoadStyleDefault;
/// See [RaylibGui.GuiEnableTooltip].
JSFunction get GuiEnableTooltip => _module.GuiEnableTooltip;
/// See [RaylibGui.GuiDisableTooltip].
JSFunction get GuiDisableTooltip => _module.GuiDisableTooltip;
/// See [RaylibGui.GuiSetTooltip].
JSFunction get GuiSetTooltip => _module.GuiSetTooltip;
/// See [RaylibGui.GuiIconText].
JSFunction get GuiIconText => _module.GuiIconText;
/// See [RaylibGui.GuiSetIconScale].
JSFunction get GuiSetIconScale => _module.GuiSetIconScale;
/// See [RaylibGui.GuiGetIcons].
JSFunction get GuiGetIcons => _module.GuiGetIcons;
/// See [RaylibGui.GuiLoadIcons].
JSFunction get GuiLoadIcons => _module.GuiLoadIcons;
/// See [RaylibGui.GuiLoadIconsFromMemory].
JSFunction get GuiLoadIconsFromMemory => _module.GuiLoadIconsFromMemory;
/// See [RaylibGui.GuiDrawIcon].
JSFunction get GuiDrawIcon => _module.GuiDrawIcon;
/// See [RaylibGui.GuiGetTextWidth].
JSFunction get GuiGetTextWidth => _module.GuiGetTextWidth;
/// See [RaylibGui.GuiWindowBox].
JSFunction get GuiWindowBox => _module.GuiWindowBox;
/// See [RaylibGui.GuiGroupBox].
JSFunction get GuiGroupBox => _module.GuiGroupBox;
/// See [RaylibGui.GuiLine].
JSFunction get GuiLine => _module.GuiLine;
/// See [RaylibGui.GuiPanel].
JSFunction get GuiPanel => _module.GuiPanel;
/// See [RaylibGui.GuiScrollPanel].
JSFunction get GuiScrollPanel => _module.GuiScrollPanel;
/// See [RaylibGui.GuiLabel].
JSFunction get GuiLabel => _module.GuiLabel;
/// See [RaylibGui.GuiButton].
JSFunction get GuiButton => _module.GuiButton;
/// See [RaylibGui.GuiLabelButton].
JSFunction get GuiLabelButton => _module.GuiLabelButton;
/// See [RaylibGui.GuiToggle].
JSFunction get GuiToggle => _module.GuiToggle;
/// See [RaylibGui.GuiToggleGroup].
JSFunction get GuiToggleGroup => _module.GuiToggleGroup;
/// See [RaylibGui.GuiToggleSlider].
JSFunction get GuiToggleSlider => _module.GuiToggleSlider;
/// See [RaylibGui.GuiCheckBox].
JSFunction get GuiCheckBox => _module.GuiCheckBox;
/// See [RaylibGui.GuiComboBox].
JSFunction get GuiComboBox => _module.GuiComboBox;
/// See [RaylibGui.GuiDropdownBox].
JSFunction get GuiDropdownBox => _module.GuiDropdownBox;
/// See [RaylibGui.GuiSpinner].
JSFunction get GuiSpinner => _module.GuiSpinner;
/// See [RaylibGui.GuiValueBox].
JSFunction get GuiValueBox => _module.GuiValueBox;
/// See [RaylibGui.GuiValueBoxFloat].
JSFunction get GuiValueBoxFloat => _module.GuiValueBoxFloat;
/// See [RaylibGui.GuiTextBox].
JSFunction get GuiTextBox => _module.GuiTextBox;
/// See [RaylibGui.GuiSlider].
JSFunction get GuiSlider => _module.GuiSlider;
/// See [RaylibGui.GuiSliderBar].
JSFunction get GuiSliderBar => _module.GuiSliderBar;
/// See [RaylibGui.GuiProgressBar].
JSFunction get GuiProgressBar => _module.GuiProgressBar;
/// See [RaylibGui.GuiStatusBar].
JSFunction get GuiStatusBar => _module.GuiStatusBar;
/// See [RaylibGui.GuiDummyRec].
JSFunction get GuiDummyRec => _module.GuiDummyRec;
/// See [RaylibGui.GuiGrid].
JSFunction get GuiGrid => _module.GuiGrid;
/// See [RaylibGui.GuiListView].
JSFunction get GuiListView => _module.GuiListView;
/// See [RaylibGui.GuiListViewEx].
JSFunction get GuiListViewEx => _module.GuiListViewEx;
/// See [RaylibGui.GuiTabBar].
JSFunction get GuiTabBar => _module.GuiTabBar;
/// See [RaylibGui.GuiTabBarEx].
JSFunction get GuiTabBarEx => _module.GuiTabBarEx;
/// See [RaylibGui.GuiMessageBox].
JSFunction get GuiMessageBox => _module.GuiMessageBox;
/// See [RaylibGui.GuiTextInputBox].
JSFunction get GuiTextInputBox => _module.GuiTextInputBox;
/// See [RaylibGui.GuiColorPicker].
JSFunction get GuiColorPicker => _module.GuiColorPicker;
/// See [RaylibGui.GuiColorPanel].
JSFunction get GuiColorPanel => _module.GuiColorPanel;
/// See [RaylibGui.GuiColorBarAlpha].
JSFunction get GuiColorBarAlpha => _module.GuiColorBarAlpha;
/// See [RaylibGui.GuiColorBarHue].
JSFunction get GuiColorBarHue => _module.GuiColorBarHue;
/// See [RaylibGui.GuiColorPickerHSV].
JSFunction get GuiColorPickerHSV => _module.GuiColorPickerHSV;
/// See [RaylibGui.GuiColorPanelHSV].
JSFunction get GuiColorPanelHSV => _module.GuiColorPanelHSV;