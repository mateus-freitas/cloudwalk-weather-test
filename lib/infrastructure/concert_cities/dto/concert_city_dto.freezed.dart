// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'concert_city_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConcertCityDto _$ConcertCityDtoFromJson(Map<String, dynamic> json) {
  return _ConcertCityDto.fromJson(json);
}

/// @nodoc
mixin _$ConcertCityDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConcertCityDtoCopyWith<ConcertCityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConcertCityDtoCopyWith<$Res> {
  factory $ConcertCityDtoCopyWith(
          ConcertCityDto value, $Res Function(ConcertCityDto) then) =
      _$ConcertCityDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String country,
      double longitude,
      double latitude});
}

/// @nodoc
class _$ConcertCityDtoCopyWithImpl<$Res>
    implements $ConcertCityDtoCopyWith<$Res> {
  _$ConcertCityDtoCopyWithImpl(this._value, this._then);

  final ConcertCityDto _value;
  // ignore: unused_field
  final $Res Function(ConcertCityDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_ConcertCityDtoCopyWith<$Res>
    implements $ConcertCityDtoCopyWith<$Res> {
  factory _$$_ConcertCityDtoCopyWith(
          _$_ConcertCityDto value, $Res Function(_$_ConcertCityDto) then) =
      __$$_ConcertCityDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String country,
      double longitude,
      double latitude});
}

/// @nodoc
class __$$_ConcertCityDtoCopyWithImpl<$Res>
    extends _$ConcertCityDtoCopyWithImpl<$Res>
    implements _$$_ConcertCityDtoCopyWith<$Res> {
  __$$_ConcertCityDtoCopyWithImpl(
      _$_ConcertCityDto _value, $Res Function(_$_ConcertCityDto) _then)
      : super(_value, (v) => _then(v as _$_ConcertCityDto));

  @override
  _$_ConcertCityDto get _value => super._value as _$_ConcertCityDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_$_ConcertCityDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConcertCityDto implements _ConcertCityDto {
  const _$_ConcertCityDto(
      {required this.id,
      required this.name,
      required this.country,
      required this.longitude,
      required this.latitude});

  factory _$_ConcertCityDto.fromJson(Map<String, dynamic> json) =>
      _$$_ConcertCityDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String country;
  @override
  final double longitude;
  @override
  final double latitude;

  @override
  String toString() {
    return 'ConcertCityDto(id: $id, name: $name, country: $country, longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConcertCityDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.latitude, latitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(latitude));

  @JsonKey(ignore: true)
  @override
  _$$_ConcertCityDtoCopyWith<_$_ConcertCityDto> get copyWith =>
      __$$_ConcertCityDtoCopyWithImpl<_$_ConcertCityDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConcertCityDtoToJson(this);
  }
}

abstract class _ConcertCityDto implements ConcertCityDto {
  const factory _ConcertCityDto(
      {required final String id,
      required final String name,
      required final String country,
      required final double longitude,
      required final double latitude}) = _$_ConcertCityDto;

  factory _ConcertCityDto.fromJson(Map<String, dynamic> json) =
      _$_ConcertCityDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get country => throw _privateConstructorUsedError;
  @override
  double get longitude => throw _privateConstructorUsedError;
  @override
  double get latitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ConcertCityDtoCopyWith<_$_ConcertCityDto> get copyWith =>
      throw _privateConstructorUsedError;
}
