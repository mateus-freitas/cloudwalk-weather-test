import 'package:injectable/injectable.dart';
import 'package:weather_test/domain/concert_city/concert_city.dart';
import 'package:weather_test/core/error/cache_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_test/domain/concert_city/i_concert_city_repository.dart';
import 'package:weather_test/infrastructure/concert_cities/concert_city_local_data_source.dart';
import 'package:weather_test/infrastructure/concert_cities/dto/concert_city_dto.dart';

@Injectable(as: IConcertCityRepository)
class ConcertCityRepositoryImpl implements IConcertCityRepository {
  final IConcertCityLocalDataSource _localDataSource;

  const ConcertCityRepositoryImpl(this._localDataSource);

  @override
  Future<Either<CacheFailure, List<ConcertCity>>> getConcertCities() async {
    try {
      final citiesDtos = await _localDataSource.getConcertCities();
      return Right(citiesDtos.map((e) => e.toDomain()).toList());
    } catch (e) {
      return const Left(CacheFailure.unknownError(code: -1));
    }
  }
}
