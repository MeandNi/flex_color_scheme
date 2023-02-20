import 'package:flutter/material.dart';

import '../../../shared/controllers/theme_controller.dart';
import '../../../shared/pages/page_examples.dart';
import '../panels/android_navigation_bar_settings/android_navigation_bar_settings.dart';
import '../panels/app_bar_settings/app_bar_settings.dart';
import '../panels/bottom_navigation_bar_settings/bottom_navigation_bar_settings.dart';
import '../panels/bottom_sheet_banner_snack_settings/bottom_sheet_banner_snack_settings.dart';
import '../panels/buttons_settings/buttons_settings.dart';
import '../panels/card_settings/card_settings.dart';
import '../panels/component_settings/component_settings.dart';
import '../panels/dialog_settings/dialog_settings.dart';
import '../panels/drawer_settings/drawer_settings.dart';
import '../panels/effective_colors/effective_colors.dart';
import '../panels/fab_chip_settings/fab_chip_settings.dart';
import '../panels/introduction/introduction_panel.dart';
import '../panels/list_tile_settings/list_tile_settings.dart';
import '../panels/material_panel/material_panel.dart';
import '../panels/menu_settings/menu_settings.dart';
import '../panels/navigation_bar_settings/navigation_bar_settings.dart';
import '../panels/navigation_rail_settings/navigation_rail_settings.dart';
import '../panels/seeded_color_scheme_settings/seeded_color_scheme_settings.dart';
import '../panels/slider_settings/slider_settings.dart';
import '../panels/surface_blend_settings/surface_blend_settings.dart';
import '../panels/switch_settings/switch_settings.dart';
import '../panels/tab_bar_settings/tab_bar_settings.dart';
import '../panels/text_field_settings/text_field_settings.dart';
import '../panels/text_theme_settings/primary_text_theme_settings.dart';
import '../panels/text_theme_settings/text_theme_settings.dart';
import '../panels/theme_code/theme_code.dart';
import '../panels/theme_colors_settings/theme_colors_settings.dart';
import '../panels/theme_simulator/theme_simulator.dart';
import '../panels/toggle_buttons_settings/toggle_buttons_settings.dart';
import '../panels/tooltip_icon_button_settings/tooltip_icon_button_avatar_dropdown_settings.dart';
import '../panels/widget_showcase/widget_showcase.dart';
import 'premade_designs/premade_designs_panel.dart';

/// Used to select which one of all the panels used in the Theme Playground
/// to show as content in grid and page builders.
class PanelContent extends StatelessWidget {
  const PanelContent(this.page, this.controller, {super.key});
  final int page;
  final ThemeController controller;

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      IntroductionPanel(controller),
      PremadeDesignsPanel(controller),
      ThemeColorsSettings(controller),
      SeededColorSchemeSettings(controller),
      SurfaceBlendSettings(controller),
      EffectiveColors(controller),
      ComponentSettings(controller),
      TextFieldSettings(controller),
      AppBarSettings(controller),
      TabBarSettings(controller),
      BottomNavigationBarSettings(controller),
      NavigationBarSettings(controller),
      NavigationRailSettings(controller),
      DrawerSettings(controller),
      ButtonsSettings(controller),
      ToggleButtonsSettings(controller),
      FabChipSettings(controller),
      MenuSettings(controller),
      TooltipIconButtonAvatarDropdownSettings(controller),
      SwitchesSettings(controller),
      SliderSettings(controller),
      ListTileSettings(controller),
      DialogSettings(controller),
      BottomSheetBannerSnackSettings(controller),
      CardSettings(controller),
      TextThemeSettings(controller),
      PrimaryTextThemeSettings(controller),
      ThemeSimulator(controller: controller),
      const WidgetShowcase(),
      PageExamples(controller: controller),
      const MaterialPanel(),
      AndroidNavigationBarSettings(controller),
      ThemeCode(controller),
    ].elementAt(page);
  }
}
