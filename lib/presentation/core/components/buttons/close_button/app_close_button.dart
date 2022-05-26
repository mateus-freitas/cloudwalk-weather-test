import 'package:flutter/material.dart';

class AppCloseButton extends StatelessWidget {
  final double size;
  final VoidCallback? onPressed;
  final bool isEnabled;
  final EdgeInsets padding;

  const AppCloseButton._(
      {Key? key,
      required this.size,
      required this.onPressed,
      required this.isEnabled,
      required this.padding})
      : super(key: key);

  const AppCloseButton.small(
      {Key? key, VoidCallback? onPressed, bool isEnabled = true})
      : this._(
            key: key,
            size: 10,
            onPressed: onPressed,
            isEnabled: isEnabled,
            padding: const EdgeInsets.all(4));
  const AppCloseButton.medium(
      {Key? key, VoidCallback? onPressed, bool isEnabled = true})
      : this._(
            key: key,
            size: 16,
            onPressed: onPressed,
            isEnabled: isEnabled,
            padding: const EdgeInsets.all(8));
  const AppCloseButton.large(
      {Key? key, VoidCallback? onPressed, bool isEnabled = true})
      : this._(
            key: key,
            size: 22,
            onPressed: onPressed,
            isEnabled: isEnabled,
            padding: const EdgeInsets.all(12));

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: isEnabled
            ? () {
                if (onPressed != null) {
                  onPressed!();
                } else {
                  Navigator.of(context).pop();
                }
              }
            : null,
        splashRadius: size,
        padding: padding,
        iconSize: size,
        icon: const Icon(Icons.close));
  }
}
