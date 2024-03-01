import 'package:flutter/material.dart';

class AppRadius {
  AppRadius._();
  static double small = 8.0;
  static double medium = 10.0;
  static double large = 16.0;
  static double xLarge = 20.0;
  static double x25 = 25.0;
  static double x40 = 40.0;
  static double x50 = 50.0;
  static double x100 = 100.0;
}

class AppBorderRadius {
  AppBorderRadius._();

  /// small = 8.0
  static BorderRadius small = BorderRadius.circular(AppRadius.small);

  /// medium = 10.0
  static BorderRadius medium = BorderRadius.circular(AppRadius.medium);

  /// large = 16.0
  static BorderRadius large = BorderRadius.circular(AppRadius.large);

  /// xLarge = 20.0
  static BorderRadius xLarge = BorderRadius.circular(AppRadius.xLarge);

  /// x25 = 25.0
  static BorderRadius x25 = BorderRadius.circular(AppRadius.x25);

  /// x40 = 40.0
  static BorderRadius x40 = BorderRadius.circular(AppRadius.x40);

  /// x50 = 50.0
  static BorderRadius x50 = BorderRadius.circular(AppRadius.x50);

  /// x100 = 100.0
  static BorderRadius x100 = BorderRadius.circular(AppRadius.x100);
}
