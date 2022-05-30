import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_test/domain/weather/value_objects.dart';
import 'package:weather_test/domain/weather/weather.dart';

part 'weather_dto.freezed.dart';
part 'weather_dto.g.dart';

@freezed
class WeatherDto with _$WeatherDto {
  const factory WeatherDto({
    @JsonKey(name: 'temp') required double temperature,
    @JsonKey(name: 'temp_min') required double tempMin,
    @JsonKey(name: 'temp_max') required double tempMax,
    required int humidity,
    @JsonKey(name: 'feels_like') required double tempFeelsLike,
  }) = _WeatherDto;

  factory WeatherDto.fromDomain(Weather weather) => WeatherDto(
      temperature: weather.temperature.kelvin,
      tempMin: weather.tempMin.kelvin,
      tempMax: weather.tempMax.kelvin,
      humidity: weather.humidity,
      tempFeelsLike: weather.tempFeelsLike.kelvin);

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);
}

extension WeatherDtoX on WeatherDto {
  Weather toDomain() => Weather(
      temperature: Temperature(temperature),
      tempMin: Temperature(tempMin),
      tempMax: Temperature(tempMax),
      tempFeelsLike: Temperature(tempFeelsLike),
      humidity: humidity);
}
