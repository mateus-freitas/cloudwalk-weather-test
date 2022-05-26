import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_test/presentation/core/helpers/constants.dart';
import 'package:weather_test/presentation/core/router/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  AppRoute? route = AppRoutesTransformer.routeFromString(settings.name);

  switch (route) {
    case AppRoute.home:
      return getPlatformPageRoute<void>(builder: (context) => Container());
    case AppRoute.favorites:
      return getPlatformPageRoute<void>(
          builder: (context) => Container(), settings: settings);
    default:
      return getPlatformPageRoute<void>(
          builder: (context) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ));
  }
}

PageRoute<T> getPlatformPageRoute<T>({
  required WidgetBuilder builder,
  RouteSettings? settings,
  bool maintainState = true,
  bool fullscreenDialog = false,
  String? iosTitle,
}) {
  if (isAppleDevice) {
    return CupertinoPageRoute<T>(
      builder: builder,
      settings: settings,
      maintainState: maintainState,
      fullscreenDialog: fullscreenDialog,
      title: iosTitle,
    );
  }
  return MaterialPageRoute<T>(
    builder: builder,
    settings: settings,
    maintainState: maintainState,
    fullscreenDialog: fullscreenDialog,
  );
}
