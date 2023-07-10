import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';
import 'package:whatsapp/common/utils/colors_common.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    scaffoldBackgroundColor: ColorsCommon.backgroundDark,
    colorScheme: base.colorScheme.copyWith(
      background: ColorsCommon.backgroundDark,
    ),
    extensions: [
      CustomThemeExtension.darkMode,
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsCommon.greenDark,
        foregroundColor: ColorsCommon.backgroundDark,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: ColorsCommon.greyBackground,
      modalBackgroundColor: ColorsCommon.greyBackground,
    ),
  );
}
