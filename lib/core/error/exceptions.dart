class OpenWeatherException implements Exception {
  final int? code;

  OpenWeatherException({this.code}) : super();
}

class CacheException implements Exception {}
