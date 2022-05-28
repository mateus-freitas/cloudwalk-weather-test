// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_forecast_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherForecastEvent {
  String? get lang => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lang) loadForecast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? lang)? loadForecast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lang)? loadForecast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadForecast value) loadForecast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadForecast value)? loadForecast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadForecast value)? loadForecast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherForecastEventCopyWith<WeatherForecastEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastEventCopyWith<$Res> {
  factory $WeatherForecastEventCopyWith(WeatherForecastEvent value,
          $Res Function(WeatherForecastEvent) then) =
      _$WeatherForecastEventCopyWithImpl<$Res>;
  $Res call({String? lang});
}

/// @nodoc
class _$WeatherForecastEventCopyWithImpl<$Res>
    implements $WeatherForecastEventCopyWith<$Res> {
  _$WeatherForecastEventCopyWithImpl(this._value, this._then);

  final WeatherForecastEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherForecastEvent) _then;

  @override
  $Res call({
    Object? lang = freezed,
  }) {
    return _then(_value.copyWith(
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LoadForecastCopyWith<$Res>
    implements $WeatherForecastEventCopyWith<$Res> {
  factory _$$_LoadForecastCopyWith(
          _$_LoadForecast value, $Res Function(_$_LoadForecast) then) =
      __$$_LoadForecastCopyWithImpl<$Res>;
  @override
  $Res call({String? lang});
}

/// @nodoc
class __$$_LoadForecastCopyWithImpl<$Res>
    extends _$WeatherForecastEventCopyWithImpl<$Res>
    implements _$$_LoadForecastCopyWith<$Res> {
  __$$_LoadForecastCopyWithImpl(
      _$_LoadForecast _value, $Res Function(_$_LoadForecast) _then)
      : super(_value, (v) => _then(v as _$_LoadForecast));

  @override
  _$_LoadForecast get _value => super._value as _$_LoadForecast;

  @override
  $Res call({
    Object? lang = freezed,
  }) {
    return _then(_$_LoadForecast(
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoadForecast implements _LoadForecast {
  const _$_LoadForecast({this.lang});

  @override
  final String? lang;

  @override
  String toString() {
    return 'WeatherForecastEvent.loadForecast(lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadForecast &&
            const DeepCollectionEquality().equals(other.lang, lang));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(lang));

  @JsonKey(ignore: true)
  @override
  _$$_LoadForecastCopyWith<_$_LoadForecast> get copyWith =>
      __$$_LoadForecastCopyWithImpl<_$_LoadForecast>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lang) loadForecast,
  }) {
    return loadForecast(lang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? lang)? loadForecast,
  }) {
    return loadForecast?.call(lang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lang)? loadForecast,
    required TResult orElse(),
  }) {
    if (loadForecast != null) {
      return loadForecast(lang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadForecast value) loadForecast,
  }) {
    return loadForecast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadForecast value)? loadForecast,
  }) {
    return loadForecast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadForecast value)? loadForecast,
    required TResult orElse(),
  }) {
    if (loadForecast != null) {
      return loadForecast(this);
    }
    return orElse();
  }
}

abstract class _LoadForecast implements WeatherForecastEvent {
  const factory _LoadForecast({final String? lang}) = _$_LoadForecast;

