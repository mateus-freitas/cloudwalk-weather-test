// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'date_and_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DateAndWeather {
  String get dateText => throw _privateConstructorUsedError;
  Weather get weather => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DateAndWeatherCopyWith<DateAndWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateAndWeatherCopyWith<$Res> {
  factory $DateAndWeatherCopyWith(
          DateAndWeather value, $Res Function(DateAndWeather) then) =
      _$DateAndWeatherCopyWithImpl<$Res>;
  $Res call({String dateText, Weather weather});

  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class _$DateAndWeatherCopyWithImpl<$Res>
    implements $DateAndWeatherCopyWith<$Res> {
  _$DateAndWeatherCopyWithImpl(this._value, this._then);

  final DateAndWeather _value;
  // ignore: unused_field
  final $Res Function(DateAndWeather) _then;

  @override
  $Res call({
    Object? dateText = freezed,
    Object? weather = freezed,
  }) {
    return _then(_value.copyWith(
      dateText: dateText == freezed
          ? _value.dateText
          : dateText // ignore: cast_nullable_to_non_nullable
              as String,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }

  @override
  $WeatherCopyWith<$Res> get weather {
    return $WeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc
abstract class _$$_DateAndWeatherCopyWith<$Res>
    implements $DateAndWeatherCopyWith<$Res> {
  factory _$$_DateAndWeatherCopyWith(
          _$_DateAndWeather value, $Res Function(_$_DateAndWeather) then) =
      __$$_DateAndWeatherCopyWithImpl<$Res>;
  @override
  $Res call({String dateText, Weather weather});

  @override
  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class __$$_DateAndWeatherCopyWithImpl<$Res>
    extends _$DateAndWeatherCopyWithImpl<$Res>
    implements _$$_DateAndWeatherCopyWith<$Res> {
  __$$_DateAndWeatherCopyWithImpl(
      _$_DateAndWeather _value, $Res Function(_$_DateAndWeather) _then)
      : super(_value, (v) => _then(v as _$_DateAndWeather));

  @override
  _$_DateAndWeather get _value => super._value as _$_DateAndWeather;

  @override
  $Res call({
    Object? dateText = freezed,
    Object? weather = freezed,
  }) {
    return _then(_$_DateAndWeather(
      dateText: dateText == freezed
          ? _value.dateText
          : dateText // ignore: cast_nullable_to_non_nullable
              as String,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }
}

/// @nodoc

class _$_DateAndWeather implements _DateAndWeather {
  const _$_DateAndWeather({required this.dateText, required this.weather});

  @override
  final String dateText;
  @override
  final Weather weather;

  @override
  String toString() {
    return 'DateAndWeather(dateText: $dateText, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateAndWeather &&
            const DeepCollectionEquality().equals(other.dateText, dateText) &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dateText),
      const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$$_DateAndWeatherCopyWith<_$_DateAndWeather> get copyWith =>
      __$$_DateAndWeatherCopyWithImpl<_$_DateAndWeather>(this, _$identity);
}

abstract class _DateAndWeather implements DateAndWeather {
  const factory _DateAndWeather(
      {required final String dateText,
      required final Weather weather}) = _$_DateAndWeather;

  @override
  String get dateText => throw _privateConstructorUsedError;
  @override
  Weather get weather => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DateAndWeatherCopyWith<_$_DateAndWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
