import 'package:app_ui/app_ui.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

/// Light theme color scheme
const radius = 6.0;

/// Theme UI
abstract final class ThemeUI {
  /// Light theme color scheme
  static ThemeData light = FlexThemeData.light(
    colorScheme: lightColorScheme,
    subThemesData: const FlexSubThemesData(
      /// button radius
      filledButtonRadius: radius,
      elevatedButtonElevation: radius,
      outlinedButtonRadius: radius,
      textButtonRadius: radius,

      /// input border type
      inputDecoratorBorderType: FlexInputBorderType.outline,
    ),
  );

  /// Dark theme color scheme
  static ThemeData dark = FlexThemeData.dark(
    colorScheme: darkColorScheme,
    subThemesData: const FlexSubThemesData(
      /// button radius
      filledButtonRadius: radius,
      elevatedButtonElevation: radius,
      outlinedButtonRadius: radius,
      textButtonRadius: radius,

      /// input border type
      inputDecoratorBorderType: FlexInputBorderType.outline,
    ),
  );
}
