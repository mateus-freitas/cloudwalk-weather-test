import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_test/domain/weather/value_objects.dart';

part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  const factory Weather(
      {required Temperature temperature,
      required Temperature tempMin,
      required Temperature tempMax,
      required Temperature tempFeelsLike,
      required String country,
      required String areaName,
      required String weatherMain,
      required String weatherDescription,
      required String weatherIcon}) = _Weather;
}
