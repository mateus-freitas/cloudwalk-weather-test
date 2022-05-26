// Mocks generated by Mockito 5.2.0 from annotations
// in weather_test/test/infrastructure/weather/weather_repository_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:weather_test/domain/concert_city/concert_city.dart' as _i5;
import 'package:weather_test/infrastructure/weather/weather_dto.dart' as _i2;
import 'package:weather_test/infrastructure/weather/weather_remote_data_source.dart'
    as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeWeatherDto_0 extends _i1.Fake implements _i2.WeatherDto {}

/// A class which mocks [WeatherRemoteDataSourceImpl].
///
/// See the documentation for Mockito's code generation for more information.
class MockWeatherRemoteDataSourceImpl extends _i1.Mock
    implements _i3.WeatherRemoteDataSourceImpl {
  MockWeatherRemoteDataSourceImpl() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.WeatherDto> getCurrentWeather(
          _i5.ConcertCity? city, String? lang) =>
      (super.noSuchMethod(Invocation.method(#getCurrentWeather, [city, lang]),
              returnValue: Future<_i2.WeatherDto>.value(_FakeWeatherDto_0()))
          as _i4.Future<_i2.WeatherDto>);
  @override
  _i4.Future<_i2.WeatherDto> getForecastForCity(
          _i5.ConcertCity? city, String? lang) =>
      (super.noSuchMethod(Invocation.method(#getForecastForCity, [city, lang]),
              returnValue: Future<_i2.WeatherDto>.value(_FakeWeatherDto_0()))
          as _i4.Future<_i2.WeatherDto>);
}
