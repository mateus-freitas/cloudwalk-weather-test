import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_test/domain/weather/weather.dart';

part 'date_and_weather.freezed.dart';

@freezed
class DateAndWeather with _$DateAndWeather {
  const factory DateAndWeather({
    required final String dateText,
    required final Weather weather,
  }) = _DateAndWeather;
}
