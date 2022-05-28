import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_test/domain/date_and_weather/date_and_weather.dart';
import 'package:weather_test/domain/weather/weather.dart';
import 'package:weather_test/infrastructure/weather/dto/weather_dto.dart';

part 'date_and_weather_dto.g.dart';
part 'date_and_weather_dto.freezed.dart';

@freezed
class DateAndWeatherDto with _$DateAndWeatherDto {
  const factory DateAndWeatherDto({
    @JsonKey(name: 'dt_txt') required final String dateText,
    @JsonKey(name: 'main', fromJson: _weatherFromjson)
        required final WeatherDto weather,
  }) = _DateAndWeatherDto;

  factory DateAndWeatherDto.fromJson(Map<String, dynamic> json) =>
      _$DateAndWeatherDtoFromJson(json);
}

WeatherDto _weatherFromjson(Map<String, dynamic> json) =>
    WeatherDto.fromJson(json);

extension DateAndWeatherDtoX on DateAndWeatherDto {
  DateAndWeather toDomain() =>
      DateAndWeather(dateText: dateText, weather: weather.toDomain());
}
