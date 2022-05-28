// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/concert_cities/concert_cities_list_bloc.dart' as _i14;
import '../../application/weather_forecast/weather_forecast_bloc.dart' as _i11;
import '../../domain/concert_city/concert_city.dart' as _i12;
import '../../domain/concert_city/i_concert_city_repository.dart' as _i4;
import '../../domain/weather/i_weather_repository.dart' as _i9;
import '../../domain/weather/weather.dart' as _i13;
import '../../infrastructure/concert_cities/concert_city_local_data_source.dart'
    as _i3;
import '../../infrastructure/concert_cities/concert_city_repository_impl.dart'
    as _i5;
import '../../infrastructure/networking/i_dio_client.dart' as _i6;
import '../../infrastructure/weather/weather_remote_data_source.dart' as _i8;
import '../../infrastructure/weather/weather_repository_impl.dart' as _i10;
import '../../networking/tmdb_dio_client.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.IConcertCityLocalDataSource>(
      () => _i3.ConcertyCityLocalDataSourceImpl());
  gh.factory<_i4.IConcertCityRepository>(() =>
      _i5.ConcertCityRepositoryImpl(get<_i3.IConcertCityLocalDataSource>()));
  gh.singleton<_i6.IDioClient>(_i7.OpenWeatherClient(),
      instanceName: 'OpenWeatherClient');
  gh.factory<_i8.IWeatherRemoteDataSource>(() =>
      _i8.WeatherRemoteDataSourceImpl(
          get<_i6.IDioClient>(instanceName: 'OpenWeatherClient')));
  gh.factory<_i9.IWeatherRepository>(
      () => _i10.WeatherRepositoryImpl(get<_i8.IWeatherRemoteDataSource>()));
  gh.factoryParam<_i11.WeatherForecastBloc, _i12.ConcertCity, _i13.Weather>(
      (city, weather) => _i11.WeatherForecastBloc(
          get<_i9.IWeatherRepository>(), city, weather));
  gh.factory<_i14.ConcertCitiesListBloc>(() => _i14.ConcertCitiesListBloc(
      get<_i4.IConcertCityRepository>(), get<_i9.IWeatherRepository>()));
  return get;
}