  @override
  String? get lang => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoadForecastCopyWith<_$_LoadForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherForecastState {
  ConcertCity get city => throw _privateConstructorUsedError;
  Weather get weather => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConcertCity city, Weather weather) initial,
    required TResult Function(
            ConcertCity city, Weather weather, List<DateAndWeather> forecast)
        loadedForecast,
    required TResult Function(
            ConcertCity city, Weather weather, OpenWeatherFailure failure)
        failedForecast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ConcertCity city, Weather weather)? initial,
    TResult Function(
            ConcertCity city, Weather weather, List<DateAndWeather> forecast)?
        loadedForecast,
    TResult Function(
            ConcertCity city, Weather weather, OpenWeatherFailure failure)?
        failedForecast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConcertCity city, Weather weather)? initial,
    TResult Function(
            ConcertCity city, Weather weather, List<DateAndWeather> forecast)?
        loadedForecast,
    TResult Function(
            ConcertCity city, Weather weather, OpenWeatherFailure failure)?
        failedForecast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedForecast value) loadedForecast,
    required TResult Function(_FailedForecast value) failedForecast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedForecast value)? loadedForecast,
    TResult Function(_FailedForecast value)? failedForecast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedForecast value)? loadedForecast,
    TResult Function(_FailedForecast value)? failedForecast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherForecastStateCopyWith<WeatherForecastState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastStateCopyWith<$Res> {
  factory $WeatherForecastStateCopyWith(WeatherForecastState value,
          $Res Function(WeatherForecastState) then) =
      _$WeatherForecastStateCopyWithImpl<$Res>;
  $Res call({ConcertCity city, Weather weather});

  $ConcertCityCopyWith<$Res> get city;
  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class _$WeatherForecastStateCopyWithImpl<$Res>
    implements $WeatherForecastStateCopyWith<$Res> {
  _$WeatherForecastStateCopyWithImpl(this._value, this._then);

  final WeatherForecastState _value;
  // ignore: unused_field
  final $Res Function(WeatherForecastState) _then;

  @override
  $Res call({
    Object? city = freezed,
    Object? weather = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as ConcertCity,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }

  @override
  $ConcertCityCopyWith<$Res> get city {
    return $ConcertCityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value));
    });
  }

  @override
  $WeatherCopyWith<$Res> get weather {
    return $WeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $WeatherForecastStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({ConcertCity city, Weather weather});

  @override
  $ConcertCityCopyWith<$Res> get city;
  @override
  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$WeatherForecastStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? city = freezed,
    Object? weather = freezed,
  }) {
    return _then(_$_Initial(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as ConcertCity,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.city, required this.weather});

  @override
  final ConcertCity city;
  @override
  final Weather weather;

  @override
  String toString() {
    return 'WeatherForecastState.initial(city: $city, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConcertCity city, Weather weather) initial,
    required TResult Function(
            ConcertCity city, Weather weather, List<DateAndWeather> forecast)
        loadedForecast,
    required TResult Function(
            ConcertCity city, Weather weather, OpenWeatherFailure failure)
        failedForecast,
  }) {
    return initial(city, weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ConcertCity city, Weather weather)? initial,
    TResult Function(
            ConcertCity city, Weather weather, List<DateAndWeather> forecast)?
        loadedForecast,
    TResult Function(
            ConcertCity city, Weather weather, OpenWeatherFailure failure)?
        failedForecast,
  }) {
    return initial?.call(city, weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConcertCity city, Weather weather)? initial,
    TResult Function(
            ConcertCity city, Weather weather, List<DateAndWeather> forecast)?
        loadedForecast,
    TResult Function(
            ConcertCity city, Weather weather, OpenWeatherFailure failure)?
        failedForecast,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(city, weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedForecast value) loadedForecast,
    required TResult Function(_FailedForecast value) failedForecast,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedForecast value)? loadedForecast,
    TResult Function(_FailedForecast value)? failedForecast,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedForecast value)? loadedForecast,
    TResult Function(_FailedForecast value)? failedForecast,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WeatherForecastState {
  const factory _Initial(
      {required final ConcertCity city,
      required final Weather weather}) = _$_Initial;

  @override
  ConcertCity get city => throw _privateConstructorUsedError;
  @override
  Weather get weather => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedForecastCopyWith<$Res>
    implements $WeatherForecastStateCopyWith<$Res> {
  factory _$$_LoadedForecastCopyWith(
          _$_LoadedForecast value, $Res Function(_$_LoadedForecast) then) =
      __$$_LoadedForecastCopyWithImpl<$Res>;
  @override
  $Res call({ConcertCity city, Weather weather, List<DateAndWeather> forecast});

  @override
  $ConcertCityCopyWith<$Res> get city;
  @override
  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class __$$_LoadedForecastCopyWithImpl<$Res>
    extends _$WeatherForecastStateCopyWithImpl<$Res>
    implements _$$_LoadedForecastCopyWith<$Res> {
  __$$_LoadedForecastCopyWithImpl(
      _$_LoadedForecast _value, $Res Function(_$_LoadedForecast) _then)
      : super(_value, (v) => _then(v as _$_LoadedForecast));

  @override
  _$_LoadedForecast get _value => super._value as _$_LoadedForecast;

  @override
  $Res call({
    Object? city = freezed,
    Object? weather = freezed,
    Object? forecast = freezed,
  }) {
    return _then(_$_LoadedForecast(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as ConcertCity,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
      forecast: forecast == freezed
          ? _value._forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as List<DateAndWeather>,
    ));
  }
}

/// @nodoc

class _$_LoadedForecast implements _LoadedForecast {
  const _$_LoadedForecast(
      {required this.city,
      required this.weather,
      required final List<DateAndWeather> forecast})
      : _forecast = forecast;

  @override
  final ConcertCity city;
  @override
  final Weather weather;
  final List<DateAndWeather> _forecast;
  @override
  List<DateAndWeather> get forecast {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forecast);
  }

  @override
  String toString() {
    return 'WeatherForecastState.loadedForecast(city: $city, weather: $weather, forecast: $forecast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedForecast &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.weather, weather) &&
            const DeepCollectionEquality().equals(other._forecast, _forecast));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(weather),
      const DeepCollectionEquality().hash(_forecast));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedForecastCopyWith<_$_LoadedForecast> get copyWith =>
      __$$_LoadedForecastCopyWithImpl<_$_LoadedForecast>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConcertCity city, Weather weather) initial,
    required TResult Function(
            ConcertCity city, Weather weather, List<DateAndWeather> forecast)
        loadedForecast,
    required TResult Function(
            ConcertCity city, Weather weather, OpenWeatherFailure failure)
        failedForecast,
  }) {
    return loadedForecast(city, weather, forecast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ConcertCity city, Weather weather)? initial,
    TResult Function(
            ConcertCity city, Weather weather, List<DateAndWeather> forecast)?
        loadedForecast,
    TResult Function(
            ConcertCity city, Weather weather, OpenWeatherFailure failure)?
        failedForecast,
  }) {
    return loadedForecast?.call(city, weather, forecast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConcertCity city, Weather weather)? initial,
    TResult Function(
            ConcertCity city, Weather weather, List<DateAndWeather> forecast)?
        loadedForecast,
    TResult Function(
            ConcertCity city, Weather weather, OpenWeatherFailure failure)?
        failedForecast,
    required TResult orElse(),
  }) {
    if (loadedForecast != null) {
      return loadedForecast(city, weather, forecast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedForecast value) loadedForecast,
    required TResult Function(_FailedForecast value) failedForecast,
  }) {
    return loadedForecast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedForecast value)? loadedForecast,
    TResult Function(_FailedForecast value)? failedForecast,
  }) {
    return loadedForecast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedForecast value)? loadedForecast,
    TResult Function(_FailedForecast value)? failedForecast,
    required TResult orElse(),
  }) {
    if (loadedForecast != null) {
      return loadedForecast(this);
    }
    return orElse();
  }
}

