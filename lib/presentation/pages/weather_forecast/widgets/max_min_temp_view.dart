import 'package:flutter/material.dart';
import 'package:weather_test/domain/weather/value_objects.dart';
import 'package:weather_test/presentation/core/helpers/constants.dart';

class MaxMinTempView extends StatelessWidget {
  final Temperature max;
  final Temperature min;

  const MaxMinTempView({Key? key, required this.max, required this.min})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.arrow_upward, color: Colors.red),
        const SizedBox(width: Margin.quarck),
        Text(max.displayableCelsius),
        const SizedBox(width: Margin.xxs),
        const Icon(
          Icons.arrow_downward,
          color: Colors.blue,
        ),
        const SizedBox(width: Margin.quarck),
        Text(min.displayableCelsius)
      ],
    );
  }
}
