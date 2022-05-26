import 'package:flutter/material.dart';

abstract class AppColors {
  static const neutral10 = Color(0xFF1C1B1F);
  static const neutral20 = Color(0xFF313033);
  static const neutral30 = Color(0xFF484649);
  static const neutral40 = Color(0xFF605D62);
  static const neutral50 = Color(0xFF787579);
  static const neutral60 = Color(0xFF939094);
  static const neutral70 = Color(0xFFAEAAAE);
  static const neutral80 = Color(0xFFC9C5CA);
  static const neutral90 = Color(0xFFE6E1E5);
  static const neutral95 = Color(0xFFF4EFF4);
  static const neutral99 = Color(0xFFFFFBFE);

  static const success = Color(0xFF1FDE91);
  static const successLight = Color(0xFF85EFC4);
  static const successMedium = Color(0xFF1BC480);
  static const successDark = Color(0xFF108348);

  static const info = Color(0xFF5056FF);
  static const infoLight = Color(0xFF8084FF);
  static const infoMedium = Color(0xFF484DE5);
  static const infoDark = Color(0xFF4045CC);

  static const warning = Color(0xFFFB9B2A);
  static const warningLight = Color(0xFFFFC37C);
  static const warningMedium = Color(0xFFE08A26);
  static const warningDark = Color(0xFFAD6B1D);

  static const danger = Color(0xFFE54B4B);
  static const dangerLight = Color(0xFFFF8888);
  static const dangerMedium = Color(0xFFCC4343);
  static const dangerDark = Color(0xFFB23A3A);

  static const primary = Color.fromRGBO(86, 92, 232, 1);
  static const primaryLight = Color.fromARGB(255, 167, 170, 255);
  static const primaryDark = Color.fromARGB(255, 15, 19, 139);

  static const secondary = Color.fromRGBO(202, 203, 255, 1);
  static const secondaryDark = Color.fromRGBO(71, 71, 172, 1);

  static const grayBackground = Color.fromRGBO(236, 236, 236, 0.8);
  static const grayBackgroundDark = Color.fromRGBO(120, 120, 120, 1);
  static const dividerDark = Colors.black26;
  static const dividerLight = Colors.white38;

  static const neutral = Color(0xFF);

  static Color getColorForMovieScore(int score) {
    if (score > 70) return const Color.fromARGB(255, 3, 119, 12);
    if (score >= 50) return const Color.fromARGB(255, 212, 176, 0);
    return const Color.fromARGB(255, 126, 0, 0);
  }
}
