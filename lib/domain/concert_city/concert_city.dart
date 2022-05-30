import 'package:freezed_annotation/freezed_annotation.dart';

part 'concert_city.freezed.dart';

@freezed
class ConcertCity with _$ConcertCity {
  const factory ConcertCity({
    required final String id,
    required final String name,
    required final String country,
    required final double longitude,
    required final double latitude,
  }) = _ConcertCity;
}
