import 'package:dartz/dartz.dart';
import 'package:weather_test/core/error/open_weather_failure.dart';
import 'package:weather_test/domain/city_and_weather/city_and_weather.dart';
import 'package:weather_test/domain/concert_city/concert_city.dart';

abstract class IWeatherRepository {
  Future<CityAndWeather> getCurrentWeather(ConcertCity city, String? lang);
}
