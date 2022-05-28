// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'city_and_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CityAndWeather {
  ConcertCity get city => throw _privateConstructorUsedError;
  Either<OpenWeatherFailure, Weather>? get weather =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityAndWeatherCopyWith<CityAndWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityAndWeatherCopyWith<$Res> {
  factory $CityAndWeatherCopyWith(
          CityAndWeather value, $Res Function(CityAndWeather) then) =
      _$CityAndWeatherCopyWithImpl<$Res>;
  $Res call({ConcertCity city, Either<OpenWeatherFailure, Weather>? weather});

  $ConcertCityCopyWith<$Res> get city;
}

/// @nodoc
class _$CityAndWeatherCopyWithImpl<$Res>
    implements $CityAndWeatherCopyWith<$Res> {
  _$CityAndWeatherCopyWithImpl(this._value, this._then);

  final CityAndWeather _value;
  // ignore: unused_field
  final $Res Function(CityAndWeather) _then;

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
              as Either<OpenWeatherFailure, Weather>?,
    ));
  }

  @override
  $ConcertCityCopyWith<$Res> get city {
    return $ConcertCityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value));
    });
  }
}

/// @nodoc
abstract class _$$_CityAndWeatherCopyWith<$Res>
    implements $CityAndWeatherCopyWith<$Res> {
  factory _$$_CityAndWeatherCopyWith(
          _$_CityAndWeather value, $Res Function(_$_CityAndWeather) then) =
      __$$_CityAndWeatherCopyWithImpl<$Res>;
  @override
  $Res call({ConcertCity city, Either<OpenWeatherFailure, Weather>? weather});

  @override
  $ConcertCityCopyWith<$Res> get city;
}

/// @nodoc
class __$$_CityAndWeatherCopyWithImpl<$Res>
    extends _$CityAndWeatherCopyWithImpl<$Res>
    implements _$$_CityAndWeatherCopyWith<$Res> {
  __$$_CityAndWeatherCopyWithImpl(
      _$_CityAndWeather _value, $Res Function(_$_CityAndWeather) _then)
      : super(_value, (v) => _then(v as _$_CityAndWeather));

  @override
  _$_CityAndWeather get _value => super._value as _$_CityAndWeather;

  @override
  $Res call({
    Object? city = freezed,
    Object? weather = freezed,
  }) {
    return _then(_$_CityAndWeather(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as ConcertCity,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Either<OpenWeatherFailure, Weather>?,
    ));
  }
}

/// @nodoc

class _$_CityAndWeather implements _CityAndWeather {
  const _$_CityAndWeather({required this.city, required this.weather});

  @override
  final ConcertCity city;
  @override
  final Either<OpenWeatherFailure, Weather>? weather;

  @override
  String toString() {
    return 'CityAndWeather(city: $city, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityAndWeather &&
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
  _$$_CityAndWeatherCopyWith<_$_CityAndWeather> get copyWith =>
      __$$_CityAndWeatherCopyWithImpl<_$_CityAndWeather>(this, _$identity);
}

abstract class _CityAndWeather implements CityAndWeather {
  const factory _CityAndWeather(
          {required final ConcertCity city,
          required final Either<OpenWeatherFailure, Weather>? weather}) =
      _$_CityAndWeather;

  @override
  ConcertCity get city => throw _privateConstructorUsedError;
  @override
  Either<OpenWeatherFailure, Weather>? get weather =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CityAndWeatherCopyWith<_$_CityAndWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
