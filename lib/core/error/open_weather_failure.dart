import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_weather_failure.freezed.dart';

@freezed
class OpenWeatherFailure with _$OpenWeatherFailure {
  const factory OpenWeatherFailure.unknownError({required int? code}) =
      _UnknownError;
  const factory OpenWeatherFailure.noConnection() = _NoConnection;
}
