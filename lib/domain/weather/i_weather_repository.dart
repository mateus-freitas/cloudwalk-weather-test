import 'package:dartz/dartz.dart';
import 'package:weather_test/core/error/open_weather_failure.dart';
import 'package:weather_test/domain/city_and_weather/city_and_weather.dart';
import 'package:weather_test/domain/concert_city/concert_city.dart';
import 'package:weather_test/domain/date_and_weather/date_and_weather.dart';

abstract class IWeatherRepository {
  Future<CityAndWeather> getCurrentWeather(ConcertCity city, String? lang);
  Future<Either<OpenWeatherFailure, List<DateAndWeather>>> get5DayForecast(
      ConcertCity city, String? lang);
}
