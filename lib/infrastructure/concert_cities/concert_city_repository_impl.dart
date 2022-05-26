import 'package:weather_test/domain/concert_city/concert_city.dart';
import 'package:weather_test/core/error/cache_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_test/domain/concert_city/i_concert_city_repository.dart';

class ConcertCityRepositoryImpl implements IConcertCityRepository {
  @override
  Future<Either<CacheFailure, List<ConcertCity>>> getConcertCities() {
    // TODO: implement getConcertCities
    throw UnimplementedError();
  }
}
