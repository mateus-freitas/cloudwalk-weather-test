// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'concert_city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConcertCity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConcertCityCopyWith<ConcertCity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConcertCityCopyWith<$Res> {
  factory $ConcertCityCopyWith(
          ConcertCity value, $Res Function(ConcertCity) then) =
      _$ConcertCityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String country,
      double longitude,
      double latitude});
}

/// @nodoc
class _$ConcertCityCopyWithImpl<$Res> implements $ConcertCityCopyWith<$Res> {
  _$ConcertCityCopyWithImpl(this._value, this._then);

  final ConcertCity _value;
  // ignore: unused_field
  final $Res Function(ConcertCity) _then;

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
abstract class _$$_ConcertCityCopyWith<$Res>
    implements $ConcertCityCopyWith<$Res> {
  factory _$$_ConcertCityCopyWith(
          _$_ConcertCity value, $Res Function(_$_ConcertCity) then) =
      __$$_ConcertCityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String country,
      double longitude,
      double latitude});
}

/// @nodoc
class __$$_ConcertCityCopyWithImpl<$Res> extends _$ConcertCityCopyWithImpl<$Res>
    implements _$$_ConcertCityCopyWith<$Res> {
  __$$_ConcertCityCopyWithImpl(
      _$_ConcertCity _value, $Res Function(_$_ConcertCity) _then)
      : super(_value, (v) => _then(v as _$_ConcertCity));

  @override
  _$_ConcertCity get _value => super._value as _$_ConcertCity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_$_ConcertCity(
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

class _$_ConcertCity implements _ConcertCity {
  const _$_ConcertCity(
      {required this.id,
      required this.name,
      required this.country,
      required this.longitude,
      required this.latitude});

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
    return 'ConcertCity(id: $id, name: $name, country: $country, longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConcertCity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.latitude, latitude));
  }

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
  _$$_ConcertCityCopyWith<_$_ConcertCity> get copyWith =>
      __$$_ConcertCityCopyWithImpl<_$_ConcertCity>(this, _$identity);
}

abstract class _ConcertCity implements ConcertCity {
  const factory _ConcertCity(
      {required final String id,
      required final String name,
      required final String country,
      required final double longitude,
      required final double latitude}) = _$_ConcertCity;

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
  _$$_ConcertCityCopyWith<_$_ConcertCity> get copyWith =>
      throw _privateConstructorUsedError;
}
