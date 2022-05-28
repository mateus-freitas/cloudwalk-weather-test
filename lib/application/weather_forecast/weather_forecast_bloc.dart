import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_test/core/error/open_weather_failure.dart';
import 'package:weather_test/domain/concert_city/concert_city.dart';
import 'package:weather_test/domain/date_and_weather/date_and_weather.dart';
import 'package:weather_test/domain/weather/i_weather_repository.dart';
import 'package:weather_test/domain/weather/weather.dart';

part 'weather_forecast_event.dart';
part 'weather_forecast_state.dart';
part 'weather_forecast_bloc.freezed.dart';

@injectable
class WeatherForecastBloc
    extends Bloc<WeatherForecastEvent, WeatherForecastState> {
  final IWeatherRepository _repository;
  final ConcertCity city;
  final Weather weather;

  WeatherForecastBloc(
      this._repository, @factoryParam this.city, @factoryParam this.weather)
      : super(_Initial(city: city, weather: weather)) {
    on<WeatherForecastEvent>((event, emit) async {
      await event.map(loadForecast: (loadEvent) async {
        if (state is! _Initial) {
          emit(_Initial(city: city, weather: weather));
        }
        final forecastResult =
            await _repository.get5DayForecast(city, loadEvent.lang);
        return forecastResult.fold(
            (fail) => emit(
                _FailedForecast(city: city, weather: weather, failure: fail)),
            (forecast) => emit(_LoadedForecast(
                city: city, weather: weather, forecast: forecast)));
      });
    });
  }
}
