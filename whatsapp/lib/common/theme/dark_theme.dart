import 'package:flutter/material.dart';
import 'package:whatsapp/common/utils/colors_common.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    scaffoldBackgroundColor: ColorsCommon.backgroundDark,
    colorScheme: base.colorScheme.copyWith(
      background: ColorsCommon.backgroundDark,
    ),
  );
}
