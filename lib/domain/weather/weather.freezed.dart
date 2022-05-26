// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Weather {
  Temperature get temperature => throw _privateConstructorUsedError;
  Temperature get tempMin => throw _privateConstructorUsedError;
  Temperature get tempMax => throw _privateConstructorUsedError;
  Temperature get tempFeelsLike => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get areaName => throw _privateConstructorUsedError;
  String get weatherMain => throw _privateConstructorUsedError;
  String get weatherDescription => throw _privateConstructorUsedError;
  String get weatherIcon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call(
      {Temperature temperature,
      Temperature tempMin,
      Temperature tempMax,
      Temperature tempFeelsLike,
      String country,
      String areaName,
      String weatherMain,
      String weatherDescription,
      String weatherIcon});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

  @override
  $Res call({
    Object? temperature = freezed,
    Object? tempMin = freezed,
    Object? tempMax = freezed,
    Object? tempFeelsLike = freezed,
    Object? country = freezed,
    Object? areaName = freezed,
    Object? weatherMain = freezed,
    Object? weatherDescription = freezed,
    Object? weatherIcon = freezed,
  }) {
    return _then(_value.copyWith(
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as Temperature,
      tempMin: tempMin == freezed
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as Temperature,
      tempMax: tempMax == freezed
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as Temperature,
      tempFeelsLike: tempFeelsLike == freezed
          ? _value.tempFeelsLike
          : tempFeelsLike // ignore: cast_nullable_to_non_nullable
              as Temperature,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      areaName: areaName == freezed
          ? _value.areaName
          : areaName // ignore: cast_nullable_to_non_nullable
              as String,
      weatherMain: weatherMain == freezed
          ? _value.weatherMain
          : weatherMain // ignore: cast_nullable_to_non_nullable
              as String,
      weatherDescription: weatherDescription == freezed
          ? _value.weatherDescription
          : weatherDescription // ignore: cast_nullable_to_non_nullable
              as String,
      weatherIcon: weatherIcon == freezed
          ? _value.weatherIcon
          : weatherIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$_WeatherCopyWith(
          _$_Weather value, $Res Function(_$_Weather) then) =
      __$$_WeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {Temperature temperature,
      Temperature tempMin,
      Temperature tempMax,
      Temperature tempFeelsLike,
      String country,
      String areaName,
      String weatherMain,
      String weatherDescription,
      String weatherIcon});
}

/// @nodoc
class __$$_WeatherCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res>
    implements _$$_WeatherCopyWith<$Res> {
  __$$_WeatherCopyWithImpl(_$_Weather _value, $Res Function(_$_Weather) _then)
      : super(_value, (v) => _then(v as _$_Weather));

  @override
  _$_Weather get _value => super._value as _$_Weather;

  @override
  $Res call({
    Object? temperature = freezed,
    Object? tempMin = freezed,
    Object? tempMax = freezed,
    Object? tempFeelsLike = freezed,
    Object? country = freezed,
    Object? areaName = freezed,
    Object? weatherMain = freezed,
    Object? weatherDescription = freezed,
    Object? weatherIcon = freezed,
  }) {
    return _then(_$_Weather(
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as Temperature,
      tempMin: tempMin == freezed
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as Temperature,
      tempMax: tempMax == freezed
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as Temperature,
      tempFeelsLike: tempFeelsLike == freezed
          ? _value.tempFeelsLike
          : tempFeelsLike // ignore: cast_nullable_to_non_nullable
              as Temperature,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      areaName: areaName == freezed
          ? _value.areaName
          : areaName // ignore: cast_nullable_to_non_nullable
              as String,
      weatherMain: weatherMain == freezed
          ? _value.weatherMain
          : weatherMain // ignore: cast_nullable_to_non_nullable
              as String,
      weatherDescription: weatherDescription == freezed
          ? _value.weatherDescription
          : weatherDescription // ignore: cast_nullable_to_non_nullable
              as String,
      weatherIcon: weatherIcon == freezed
          ? _value.weatherIcon
          : weatherIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Weather implements _Weather {
  const _$_Weather(
      {required this.temperature,
      required this.tempMin,
      required this.tempMax,
      required this.tempFeelsLike,
      required this.country,
      required this.areaName,
      required this.weatherMain,
      required this.weatherDescription,
      required this.weatherIcon});

  @override
  final Temperature temperature;
  @override
  final Temperature tempMin;
  @override
  final Temperature tempMax;
  @override
  final Temperature tempFeelsLike;
  @override
  final String country;
  @override
  final String areaName;
  @override
  final String weatherMain;
  @override
  final String weatherDescription;
  @override
  final String weatherIcon;

  @override
  String toString() {
    return 'Weather(temperature: $temperature, tempMin: $tempMin, tempMax: $tempMax, tempFeelsLike: $tempFeelsLike, country: $country, areaName: $areaName, weatherMain: $weatherMain, weatherDescription: $weatherDescription, weatherIcon: $weatherIcon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weather &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature) &&
            const DeepCollectionEquality().equals(other.tempMin, tempMin) &&
            const DeepCollectionEquality().equals(other.tempMax, tempMax) &&
            const DeepCollectionEquality()
                .equals(other.tempFeelsLike, tempFeelsLike) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.areaName, areaName) &&
            const DeepCollectionEquality()
                .equals(other.weatherMain, weatherMain) &&
            const DeepCollectionEquality()
                .equals(other.weatherDescription, weatherDescription) &&
            const DeepCollectionEquality()
                .equals(other.weatherIcon, weatherIcon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(temperature),
      const DeepCollectionEquality().hash(tempMin),
      const DeepCollectionEquality().hash(tempMax),
      const DeepCollectionEquality().hash(tempFeelsLike),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(areaName),
      const DeepCollectionEquality().hash(weatherMain),
      const DeepCollectionEquality().hash(weatherDescription),
      const DeepCollectionEquality().hash(weatherIcon));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      __$$_WeatherCopyWithImpl<_$_Weather>(this, _$identity);
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {required final Temperature temperature,
      required final Temperature tempMin,
      required final Temperature tempMax,
      required final Temperature tempFeelsLike,
      required final String country,
      required final String areaName,
      required final String weatherMain,
      required final String weatherDescription,
      required final String weatherIcon}) = _$_Weather;

  @override
  Temperature get temperature => throw _privateConstructorUsedError;
  @override
  Temperature get tempMin => throw _privateConstructorUsedError;
  @override
  Temperature get tempMax => throw _privateConstructorUsedError;
  @override
  Temperature get tempFeelsLike => throw _privateConstructorUsedError;
  @override
  String get country => throw _privateConstructorUsedError;
  @override
  String get areaName => throw _privateConstructorUsedError;
  @override
  String get weatherMain => throw _privateConstructorUsedError;
  @override
  String get weatherDescription => throw _privateConstructorUsedError;
  @override
  String get weatherIcon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}