abstract class _LoadedForecast implements WeatherForecastState {
  const factory _LoadedForecast(
      {required final ConcertCity city,
      required final Weather weather,
      required final List<DateAndWeather> forecast}) = _$_LoadedForecast;

  @override
  ConcertCity get city => throw _privateConstructorUsedError;
  @override
  Weather get weather => throw _privateConstructorUsedError;
  List<DateAndWeather> get forecast => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedForecastCopyWith<_$_LoadedForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedForecastCopyWith<$Res>
    implements $WeatherForecastStateCopyWith<$Res> {
  factory _$$_FailedForecastCopyWith(
          _$_FailedForecast value, $Res Function(_$_FailedForecast) then) =
      __$$_FailedForecastCopyWithImpl<$Res>;
  @override
  $Res call({ConcertCity city, Weather weather, OpenWeatherFailure failure});

  @override
  $ConcertCityCopyWith<$Res> get city;
  @override
  $WeatherCopyWith<$Res> get weather;
  $OpenWeatherFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailedForecastCopyWithImpl<$Res>
    extends _$WeatherForecastStateCopyWithImpl<$Res>
    implements _$$_FailedForecastCopyWith<$Res> {
  __$$_FailedForecastCopyWithImpl(
      _$_FailedForecast _value, $Res Function(_$_FailedForecast) _then)
      : super(_value, (v) => _then(v as _$_FailedForecast));

  @override
  _$_FailedForecast get _value => super._value as _$_FailedForecast;

  @override
  $Res call({
    Object? city = freezed,
    Object? weather = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_FailedForecast(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as ConcertCity,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as OpenWeatherFailure,
    ));
  }

  @override
  $OpenWeatherFailureCopyWith<$Res> get failure {
    return $OpenWeatherFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_FailedForecast implements _FailedForecast {
  const _$_FailedForecast(
      {required this.city, required this.weather, required this.failure});

  @override
  final ConcertCity city;
  @override
  final Weather weather;
  @override
  final OpenWeatherFailure failure;

  @override
  String toString() {
    return 'WeatherForecastState.failedForecast(city: $city, weather: $weather, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailedForecast &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.weather, weather) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(weather),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_FailedForecastCopyWith<_$_FailedForecast> get copyWith =>
      __$$_FailedForecastCopyWithImpl<_$_FailedForecast>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConcertCity city, Weather weather) initial,
    required TResult Function(
            ConcertCity city, Weather weather, List<DateAndWeather> forecast)
        loadedForecast,
    required TResult Function(
            ConcertCity city, Weather weather, OpenWeatherFailure failure)
        failedForecast,
  }) {
    return failedForecast(city, weather, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ConcertCity city, Weather weather)? initial,
    TResult Function(
            ConcertCity city, Weather weather, List<DateAndWeather> forecast)?
        loadedForecast,
    TResult Function(
            ConcertCity city, Weather weather, OpenWeatherFailure failure)?
        failedForecast,
  }) {
    return failedForecast?.call(city, weather, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConcertCity city, Weather weather)? initial,
    TResult Function(
            ConcertCity city, Weather weather, List<DateAndWeather> forecast)?
        loadedForecast,
    TResult Function(
            ConcertCity city, Weather weather, OpenWeatherFailure failure)?
        failedForecast,
    required TResult orElse(),
  }) {
    if (failedForecast != null) {
      return failedForecast(city, weather, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedForecast value) loadedForecast,
    required TResult Function(_FailedForecast value) failedForecast,
  }) {
    return failedForecast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedForecast value)? loadedForecast,
    TResult Function(_FailedForecast value)? failedForecast,
  }) {
    return failedForecast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedForecast value)? loadedForecast,
    TResult Function(_FailedForecast value)? failedForecast,
    required TResult orElse(),
  }) {
    if (failedForecast != null) {
      return failedForecast(this);
    }
    return orElse();
  }
}

abstract class _FailedForecast implements WeatherForecastState {
  const factory _FailedForecast(
      {required final ConcertCity city,
      required final Weather weather,
      required final OpenWeatherFailure failure}) = _$_FailedForecast;

  @override
  ConcertCity get city => throw _privateConstructorUsedError;
  @override
  Weather get weather => throw _privateConstructorUsedError;
  OpenWeatherFailure get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FailedForecastCopyWith<_$_FailedForecast> get copyWith =>
      throw _privateConstructorUsedError;
}
