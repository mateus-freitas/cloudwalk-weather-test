import 'package:weather_test/core/error/exceptions.dart';

abstract class IConcertCityLocalRepository {
  /// Gets the list of cities from a local JSON file
  ///
  /// Throws a [CacheException] for all possible errors
  Future<List<ConcertCityDto>> getConcertCities();
}
