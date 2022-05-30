// Mocks generated by Mockito 5.2.0 from annotations
// in weather_test/test/infrastructure/weather/weather_remote_data_source_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dio/dio.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:weather_test/infrastructure/networking/i_request_handler.dart'
    as _i5;
import 'package:weather_test/networking/open_weather_client.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeResponse_0<T> extends _i1.Fake implements _i2.Response<T> {}

/// A class which mocks [OpenWeatherClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockOpenWeatherClient extends _i1.Mock implements _i3.OpenWeatherClient {
  MockOpenWeatherClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  int get baseConnectTimeout => (super
          .noSuchMethod(Invocation.getter(#baseConnectTimeout), returnValue: 0)
      as int);
  @override
  String get baseContentType =>
      (super.noSuchMethod(Invocation.getter(#baseContentType), returnValue: '')
          as String);
  @override
  Map<String, String> get baseQueryParameters =>
      (super.noSuchMethod(Invocation.getter(#baseQueryParameters),
          returnValue: <String, String>{}) as Map<String, String>);
  @override
  int get baseReceiveTimeout => (super
          .noSuchMethod(Invocation.getter(#baseReceiveTimeout), returnValue: 0)
      as int);
  @override
  String get baseUrl =>
      (super.noSuchMethod(Invocation.getter(#baseUrl), returnValue: '')
          as String);
  @override
  _i4.Future<_i2.Response<dynamic>> perform(_i5.IRequestHandler? request) =>
      (super.noSuchMethod(Invocation.method(#perform, [request]),
              returnValue: Future<_i2.Response<dynamic>>.value(
                  _FakeResponse_0<dynamic>()))
          as _i4.Future<_i2.Response<dynamic>>);
}
