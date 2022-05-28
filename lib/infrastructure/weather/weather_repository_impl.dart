import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_test/core/error/exceptions.dart';
import 'package:weather_test/core/error/open_weather_failure.dart';
import 'package:weather_test/domain/city_and_weather/city_and_weather.dart';
import 'package:weather_test/domain/concert_city/concert_city.dart';
import 'package:weather_test/domain/date_and_weather/date_and_weather.dart';
import 'package:weather_test/domain/weather/i_weather_repository.dart';
import 'package:weather_test/infrastructure/weather/dto/date_and_weather_dto.dart';
import 'package:weather_test/infrastructure/weather/dto/weather_dto.dart';
import 'package:weather_test/infrastructure/weather/weather_remote_data_source.dart';

@Injectable(as: IWeatherRepository)
class WeatherRepositoryImpl implements IWeatherRepository {
  final IWeatherRemoteDataSource _dataSource;

  WeatherRepositoryImpl(this._dataSource);

  @override
  Future<CityAndWeather> getCurrentWeather(
      ConcertCity city, String? lang) async {
    try {
      final weatherDto = await _dataSource.getCurrentWeather(city, lang);
      return CityAndWeather(city: city, weather: Right(weatherDto.toDomain()));
    } on OpenWeatherException catch (e) {
      return CityAndWeather(
          city: city,
          weather: Left(OpenWeatherFailure.unknownError(code: e.code)));
    } catch (e) {
      return CityAndWeather(
          city: city,
          weather: const Left(OpenWeatherFailure.unknownError(code: -1)));
    }
  }

  @override
  Future<Either<OpenWeatherFailure, List<DateAndWeather>>> get5DayForecast(
      ConcertCity city, String? lang) async {
    try {
      final weatherDtos = await _dataSource.getForecastForCity(city, lang);
      return Right(weatherDtos.map((e) => e.toDomain()).toList());
    } on OpenWeatherException catch (e) {
      return Left(OpenWeatherFailure.unknownError(code: e.code));
    } catch (e) {
      return const Left(OpenWeatherFailure.unknownError(code: -1));
    }
  }
}
