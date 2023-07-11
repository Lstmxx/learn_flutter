import 'package:flutter/material.dart';
import 'package:whatsapp/common/utils/colors_common.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static const lightMode = CustomThemeExtension(
    circleImageColor: Color(0xFF25D366),
    greyColor: ColorsCommon.greyLight,
    blueColor: ColorsCommon.blueLight,
    langBtnBgColor: Color(0xFFF7F8FA),
    langBtnHighLightColor: Color(0xffe8e8ed),
    authAppBarTextColor: ColorsCommon.greenLight,
  );

  static const darkMode = CustomThemeExtension(
    circleImageColor: ColorsCommon.greenDark,
    greyColor: ColorsCommon.greyDark,
    blueColor: ColorsCommon.blueDark,
    langBtnBgColor: Color(0xFF182229),
    langBtnHighLightColor: Color(0xff09141a),
    authAppBarTextColor: Color(0xffe9edef),
  );

  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgColor;
  final Color? langBtnHighLightColor;
  final Color? authAppBarTextColor;

  const CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langBtnBgColor,
    this.langBtnHighLightColor,
    this.authAppBarTextColor,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langBtnBgColor,
    Color? langBtnHighLightColor,
    Color? authAppBarTextColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBtnBgColor: langBtnBgColor ?? this.langBtnBgColor,
      langBtnHighLightColor:
          langBtnHighLightColor ?? this.langBtnHighLightColor,
      authAppBarTextColor: authAppBarTextColor ?? this.authAppBarTextColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langBtnBgColor: Color.lerp(langBtnBgColor, other.langBtnBgColor, t),
      authAppBarTextColor: Color.lerp(
        authAppBarTextColor,
        other.authAppBarTextColor,
        t,
      ),
      langBtnHighLightColor: Color.lerp(
        langBtnHighLightColor,
        other.langBtnHighLightColor,
        t,
      ),
    );
  }
}
