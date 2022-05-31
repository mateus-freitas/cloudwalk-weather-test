enum AppRoute {
  home,
}

extension AppRoutesExtension on AppRoute {
  String get name {
    switch (this) {
      case AppRoute.home:
        return '/';
    }
  }
}

class AppRoutesTransformer {
  final AppRoute route;

  AppRoutesTransformer(this.route);

  static AppRoute? routeFromString(String? name) {
    switch (name) {
      case '/':
        return AppRoute.home;
      default:
        return null;
    }
  }
}
