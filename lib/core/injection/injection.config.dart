// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/concert_city/i_concert_city_repository.dart' as _i4;
import '../../infrastructure/concert_cities/concert_city_local_data_source.dart'
    as _i3;
import '../../infrastructure/concert_cities/concert_city_repository_impl.dart'
    as _i5;
import '../../networking/tmdb_dio_client.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.IConcertCityLocalDataSource>(
      () => _i3.ConcertyCityLocalDataSourceImpl());
  gh.factory<_i4.IConcertCityRepository>(() =>
      _i5.ConcertCityRepositoryImpl(get<_i3.IConcertCityLocalDataSource>()));
  gh.singleton<_i6.OpenWeatherClient>(_i6.OpenWeatherClient(),
      instanceName: 'TMDBClient');
  return get;
}
