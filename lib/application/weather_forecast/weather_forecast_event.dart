part of 'weather_forecast_bloc.dart';

@freezed
class WeatherForecastEvent with _$WeatherForecastEvent {
  const factory WeatherForecastEvent.loadForecast({String? lang}) =
      _LoadForecast;
}
