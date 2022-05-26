import 'package:dartz/dartz.dart';
import 'package:weather_test/core/error/open_weather_failure.dart';
import 'package:weather_test/domain/concert_city/concert_city.dart';
import 'package:weather_test/domain/weather/weather.dart';

abstract class IWeatherRepository {
  Future<Either<OpenWeatherFailure, Weather>> getCurrentWeather(
      ConcertCity city, String? lang);
}
