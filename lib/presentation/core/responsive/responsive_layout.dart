import 'package:flutter/material.dart';
import 'package:weather_test/presentation/core/helpers/constants.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget large;
  final Widget? medium;
  final Widget? small;
  const ResponsiveLayout(
      {Key? key, required this.large, this.medium, this.small})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;
      if (maxWidth >= largeScreenSize) return large;
      if (maxWidth >= mediumScreenSize) return medium ?? large;
      return small ?? large;
    });
  }
}
