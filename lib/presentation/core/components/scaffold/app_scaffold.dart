import 'package:flutter/material.dart';
import 'package:weather_test/presentation/core/components/scaffold/app_bar.dart';
import 'package:weather_test/presentation/core/helpers/constants.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  final Color? backgroundColor;
  final EdgeInsets? bodyPadding;
  final bool showNavBar;
  final bool automaticallyImplyLeading;
  final Color? navColor;
  final bool isModal;
  final String? title;
  final TextStyle? titleStyle;
  final Widget? trailing;
  const AppScaffold({
    Key? key,
    required this.body,
    this.backgroundColor,
    this.bodyPadding,
    this.trailing,
    this.showNavBar = true,
    this.navColor,
    this.automaticallyImplyLeading = true,
    this.isModal = false,
    this.title,
    this.titleStyle,
  })  : assert(!showNavBar || title != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
          child: Container(
              padding: bodyPadding,
              constraints: const BoxConstraints(maxWidth: contentMaxWidth),
              child: body),
        )),
        backgroundColor: backgroundColor,
        appBar: showNavBar
            ? getAppBar(
                context,
                Text(
                  title!,
                  style: titleStyle,
                ),
                trailing: trailing)
            : null);
  }
}
