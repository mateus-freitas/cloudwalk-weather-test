import 'package:flutter/foundation.dart';

const double contentMaxWidth = 940;
const double appBarHeight = 75;

const double largeScreenSize = 1366;
const double mediumScreenSize = 668;
const double smallScreenSize = 360;

bool get isAppleDevice {
  return defaultTargetPlatform == TargetPlatform.iOS ||
      defaultTargetPlatform == TargetPlatform.macOS;
}

bool get isDesktop {
  return defaultTargetPlatform == TargetPlatform.windows ||
      defaultTargetPlatform == TargetPlatform.macOS ||
      defaultTargetPlatform == TargetPlatform.linux;
}

class Margin {
  static const double quarck = 4.0;
  static const double nano = 8.0;
  static const double xxs = 12.0;
  static const double xs = 16.0;
  static const double sm = 24.0;
  static const double md = 32.0;
  static const double lg = 40.0;
  static const double xl = 48.0;
  static const double xxl = 56.0;
  static const double huge = 64.0;
  static const double giant = 80.0;
}
