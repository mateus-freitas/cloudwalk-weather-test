// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'open_weather_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OpenWeatherFailure {
  int? get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? code) unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? code)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? code)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OpenWeatherFailureCopyWith<OpenWeatherFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherFailureCopyWith<$Res> {
  factory $OpenWeatherFailureCopyWith(
          OpenWeatherFailure value, $Res Function(OpenWeatherFailure) then) =
      _$OpenWeatherFailureCopyWithImpl<$Res>;
  $Res call({int? code});
}

/// @nodoc
class _$OpenWeatherFailureCopyWithImpl<$Res>
    implements $OpenWeatherFailureCopyWith<$Res> {
  _$OpenWeatherFailureCopyWithImpl(this._value, this._then);

  final OpenWeatherFailure _value;
  // ignore: unused_field
  final $Res Function(OpenWeatherFailure) _then;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_UnknownErrorCopyWith<$Res>
    implements $OpenWeatherFailureCopyWith<$Res> {
  factory _$$_UnknownErrorCopyWith(
          _$_UnknownError value, $Res Function(_$_UnknownError) then) =
      __$$_UnknownErrorCopyWithImpl<$Res>;
  @override
  $Res call({int? code});
}

/// @nodoc
class __$$_UnknownErrorCopyWithImpl<$Res>
    extends _$OpenWeatherFailureCopyWithImpl<$Res>
    implements _$$_UnknownErrorCopyWith<$Res> {
  __$$_UnknownErrorCopyWithImpl(
      _$_UnknownError _value, $Res Function(_$_UnknownError) _then)
      : super(_value, (v) => _then(v as _$_UnknownError));

  @override
  _$_UnknownError get _value => super._value as _$_UnknownError;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_$_UnknownError(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_UnknownError implements _UnknownError {
  const _$_UnknownError({required this.code});

  @override
  final int? code;

  @override
  String toString() {
    return 'OpenWeatherFailure.unknownError(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnknownError &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$_UnknownErrorCopyWith<_$_UnknownError> get copyWith =>
      __$$_UnknownErrorCopyWithImpl<_$_UnknownError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? code) unknownError,
  }) {
    return unknownError(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? code)? unknownError,
  }) {
    return unknownError?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? code)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownError value) unknownError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class _UnknownError implements OpenWeatherFailure {
  const factory _UnknownError({required final int? code}) = _$_UnknownError;

  @override
  int? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UnknownErrorCopyWith<_$_UnknownError> get copyWith =>
      throw _privateConstructorUsedError;
}
