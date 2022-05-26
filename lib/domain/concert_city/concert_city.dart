import 'package:freezed_annotation/freezed_annotation.dart';

part 'concert_city.freezed.dart';

@freezed
class ConcertCity with _$ConcertCity {
  const factory ConcertCity({
    required String name,
    required String country,
    required double longitude,
    required double latitude,
  }) = _ConcertCity;
}
