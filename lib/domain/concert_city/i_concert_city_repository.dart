import 'package:dartz/dartz.dart';
import 'package:weather_test/core/error/cache_failure.dart';
import 'package:weather_test/domain/concert_city/concert_city.dart';

abstract class IConcertCityRepository {
  Future<Either<CacheFailure, List<ConcertCity>>> getConcertCities();
}
