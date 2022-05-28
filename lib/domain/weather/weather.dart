import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_test/domain/weather/value_objects.dart';

part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  const factory Weather(
      {required final Temperature temperature,
      required final Temperature tempMin,
      required final Temperature tempMax,
      required final Temperature tempFeelsLike,
      required final int humidity}) = _Weather;
}
