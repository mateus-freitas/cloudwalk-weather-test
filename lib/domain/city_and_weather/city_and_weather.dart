import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_test/core/error/open_weather_failure.dart';
import 'package:weather_test/domain/concert_city/concert_city.dart';
import 'package:weather_test/domain/weather/weather.dart';

part 'city_and_weather.freezed.dart';

@freezed
class CityAndWeather with _$CityAndWeather {
  const factory CityAndWeather({
    required final ConcertCity city,
    required final Either<OpenWeatherFailure, Weather>? weather,
  }) = _CityAndWeather;
}
