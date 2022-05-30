// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/concert_cities/concert_cities_list_bloc.dart' as _i18;
import '../../application/weather_forecast/weather_forecast_bloc.dart' as _i15;
import '../../domain/concert_city/concert_city.dart' as _i16;
import '../../domain/concert_city/i_concert_city_repository.dart' as _i6;
import '../../domain/weather/i_weather_repository.dart' as _i13;
import '../../domain/weather/weather.dart' as _i17;
import '../../infrastructure/concert_cities/concert_city_local_data_source.dart'
    as _i5;
import '../../infrastructure/concert_cities/concert_city_repository_impl.dart'
    as _i7;
import '../../infrastructure/networking/i_dio_client.dart' as _i8;
import '../../infrastructure/weather/weather_local_data_source.dart' as _i10;
import '../../infrastructure/weather/weather_remote_data_source.dart' as _i11;
import '../../infrastructure/weather/weather_repository_impl.dart' as _i14;
import '../../networking/open_weather_client.dart' as _i9;
import '../platform/network_info.dart' as _i12;
import 'modules.dart' as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.Connectivity>(() => registerModule.connectivity);
  gh.factory<_i4.HiveInterface>(() => registerModule.storage);
  gh.factory<_i5.IConcertCityLocalDataSource>(
      () => _i5.ConcertyCityLocalDataSourceImpl());
  gh.factory<_i6.IConcertCityRepository>(() =>
      _i7.ConcertCityRepositoryImpl(get<_i5.IConcertCityLocalDataSource>()));
  gh.singleton<_i8.IDioClient>(_i9.OpenWeatherClient(),
      instanceName: 'OpenWeatherClient');
  gh.factory<_i10.IWeatherLocalDataSource>(
      () => _i10.WeatherLocalDataSourceImpl(get<_i4.HiveInterface>()));
  gh.factory<_i11.IWeatherRemoteDataSource>(() =>
      _i11.WeatherRemoteDataSourceImpl(
          get<_i8.IDioClient>(instanceName: 'OpenWeatherClient')));
  gh.factory<_i12.NetworkInfo>(
      () => _i12.NetworkInfoImpl(get<_i3.Connectivity>()));
  gh.factory<_i13.IWeatherRepository>(() => _i14.WeatherRepositoryImpl(
      get<_i11.IWeatherRemoteDataSource>(),
      get<_i10.IWeatherLocalDataSource>(),
      get<_i12.NetworkInfo>()));
  gh.factoryParam<_i15.WeatherForecastBloc, _i16.ConcertCity, _i17.Weather>(
      (city, weather) => _i15.WeatherForecastBloc(
          get<_i13.IWeatherRepository>(), city, weather));
  gh.factory<_i18.ConcertCitiesListBloc>(() => _i18.ConcertCitiesListBloc(
      get<_i6.IConcertCityRepository>(), get<_i13.IWeatherRepository>()));
  return get;
}

class _$RegisterModule extends _i19.RegisterModule {}
