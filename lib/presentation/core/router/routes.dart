enum AppRoute {
  home,
  favorites,
}

extension AppRoutesExtension on AppRoute {
  String get name {
    switch (this) {
      case AppRoute.home:
        return '/';
      case AppRoute.favorites:
        return '/favorites';
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
      case '/favorites':
        return AppRoute.favorites;
      default:
        return null;
    }
  }
}
