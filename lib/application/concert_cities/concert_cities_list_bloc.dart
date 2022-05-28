import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_test/core/error/cache_failure.dart';
import 'package:weather_test/domain/concert_city/concert_city.dart';
import 'package:weather_test/domain/concert_city/i_concert_city_repository.dart';

part 'concert_cities_list_event.dart';
part 'concert_cities_list_state.dart';
part 'concert_cities_list_bloc.freezed.dart';

@injectable
class ConcertCitiesListBloc
    extends Bloc<ConcertCitiesListEvent, ConcertCitiesListState> {
  final IConcertCityRepository _repository;

  ConcertCitiesListBloc(this._repository) : super(const _Loading()) {
    on<ConcertCitiesListEvent>((event, emit) async {
      await event.map<Future>(loadConcertCities: (_) async {
        if (state is! _Loading) {
          emit(const ConcertCitiesListState.loading());
        }

        final citiesResult = await _repository.getConcertCities();

        return citiesResult.fold(
            (fail) => emit(ConcertCitiesListState.failed(failure: fail)),
            (cities) => emit(ConcertCitiesListState.loaded(cities: cities)));
      });
    });
  }
}
