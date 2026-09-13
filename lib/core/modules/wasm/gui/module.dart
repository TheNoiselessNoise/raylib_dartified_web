part of '../../../raylib_dartified_web.dart';

class RaylibGui extends RaylibModuleWasm with RaylibGuiModuleExtras<Raylib> {
  /// Enable gui controls (global state)
  late final JSFunction GuiEnable;
  /// Disable gui controls (global state)
  late final JSFunction GuiDisable;
  /// Lock gui controls (global state)
  late final JSFunction GuiLock;
  /// Unlock gui controls (global state)
  late final JSFunction GuiUnlock;
  /// Check if gui is locked (global state)
  late final JSFunction GuiIsLocked;
  /// Set gui controls alpha (global state), alpha goes from 0.0 to 1.0
  late final JSFunction GuiSetAlpha;
  /// Set gui state (global state)
  late final JSFunction GuiSetState;
  /// Get gui state (global state)
  late final JSFunction GuiGetState;
  /// Set gui custom font (global state)
  late final JSFunction GuiSetFont;
  /// Get gui custom font (global state)
  late final JSFunction GuiGetFont;
  /// Set one style property
  late final JSFunction GuiSetStyle;
  /// Get one style property
  late final JSFunction GuiGetStyle;
  /// Load style file over global style variable (.rgs)
  late final JSFunction GuiLoadStyle;
  /// Load style from memory (binary only)
  late final JSFunction GuiLoadStyleFromMemory;
  /// Load style default over global style
  late final JSFunction GuiLoadStyleDefault;
  /// Enable gui tooltips (global state)
  late final JSFunction GuiEnableTooltip;
  /// Disable gui tooltips (global state)
  late final JSFunction GuiDisableTooltip;
  /// Set tooltip string
  late final JSFunction GuiSetTooltip;
  /// Get text with icon id prepended (if supported)
  late final JSFunction GuiIconText;
  /// Set default icon drawing size
  late final JSFunction GuiSetIconScale;
  /// Get raygui icons data
  late final JSFunction GuiGetIcons;
  /// Load raygui icons file (.rgi) into internal icons data
  late final JSFunction GuiLoadIcons;
  /// Load raygui icons file (.rgi) from memory into internal icons data
  late final JSFunction GuiLoadIconsFromMemory;
  /// Draw icon using pixel size at specified position
  late final JSFunction GuiDrawIcon;
  /// Get text width considering gui style and icon size (if required)
  late final JSFunction GuiGetTextWidth;
  /// Window Box control, shows a window that can be closed
  late final JSFunction GuiWindowBox;
  /// Group Box control with text name
  late final JSFunction GuiGroupBox;
  /// Line separator control, could contain text
  late final JSFunction GuiLine;
  /// Panel control, useful to group controls
  late final JSFunction GuiPanel;
  /// Scroll Panel control
  late final JSFunction GuiScrollPanel;
  /// Label control
  late final JSFunction GuiLabel;
  /// Button control, returns true when clicked
  late final JSFunction GuiButton;
  /// Label button control, returns true when clicked
  late final JSFunction GuiLabelButton;
  /// Toggle Button control
  late final JSFunction GuiToggle;
  /// Toggle Group control
  late final JSFunction GuiToggleGroup;
  /// Toggle Slider control
  late final JSFunction GuiToggleSlider;
  /// Check Box control, returns true when active
  late final JSFunction GuiCheckBox;
  /// Combo Box control
  late final JSFunction GuiComboBox;
  /// Dropdown Box control
  late final JSFunction GuiDropdownBox;
  /// Spinner control
  late final JSFunction GuiSpinner;
  /// Value Box control, updates input text with numbers
  late final JSFunction GuiValueBox;
  /// Value box control for float values
  late final JSFunction GuiValueBoxFloat;
  /// Text Box control, updates input text
  late final JSFunction GuiTextBox;
  /// Slider control
  late final JSFunction GuiSlider;
  /// Slider Bar control
  late final JSFunction GuiSliderBar;
  /// Progress Bar control
  late final JSFunction GuiProgressBar;
  /// Status Bar control, shows info text
  late final JSFunction GuiStatusBar;
  /// Dummy control for placeholders
  late final JSFunction GuiDummyRec;
  /// Grid control
  late final JSFunction GuiGrid;
  /// List View control
  late final JSFunction GuiListView;
  /// List View control, using text entries list and returning focus entry
  late final JSFunction GuiListViewEx;
  /// Tab Bar control
  late final JSFunction GuiTabBar;
  /// Tab Bar control, using text entries list and returning focus entry
  late final JSFunction GuiTabBarEx;
  /// Message Box control, displays a message
  late final JSFunction GuiMessageBox;
  /// Text Input Box control, ask for text, supports secret
  late final JSFunction GuiTextInputBox;
  /// Color Picker control, includes Color bar controls
  late final JSFunction GuiColorPicker;
  /// Color Panel control
  late final JSFunction GuiColorPanel;
  /// Color Bar Alpha control
  late final JSFunction GuiColorBarAlpha;
  /// Color Bar Hue control
  late final JSFunction GuiColorBarHue;
  /// Color Picker control, using Hue-Saturation-Value color data, includes Color bar controls
  late final JSFunction GuiColorPickerHSV;
  /// Color Panel control, using Hue-Saturation-Value color data
  late final JSFunction GuiColorPanelHSV;

