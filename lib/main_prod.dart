import 'package:flutter/material.dart';
import 'package:weather_test/core/injection/injection.dart';
import 'package:weather_test/infrastructure/core/constants.dart';
import 'package:weather_test/presentation/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureInjection(Env.prod);
  await Future.wait([setEnvironment(Env.prod)]);

  runApp(const WeatherApp());
}
