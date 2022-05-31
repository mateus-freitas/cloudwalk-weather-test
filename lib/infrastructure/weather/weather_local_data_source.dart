import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_test/core/error/exceptions.dart';
import 'package:weather_test/domain/city_and_weather/city_and_weather.dart';
import 'package:weather_test/domain/concert_city/concert_city.dart';
import 'package:weather_test/domain/date_and_weather/date_and_weather.dart';
import 'package:weather_test/domain/weather/weather.dart';
import 'package:weather_test/infrastructure/weather/dto/date_and_weather_dto.dart';
import 'package:weather_test/infrastructure/weather/dto/weather_dto.dart';

const _cachedWeatherKey = 'weather';
const _cachedForecastKey = 'forecast';
const _cachedAtKey = 'weather_cached_at';
const _forecastCachedAtKey = 'forecast_cached_at';

abstract class IWeatherLocalDataSource {
  /// Gets the latest [WeatherDto] that's saved locally
  ///
  /// Throws a [CacheException] if there's no cached data or if it's expired
  Future<WeatherDto> getLastWeatherForCity(ConcertCity city);

  Future<void> cacheCurrentWeather(ConcertCity city, WeatherDto weatherDto);

  /// Gets the latest list of [DateAndWeatherDto] that's saved locally
  ///
  /// Throws a [CacheException] if there's no cached data or if it's expired
  Future<List<DateAndWeatherDto>> getLastForecastForCity(ConcertCity city);

  Future<void> cacheForecast(
      List<DateAndWeatherDto> forecast, ConcertCity city);
}

@Injectable(as: IWeatherLocalDataSource)
class WeatherLocalDataSourceImpl implements IWeatherLocalDataSource {
  final HiveInterface _hive;

  WeatherLocalDataSourceImpl(this._hive);

  bool _isCacheExpired(DateTime cachedAt) =>
      DateTime.now().difference(cachedAt).inHours > 2;

  @override
  Future<WeatherDto> getLastWeatherForCity(ConcertCity city) async {
    if (!(await _hive.boxExists(city.id))) throw CacheException();
    final box = await _hive.openBox(city.id);

    final cachedAtTimestamp = box.get(_cachedAtKey);
    if (cachedAtTimestamp is! int) throw CacheException();

    // The cache can expire because it's weather, it's not useful to show a
    // very outdated weather even if the person does not have connection
    final cachedAt = DateTime.fromMillisecondsSinceEpoch(cachedAtTimestamp);
    if (_isCacheExpired(cachedAt)) {
      box.deleteAll([_cachedAtKey, _cachedWeatherKey]);
      throw CacheException();
    }
    final jsonDataRaw = box.get(_cachedWeatherKey);
    if (jsonDataRaw == null) throw CacheException();
    return WeatherDto.fromJson(json.decode(jsonDataRaw));
  }

  @override
  Future<List<DateAndWeatherDto>> getLastForecastForCity(
      ConcertCity city) async {
    if (!(await _hive.boxExists(city.id))) throw CacheException();
    final box = await _hive.openBox(city.id);

    final cachedAtTimestamp = box.get(_forecastCachedAtKey);
    if (cachedAtTimestamp is! int) throw CacheException();

    final forecastCachedAt =
        DateTime.fromMillisecondsSinceEpoch(cachedAtTimestamp);
    if (_isCacheExpired(forecastCachedAt)) {
      box.deleteAll([_forecastCachedAtKey, _cachedForecastKey]);
      throw CacheException();
    }
    final jsonDataRaw = box.get(_cachedForecastKey);
    if (jsonDataRaw == null) throw CacheException();
    final decoded = json.decode(jsonDataRaw) as List<dynamic>;
    return decoded.map((e) => DateAndWeatherDto.fromJson(e)).toList();
  }

  @override
  Future<void> cacheCurrentWeather(
      ConcertCity city, WeatherDto weatherDto) async {
    final box = await _hive.openBox(city.id);
    await Future.wait([
      box.put(_cachedWeatherKey, json.encode(weatherDto.toJson())),
      box.put(_cachedAtKey, DateTime.now().millisecondsSinceEpoch)
    ]);
  }

  @override
  Future<void> cacheForecast(
      List<DateAndWeatherDto> forecast, ConcertCity city) async {
    final box = await _hive.openBox(city.id);
    await Future.wait([
      box.put(_cachedForecastKey,
          json.encode(forecast.map((e) => e.toJson()).toList())),
      box.put(_forecastCachedAtKey, DateTime.now().millisecondsSinceEpoch)
    ]);
  }
}
