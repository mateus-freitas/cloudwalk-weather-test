import 'package:flutter/material.dart';
import 'package:weather_test/presentation/core/components/buttons/app_button/app_button.dart';
import 'package:weather_test/presentation/core/helpers/constants.dart';

class MessageDialog extends StatelessWidget {
  final String message;

  const MessageDialog({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(Margin.xxs),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text(message),
          const SizedBox(height: Margin.xxs),
          AppButton(
              type: ButtonType.primary,
              title: 'Ok',
              onPressed: () => Navigator.of(context).pop())
        ]),
      ),
    );
  }
}
