import 'package:flutter/material.dart';

const Color white = Colors.white;
const Color black = Colors.black;

class AppColors {
  const AppColors._();
  static const Color primary = Color(0xFFF5F7FF);
  static Color appbarBg = Color(0xFFF5F7FF);
  static Color orange = const Color(0xFFFF7A00);
  static Color blue = const Color(0xFF4285F4);
  static Color green = const Color(0xFF34A853);
  static Color red = const Color(0xFFEA4335);
  static Color yellow = const Color(0xFFFBBC05);
  // static Color scaffoldBackground = const Color(0xFFEDE9FF);
  static Color scaffoldBackground = const Color(0xFFF5F7FF);
  static Color scaffoldVariant1 = const Color(0xEFF2E7F8);
  static Color inactive = const Color(0xE8F2E7F8);

  /// Soft colors
  static Color primarySoft = const Color(0x8052057B);
  static Color greenSoft = const Color(0x8034A853);
  static Color redSoft = const Color(0x80EA4335);
  static Color yellowSoft = const Color(0x80FBBC05);

  /// Border/outline colors
  static Color inputBorder = const Color(0xFF6E58DA);
  static Color greenBorder = const Color(0xFF06BF0D);
  static Color selected = const Color(0xFFA6F8A9);
  static Color boxBorder = const Color(0xFFB3B3B3);
  static Color boxBorderNew = const Color(0xFFFFA6A6);

  /// Shadow colors
  static Color shadow = const Color(0xFFF6E7E1);

  /// Text colors
  static Color dark = const Color(0xFF333333);
  static Color regular = const Color(0xFF505050);
  static Color light = const Color(0xFF707070);

  // Others
  static Color lightBlue = const Color(0xFFE1F3F6);
  static Color neutral = const Color(0xFFEDEDED);

  // button colors
  static Color buttonText = const Color(0xFF13085E);

  static Color disabledSwatch1 = const Color(0xab1b1b1b);
  static Color disabledSwatch2 = const Color(0xffa8a8a8);
  static Color disabledBorder1 = const Color(0xffCCCCCC);

  static Color activeSlider = const Color(0xff4285f4);
  static Color activeToggleForeGround = const Color(0xff34A583);
  static Color activeToggleBackGround = const Color(0xffC2E5cB);
}

class AlertColors {
  AlertColors._();
  static Color error = const Color(0xFFEA4335);
  static Color success = const Color(0xFF34A853);
  static Color warning = const Color(0xFFFBBC05);
}

class CardColors {
  CardColors._();
  static Color primarySwatch1 = const Color(0xffFE82DB);
  static Color primarySwatch2 = const Color(0xff68E4FF);
  static Color primaryBorder1 = const Color(0x79fe82db);

  static Color secondarySwatch1 = const Color(0xff52057B);
  static Color secondarySwatch2 = const Color(0xff68E4FF);
  static Color secondaryBorder1 = const Color(0x3ACBB4D7);

  static Color disabledCardSwatch1 = const Color(0xab1b1b1b);
  static Color disabledCardSwatch2 = const Color(0xffCCCCCC);
  static Color disabledCardBorder1 = const Color(0xffCCCCCC);
}
