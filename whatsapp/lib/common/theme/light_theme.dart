import 'package:flutter/material.dart';
import 'package:whatsapp/common/utils/colors_common.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    scaffoldBackgroundColor: ColorsCommon.backgroundLight,
    colorScheme: base.colorScheme.copyWith(
      background: ColorsCommon.backgroundLight,
    ),
  );
}
