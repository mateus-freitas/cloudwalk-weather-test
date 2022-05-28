// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'date_and_weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DateAndWeatherDto _$DateAndWeatherDtoFromJson(Map<String, dynamic> json) {
  return _DateAndWeatherDto.fromJson(json);
}

/// @nodoc
mixin _$DateAndWeatherDto {
  @JsonKey(name: 'dt_txt')
  String get dateText => throw _privateConstructorUsedError;
  @JsonKey(name: 'main', fromJson: _weatherFromjson)
  WeatherDto get weather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateAndWeatherDtoCopyWith<DateAndWeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateAndWeatherDtoCopyWith<$Res> {
  factory $DateAndWeatherDtoCopyWith(
          DateAndWeatherDto value, $Res Function(DateAndWeatherDto) then) =
      _$DateAndWeatherDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'dt_txt') String dateText,
      @JsonKey(name: 'main', fromJson: _weatherFromjson) WeatherDto weather});

  $WeatherDtoCopyWith<$Res> get weather;
}

/// @nodoc
class _$DateAndWeatherDtoCopyWithImpl<$Res>
    implements $DateAndWeatherDtoCopyWith<$Res> {
  _$DateAndWeatherDtoCopyWithImpl(this._value, this._then);

  final DateAndWeatherDto _value;
  // ignore: unused_field
  final $Res Function(DateAndWeatherDto) _then;

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
              as WeatherDto,
    ));
  }

  @override
  $WeatherDtoCopyWith<$Res> get weather {
    return $WeatherDtoCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc
abstract class _$$_DateAndWeatherDtoCopyWith<$Res>
    implements $DateAndWeatherDtoCopyWith<$Res> {
  factory _$$_DateAndWeatherDtoCopyWith(_$_DateAndWeatherDto value,
          $Res Function(_$_DateAndWeatherDto) then) =
      __$$_DateAndWeatherDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'dt_txt') String dateText,
      @JsonKey(name: 'main', fromJson: _weatherFromjson) WeatherDto weather});

  @override
  $WeatherDtoCopyWith<$Res> get weather;
}

/// @nodoc
class __$$_DateAndWeatherDtoCopyWithImpl<$Res>
    extends _$DateAndWeatherDtoCopyWithImpl<$Res>
    implements _$$_DateAndWeatherDtoCopyWith<$Res> {
  __$$_DateAndWeatherDtoCopyWithImpl(
      _$_DateAndWeatherDto _value, $Res Function(_$_DateAndWeatherDto) _then)
      : super(_value, (v) => _then(v as _$_DateAndWeatherDto));

  @override
  _$_DateAndWeatherDto get _value => super._value as _$_DateAndWeatherDto;

  @override
  $Res call({
    Object? dateText = freezed,
    Object? weather = freezed,
  }) {
    return _then(_$_DateAndWeatherDto(
      dateText: dateText == freezed
          ? _value.dateText
          : dateText // ignore: cast_nullable_to_non_nullable
              as String,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DateAndWeatherDto implements _DateAndWeatherDto {
  const _$_DateAndWeatherDto(
      {@JsonKey(name: 'dt_txt')
          required this.dateText,
      @JsonKey(name: 'main', fromJson: _weatherFromjson)
          required this.weather});

  factory _$_DateAndWeatherDto.fromJson(Map<String, dynamic> json) =>
      _$$_DateAndWeatherDtoFromJson(json);

  @override
  @JsonKey(name: 'dt_txt')
  final String dateText;
  @override
  @JsonKey(name: 'main', fromJson: _weatherFromjson)
  final WeatherDto weather;

  @override
  String toString() {
    return 'DateAndWeatherDto(dateText: $dateText, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateAndWeatherDto &&
            const DeepCollectionEquality().equals(other.dateText, dateText) &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dateText),
      const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$$_DateAndWeatherDtoCopyWith<_$_DateAndWeatherDto> get copyWith =>
      __$$_DateAndWeatherDtoCopyWithImpl<_$_DateAndWeatherDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DateAndWeatherDtoToJson(this);
  }
}

abstract class _DateAndWeatherDto implements DateAndWeatherDto {
  const factory _DateAndWeatherDto(
      {@JsonKey(name: 'dt_txt')
          required final String dateText,
      @JsonKey(name: 'main', fromJson: _weatherFromjson)
          required final WeatherDto weather}) = _$_DateAndWeatherDto;

  factory _DateAndWeatherDto.fromJson(Map<String, dynamic> json) =
      _$_DateAndWeatherDto.fromJson;

  @override
  @JsonKey(name: 'dt_txt')
  String get dateText => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'main', fromJson: _weatherFromjson)
  WeatherDto get weather => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DateAndWeatherDtoCopyWith<_$_DateAndWeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}
