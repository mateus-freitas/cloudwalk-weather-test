part of 'concert_cities_list_bloc.dart';

@freezed
class ConcertCitiesListState with _$ConcertCitiesListState {
  const factory ConcertCitiesListState.loading() = _Loading;
  const factory ConcertCitiesListState.failed({required CacheFailure failure}) =
      _Failed;
  const factory ConcertCitiesListState.loaded(
      {required List<ConcertCity> cities}) = _Loaded;
}
