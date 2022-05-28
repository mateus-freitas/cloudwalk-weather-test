part of 'concert_cities_list_bloc.dart';

@freezed
class ConcertCitiesListEvent with _$ConcertCitiesListEvent {
  const factory ConcertCitiesListEvent.loadConcertCities() = _LoadConcertCities;
}
