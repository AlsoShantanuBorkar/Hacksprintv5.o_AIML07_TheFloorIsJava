import 'package:flutter/material.dart';
import 'package:hacksprint_flutter/presentation/common/theme/color.dart';

TextStyle _getTextStyle(double size) => TextStyle(
      color: Color(0xFF6C727F),
      fontSize: size,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      height: 1.50,
    );
TextStyle ts10 = _getTextStyle(10);
TextStyle ts12 = _getTextStyle(12);
TextStyle ts14 = _getTextStyle(14);
TextStyle ts16 = _getTextStyle(16);
TextStyle ts18 = _getTextStyle(18);
TextStyle ts20 = _getTextStyle(20);
TextStyle ts24 = _getTextStyle(24);
TextStyle ts27 = _getTextStyle(27);
TextStyle ts30 = _getTextStyle(30);

/// `FontWeight` extenstion for `TextStyle`
extension TextStylesOnWeight on TextStyle {
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get xBold => copyWith(fontWeight: FontWeight.w900);
}

/// 'Color` extenstion for `TextStyle`
extension TextStylesOnColor on TextStyle {
  TextStyle get primary => copyWith(color: AppColors.blue);
  TextStyle get button => copyWith(color: AppColors.buttonText);
  TextStyle get blue => copyWith(color: AppColors.blue);
  TextStyle get orange => copyWith(color: AppColors.orange);
  TextStyle get light => copyWith(color: AppColors.light);
  TextStyle get white => copyWith(color: Colors.white);
  TextStyle get dark => copyWith(color: AppColors.dark);
  TextStyle get error => copyWith(color: AlertColors.error);
  TextStyle get success => copyWith(color: AlertColors.success);
}
