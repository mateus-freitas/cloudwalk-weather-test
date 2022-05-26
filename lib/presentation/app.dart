import 'package:flutter/material.dart';
import 'package:weather_test/presentation/core/router/router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:weather_test/presentation/core/router/routes.dart';
import 'package:weather_test/presentation/core/theme/app_theme.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'app',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: AppRoute.home.name,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('pt', ''),
      ],
      theme: darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
