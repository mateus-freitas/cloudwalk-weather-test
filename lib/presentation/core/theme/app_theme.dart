import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_test/presentation/core/components/buttons/app_button/app_button_style_builder.dart';
import 'package:weather_test/presentation/core/helpers/constants.dart';
import 'package:weather_test/presentation/core/theme/app_colors.dart';

ThemeData get darkTheme {
  final TextTheme textTheme =
      isAppleDevice ? Typography.whiteCupertino : Typography.whiteMountainView;
  return ThemeData.dark().copyWith(
      primaryColor: AppColors.primaryLight,
      textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.white,
          selectionColor: Colors.white.withOpacity(0.3),
          selectionHandleColor: Colors.white),
      scaffoldBackgroundColor: Colors.black,
      cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
        primaryColor: AppColors.primaryLight,
        primaryContrastingColor: AppColors.primaryDark,
        barBackgroundColor: AppColors.neutral20,
        brightness: Brightness.dark,
        textTheme: CupertinoTextThemeData(
            tabLabelTextStyle: TextStyle(color: Colors.white)),
        scaffoldBackgroundColor: Colors.black,
      ),
      focusColor: AppColors.neutral20,
      hoverColor: AppColors.neutral20,
      splashColor: Colors.white.withOpacity(0.16),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: AppButtonStyleBuilder(forDark: true).primary),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: AppButtonStyleBuilder(forDark: true).secondary),
      textButtonTheme:
          TextButtonThemeData(style: AppButtonStyleBuilder(forDark: true).text),
      textTheme: _appTextThemeFrom(textTheme),
      appBarTheme: const AppBarTheme(
          elevation: 0.0, backgroundColor: AppColors.neutral10));
}

TextTheme _appTextThemeFrom(TextTheme theme, {bool isDark = true}) {
  final baseStyle = TextStyle(color: isDark ? Colors.white : Colors.black);
  return theme.copyWith(
      headline1: baseStyle.copyWith(
          fontSize: isDesktop ? 64 : 48,
          height: 1.5,
          fontWeight: FontWeight.w700),
      headline2: baseStyle.copyWith(
          fontSize: isDesktop ? 48 : 32,
          height: 1.5,
          fontWeight: FontWeight.w700),
      headline3: baseStyle.copyWith(
          fontSize: isDesktop ? 32 : 24,
          height: 1.5,
          fontWeight: FontWeight.w700),
      headline4: baseStyle.copyWith(
          fontSize: isDesktop ? 24 : 20,
          height: 1.5,
          fontWeight: FontWeight.w700),
      caption: baseStyle.copyWith(
          fontSize: isDesktop ? 14 : 10,
          height: 1.5,
          fontWeight: FontWeight.w400),
      bodyText1: baseStyle.copyWith(
          fontSize: isDesktop ? 20 : 16,
          height: 1.5,
          fontWeight: FontWeight.w400),
      bodyText2: baseStyle.copyWith(
          fontSize: isDesktop ? 16 : 12,
          height: 1.5,
          fontWeight: FontWeight.w400));
}
