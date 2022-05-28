part of 'weather_forecast_bloc.dart';

@freezed
class WeatherForecastState with _$WeatherForecastState {
  const factory WeatherForecastState.initial(
      {required final ConcertCity city,
      required final Weather weather}) = _Initial;
  const factory WeatherForecastState.loadedForecast(
      {required final ConcertCity city,
      required final Weather weather,
      required final List<DateAndWeather> forecast}) = _LoadedForecast;
  const factory WeatherForecastState.failedForecast(
      {required final ConcertCity city,
      required final Weather weather,
      required OpenWeatherFailure failure}) = _FailedForecast;
}
