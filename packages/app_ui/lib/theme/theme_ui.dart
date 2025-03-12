import 'package:app_ui/app_ui.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

const radius = 6.0;

abstract final class ThemeUI {
  static ThemeData light = FlexThemeData.light(
    colorScheme: lightColorScheme,
    subThemesData: FlexSubThemesData(
      /// button radius
      filledButtonRadius: radius,
      elevatedButtonElevation: radius,
      outlinedButtonRadius: radius,
      textButtonRadius: radius,

      /// input border type
      inputDecoratorBorderType: FlexInputBorderType.outline,
    ),
  );
  static ThemeData dark = FlexThemeData.dark(
    colorScheme: darkColorScheme,
    subThemesData: FlexSubThemesData(
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
