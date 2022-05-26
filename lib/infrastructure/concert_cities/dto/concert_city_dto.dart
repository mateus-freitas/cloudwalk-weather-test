import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_test/domain/concert_city/concert_city.dart';

part 'concert_city_dto.freezed.dart';
part 'concert_city_dto.g.dart';

@freezed
class ConcertCityDto with _$ConcertCityDto {
  const factory ConcertCityDto({
    required String name,
    required String country,
    required double longitude,
    required double latitude,
  }) = _ConcertCityDto;

  factory ConcertCityDto.fromJson(Map<String, dynamic> json) =>
      _$ConcertCityDtoFromJson(json);
}

extension ConcertCityDtoX on ConcertCityDto {
  ConcertCity toDomain() => ConcertCity(
      name: name, country: country, longitude: longitude, latitude: latitude);
}
