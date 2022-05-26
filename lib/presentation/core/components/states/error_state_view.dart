import 'package:flutter/material.dart';
import 'package:weather_test/presentation/core/components/buttons/app_button/app_button.dart';
import 'package:weather_test/presentation/core/helpers/constants.dart';
import 'package:weather_test/presentation/core/localization/app_localizations.dart';

class ErrorStateView extends StatelessWidget {
  final String errorMessage;
  final VoidCallback? onTryAgain;

  const ErrorStateView({Key? key, required this.errorMessage, this.onTryAgain})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              errorMessage,
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Margin.xs),
            AppButton(
              type: ButtonType.primary,
              title: localize(context).tryAgain,
              onPressed: onTryAgain,
            ),
          ],
        ),
      ),
    );
  }
}