  RaylibGui(super.rl) {
    GuiEnable              = _module.dwrap('GuiEnable',              n0, rv);
    GuiDisable             = _module.dwrap('GuiDisable',             n0, rv);
    GuiLock                = _module.dwrap('GuiLock',                n0, rv);
    GuiUnlock              = _module.dwrap('GuiUnlock',              n0, rv);
    GuiIsLocked            = _module.dwrap('GuiIsLocked',            n0, rn);
    GuiSetAlpha            = _module.dwrap('GuiSetAlpha',            n1, rv);
    GuiSetState            = _module.dwrap('GuiSetState',            n1, rv);
    GuiGetState            = _module.dwrap('GuiGetState',            n0, rn);
    GuiSetFont             = _module.dwrap('GuiSetFont',             n1, rv);
    GuiGetFont             = _module.dwrap('GuiGetFont',             n1, rv);
    GuiSetStyle            = _module.dwrap('GuiSetStyle',            n3, rv);
    GuiGetStyle            = _module.dwrap('GuiGetStyle',            n2, rn);
    GuiLoadStyle           = _module.dwrap('GuiLoadStyle',           n1, rv);
    GuiLoadStyleFromMemory = _module.dwrap('GuiLoadStyleFromMemory', n2, rv);
    GuiLoadStyleDefault    = _module.dwrap('GuiLoadStyleDefault',    n0, rv);
    GuiEnableTooltip       = _module.dwrap('GuiEnableTooltip',       n0, rv);
    GuiDisableTooltip      = _module.dwrap('GuiDisableTooltip',      n0, rv);
    GuiSetTooltip          = _module.dwrap('GuiSetTooltip',          n1, rv);
    GuiIconText            = _module.dwrap('GuiIconText',            n2, rn);
    GuiSetIconScale        = _module.dwrap('GuiSetIconScale',        n1, rv);
    GuiGetIcons            = _module.dwrap('GuiGetIcons',            n0, rn);
    GuiLoadIcons           = _module.dwrap('GuiLoadIcons',           n2, rn);
    GuiLoadIconsFromMemory = _module.dwrap('GuiLoadIconsFromMemory', n3, rn);
    GuiDrawIcon            = _module.dwrap('GuiDrawIcon',            n5, rv);
    GuiGetTextWidth        = _module.dwrap('GuiGetTextWidth',        n1, rn);
    GuiWindowBox           = _module.dwrap('GuiWindowBox',           n2, rv);
    GuiGroupBox            = _module.dwrap('GuiGroupBox',            n2, rn);
    GuiLine                = _module.dwrap('GuiLine',                n2, rn);
    GuiPanel               = _module.dwrap('GuiPanel',               n2, rn);
    GuiScrollPanel         = _module.dwrap('GuiScrollPanel',         n5, rn);
    GuiLabel               = _module.dwrap('GuiLabel',               n2, rn);
    GuiButton              = _module.dwrap('GuiButton',              n2, rn);
    GuiLabelButton         = _module.dwrap('GuiLabelButton',         n2, rn);
    GuiToggle              = _module.dwrap('GuiToggle',              n3, rn);
    GuiToggleGroup         = _module.dwrap('GuiToggleGroup',         n3, rn);
    GuiToggleSlider        = _module.dwrap('GuiToggleSlider',        n3, rn);
    GuiCheckBox            = _module.dwrap('GuiCheckBox',            n3, rn);
    GuiComboBox            = _module.dwrap('GuiComboBox',            n3, rn);
    GuiDropdownBox         = _module.dwrap('GuiDropdownBox',         n4, rn);
    GuiSpinner             = _module.dwrap('GuiSpinner',             n6, rn);
    GuiValueBox            = _module.dwrap('GuiValueBox',            n6, rn);
    GuiValueBoxFloat       = _module.dwrap('GuiValueBoxFloat',       n5, rn);
    GuiTextBox             = _module.dwrap('GuiTextBox',             n4, rn);
    GuiSlider              = _module.dwrap('GuiSlider',              n6, rn);
    GuiSliderBar           = _module.dwrap('GuiSliderBar',           n6, rv);
    GuiProgressBar         = _module.dwrap('GuiProgressBar',         n6, rn);
    GuiStatusBar           = _module.dwrap('GuiStatusBar',           n2, rn);
    GuiDummyRec            = _module.dwrap('GuiDummyRec',            n2, rn);
    GuiGrid                = _module.dwrap('GuiGrid',                n5, rn);
    GuiListView            = _module.dwrap('GuiListView',            n4, rn);
    GuiListViewEx          = _module.dwrap('GuiListViewEx',          n6, rn);
    GuiTabBar              = _module.dwrap('GuiTabBar',              n4, rn);
    GuiTabBarEx            = _module.dwrap('GuiTabBarEx',            n6, rn);
    GuiMessageBox          = _module.dwrap('GuiMessageBox',          n5, rn);
    GuiTextInputBox        = _module.dwrap('GuiTextInputBox',        n8, rn);
    GuiColorPicker         = _module.dwrap('GuiColorPicker',         n3, rn);
    GuiColorPanel          = _module.dwrap('GuiColorPanel',          n3, rn);
    GuiColorBarAlpha       = _module.dwrap('GuiColorBarAlpha',       n3, rn);
    GuiColorBarHue         = _module.dwrap('GuiColorBarHue',         n3, rn);
    GuiColorPickerHSV      = _module.dwrap('GuiColorPickerHSV',      n3, rn);
    GuiColorPanelHSV       = _module.dwrap('GuiColorPanelHSV',       n3, rn);
  }
}