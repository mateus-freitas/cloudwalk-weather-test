import 'package:flutter/material.dart';
import 'package:weather_test/presentation/core/theme/app_colors.dart';

class AppButtonStyleBuilder {
  final bool forDark;

  AppButtonStyleBuilder({required this.forDark});

  MaterialStateProperty<OutlinedBorder> get _roundedShape =>
      MaterialStateProperty.all<OutlinedBorder>(const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))));

  MaterialStateProperty<EdgeInsetsGeometry> get _padding =>
      MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 16, vertical: 12));

  Color get _disabledForegroundColor =>
      forDark ? AppColors.neutral40 : AppColors.neutral70;
  Color get _disabledBackgroundColor =>
      forDark ? AppColors.neutral20 : AppColors.neutral90;

  MaterialStateProperty<Color> get _overlayColorForTransparentBackground =>
      MaterialStateProperty.all(forDark
          ? Colors.white.withOpacity(0.16)
          : Colors.black.withOpacity(0.08));

  MaterialStateProperty<Color> get _overlayColorForColoredBackground =>
      MaterialStateProperty.all(forDark
          ? Colors.black.withOpacity(0.08)
          : Colors.white.withOpacity(0.16));

  MaterialStateProperty<Color> get _darkForegroundColor =>
      MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return _disabledForegroundColor;
        }
        return forDark ? AppColors.primaryDark : Colors.black;
      });

  MaterialStateProperty<Color> get _whiteForegroundColor =>
      MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return _disabledForegroundColor;
        }
        return Colors.white;
      });

  MaterialStateProperty<Color> get _textForegroundColor =>
      MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return _disabledForegroundColor;
        }
        return forDark ? AppColors.primaryLight : AppColors.primaryDark;
      });

  MaterialStateProperty<TextStyle> get _textStyle =>
      MaterialStateProperty.all<TextStyle>(
          const TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w700));

  MaterialStateProperty<Color> get _primaryBackgroundColor =>
      MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return _disabledBackgroundColor;
        }
        if (states.contains(MaterialState.hovered) ||
            states.contains(MaterialState.pressed)) {
          return forDark ? AppColors.primary : AppColors.primaryDark;
        }
        return forDark ? AppColors.primaryLight : AppColors.primary;
      });

  MaterialStateProperty<Color> get _secondaryBackgroundColor =>
      MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return _disabledBackgroundColor;
        }
        if (states.contains(MaterialState.hovered) ||
            states.contains(MaterialState.pressed)) {
          return forDark ? AppColors.neutral20 : AppColors.neutral90;
        }
        return forDark ? AppColors.neutral10 : AppColors.neutral95;
      });

  MaterialStateProperty<Color> get _textBackgroundColor =>
      MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.hovered) ||
            states.contains(MaterialState.pressed)) {
          return forDark ? AppColors.primaryDark : AppColors.primaryLight;
        }
        return Colors.transparent;
      });

  ButtonStyle get primary => ButtonStyle(
      shape: _roundedShape,
      foregroundColor: forDark ? _darkForegroundColor : _whiteForegroundColor,
      backgroundColor: _primaryBackgroundColor,
      textStyle: _textStyle,
      overlayColor: _overlayColorForColoredBackground,
      padding: _padding,
      elevation: MaterialStateProperty.all<double>(0.0));

  ButtonStyle get secondary => ButtonStyle(
      shape: _roundedShape,
      padding: _padding,
      textStyle: _textStyle,
      overlayColor: _overlayColorForTransparentBackground,
      side: MaterialStateProperty.all(BorderSide.none),
      backgroundColor: _secondaryBackgroundColor,
      foregroundColor: forDark ? _whiteForegroundColor : _darkForegroundColor,
      elevation: MaterialStateProperty.all<double>(0.0));

  ButtonStyle get text => ButtonStyle(
      shape: _roundedShape,
      padding: _padding,
      textStyle: _textStyle,
      overlayColor: _overlayColorForTransparentBackground,
      backgroundColor: _textBackgroundColor,
      foregroundColor: _textForegroundColor,
      elevation: MaterialStateProperty.all<double>(0.0));
}
