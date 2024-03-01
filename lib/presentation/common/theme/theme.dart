import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hacksprint_flutter/presentation/common/theme/color.dart';
import 'package:hacksprint_flutter/presentation/common/theme/radius.dart';
import 'package:hacksprint_flutter/presentation/common/theme/text_styles.dart';

class AppTheme {
  AppTheme._();

  static ThemeData LightTheme = ThemeData(
    primaryColor: AppColors.appbarBg,
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    textTheme: _textTheme,
    shadowColor: Colors.black.withOpacity(0.1),
    canvasColor: Colors.transparent,
    appBarTheme: _appBarTheme,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
    ),
    inputDecorationTheme: _inputDecorationTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    cardTheme: _cardTheme,
    dividerTheme: DividerThemeData(
      color: AppColors.regular.withOpacity(0.5),
      thickness: 1,
      space: 0,
    ),
  );
  static final ElevatedButtonThemeData _elevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: white,
      backgroundColor: AppColors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: AppBorderRadius.small,
      ),
    ),
  );
  static final CardTheme _cardTheme = CardTheme(
    color: white,
    shadowColor: Colors.black.withOpacity(0.1),
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: AppBorderRadius.large,
    ),
  );
  static final InputDecorationTheme _inputDecorationTheme =
      InputDecorationTheme(
    fillColor: white,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.inputBorder,
      ),
      borderRadius: AppBorderRadius.xLarge,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: AlertColors.error,
      ),
      borderRadius: AppBorderRadius.xLarge,
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: AlertColors.error,
      ),
      borderRadius: AppBorderRadius.xLarge,
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.inactive,
      ),
      borderRadius: AppBorderRadius.xLarge,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.boxBorder,
      ),
      borderRadius: AppBorderRadius.xLarge,
    ),
    filled: true,
    // contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
    border: OutlineInputBorder(
      borderRadius: AppBorderRadius.xLarge,
      borderSide: BorderSide.none,
    ),
    outlineBorder: BorderSide(
      color: AppColors.boxBorder,
    ),
  );
  static final TextTheme _textTheme = TextTheme(
    displayLarge: ts30.bold,
    displayMedium: ts24.bold.primary,
    displaySmall: ts20.bold,
    headlineMedium: ts18.semiBold.primary,
    headlineSmall: ts16.bold,
    headlineLarge: ts30.bold.primary,
    titleLarge: ts30.bold.primary,
    titleMedium: ts18.bold.primary,
    bodyLarge: ts16.regular,
    bodyMedium: ts14.regular,
  );

  static final AppBarTheme _appBarTheme = AppBarTheme(
    iconTheme: const IconThemeData(color: white),
    actionsIconTheme: const IconThemeData(color: white),
    backgroundColor: AppColors.appbarBg,
    foregroundColor: white,
    elevation: 0,
    toolbarHeight: 0.095 *
        MediaQueryData.fromWindow(
          WidgetsBinding.instance.window,
        ).size.height,
    centerTitle: true,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: AppColors.primary,
      statusBarIconBrightness: Brightness.light,
    ),
  );
}
