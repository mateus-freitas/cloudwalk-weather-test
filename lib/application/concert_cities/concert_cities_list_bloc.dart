import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_test/core/error/cache_failure.dart';
import 'package:weather_test/core/error/open_weather_failure.dart';
import 'package:weather_test/domain/city_and_weather/city_and_weather.dart';
import 'package:weather_test/domain/concert_city/i_concert_city_repository.dart';
import 'package:weather_test/domain/weather/i_weather_repository.dart';
import 'package:weather_test/domain/weather/weather.dart';

part 'concert_cities_list_event.dart';
part 'concert_cities_list_state.dart';
part 'concert_cities_list_bloc.freezed.dart';

@injectable
class ConcertCitiesListBloc
    extends Bloc<ConcertCitiesListEvent, ConcertCitiesListState> {
  final IConcertCityRepository _repository;
  final IWeatherRepository _weatherRepository;

  ConcertCitiesListBloc(this._repository, this._weatherRepository)
      : super(const _Loading()) {
    on<ConcertCitiesListEvent>((event, emit) async {
      await event.map<Future>(loadConcertCities: (loadEvent) async {
        if (state is! _Loading) {
          emit(const ConcertCitiesListState.loading());
        }

        final citiesResult = await _repository.getConcertCities();

        await citiesResult.fold(
            (fail) async => emit(ConcertCitiesListState.failed(failure: fail)),
            (cities) async {
          final List<CityAndWeather> loadingWeathers = [];
          final List<Future<CityAndWeather>> getWeatherFutures = [];
          cities.forEach((city) {
            loadingWeathers.add(CityAndWeather(city: city, weather: null));
            getWeatherFutures.add(
                _weatherRepository.getCurrentWeather(city, loadEvent.lang));
          });
          emit(ConcertCitiesListState.loaded(cities: loadingWeathers));
          final results = await Future.wait(getWeatherFutures);
          emit(ConcertCitiesListState.loaded(cities: results));
        });
      });
    });
  }
}
