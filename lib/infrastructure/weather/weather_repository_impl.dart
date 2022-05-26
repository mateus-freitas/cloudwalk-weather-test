import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_test/core/error/exceptions.dart';
import 'package:weather_test/core/error/open_weather_failure.dart';
import 'package:weather_test/domain/concert_city/concert_city.dart';
import 'package:weather_test/domain/weather/i_weather_repository.dart';
import 'package:weather_test/domain/weather/weather.dart';
import 'package:weather_test/infrastructure/weather/weather_dto.dart';
import 'package:weather_test/infrastructure/weather/weather_remote_data_source.dart';

@Injectable(as: IWeatherRepository)
class MovieInfoRepositoryImpl implements IWeatherRepository {
  final IWeatherRemoteDataSource _dataSource;

  MovieInfoRepositoryImpl(this._dataSource);

  @override
  Future<Either<OpenWeatherFailure, Weather>> getCurrentWeather(
      ConcertCity city, String? lang) async {
    try {
      final weatherDto = await _dataSource.getCurrentWeather(city, lang);
      return Right(weatherDto.toDomain());
    } on OpenWeatherException catch (e) {
      return Left(OpenWeatherFailure.unknownError(code: e.code));
    } catch (e) {
      return const Left(OpenWeatherFailure.unknownError(code: -1));
    }
  }
}
