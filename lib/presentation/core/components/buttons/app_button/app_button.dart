import 'package:flutter/material.dart';
import 'package:weather_test/presentation/core/localization/app_localizations.dart';

enum ButtonType { primary, secondary, text }

class AppButton extends StatelessWidget {
  final ButtonType type;
  final VoidCallback? onPressed;
  final bool isLoading;
  final IconData? iconData;
  final String title;
  final String? semanticsLabel;

  const AppButton({
    Key? key,
    required this.type,
    this.onPressed,
    this.isLoading = false,
    this.iconData,
    required this.title,
    this.semanticsLabel,
  }) : super(key: key);

  VoidCallback? get _onPressedAction {
    if (isLoading) return () {};
    return onPressed;
  }

  Widget? get _icon => iconData != null ? Icon(iconData, size: 19) : null;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ButtonType.primary:
        final buttonStyle = Theme.of(context).elevatedButtonTheme.style;
        if (_icon != null && !isLoading) {
          return ElevatedButton.icon(
            onPressed: _onPressedAction,
            icon: _icon!,
            label: _ButtonChild(
              title: title,
              buttonStyle: buttonStyle,
              isLoading: isLoading,
              semanticsLabel: semanticsLabel,
            ),
          );
        }
        return ElevatedButton(
          onPressed: _onPressedAction,
          child: _ButtonChild(
            title: title,
            buttonStyle: buttonStyle,
            isLoading: isLoading,
            semanticsLabel: semanticsLabel,
          ),
        );
      case ButtonType.secondary:
        final buttonStyle = Theme.of(context).outlinedButtonTheme.style;
        if (_icon != null && !isLoading) {
          return OutlinedButton.icon(
            onPressed: _onPressedAction,
            icon: _icon!,
            label: _ButtonChild(
              title: title,
              buttonStyle: buttonStyle,
              isLoading: isLoading,
              semanticsLabel: semanticsLabel,
            ),
          );
        }
        return OutlinedButton(
          onPressed: _onPressedAction,
          child: _ButtonChild(
            title: title,
            buttonStyle: buttonStyle,
            isLoading: isLoading,
            semanticsLabel: semanticsLabel,
          ),
        );
      case ButtonType.text:
        final buttonStyle = Theme.of(context).textButtonTheme.style;
        if (_icon != null && !isLoading) {
          return TextButton.icon(
            onPressed: _onPressedAction,
            icon: _icon!,
            label: _ButtonChild(
              title: title,
              buttonStyle: buttonStyle,
              isLoading: isLoading,
              semanticsLabel: semanticsLabel,
            ),
          );
        }
        return TextButton(
          onPressed: _onPressedAction,
          child: _ButtonChild(
            title: title,
            buttonStyle: buttonStyle,
            isLoading: isLoading,
            semanticsLabel: semanticsLabel,
          ),
        );
    }
  }
}

class _ButtonChild extends StatelessWidget {
  final String title;
  final bool isLoading;
  final ButtonStyle? buttonStyle;
  final String? semanticsLabel;

  const _ButtonChild(
      {Key? key,
      required this.title,
      required this.buttonStyle,
      required this.isLoading,
      this.semanticsLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Semantics(
        label: localize(context)
            .loadingButtonSemantics
            .replaceFirst('X', semanticsLabel ?? title),
        button: true,
        child: const SizedBox(
          height: 20,
          child: CircularProgressIndicator.adaptive(
            strokeWidth: 2,
          ),
        ),
      );
    }
    return Text(
      title,
      semanticsLabel: semanticsLabel,
    );
  }
}
