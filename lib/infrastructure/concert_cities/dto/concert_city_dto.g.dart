// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concert_city_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConcertCityDto _$$_ConcertCityDtoFromJson(Map<String, dynamic> json) =>
    _$_ConcertCityDto(
      id: json['id'] as String,
      name: json['name'] as String,
      country: json['country'] as String,
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ConcertCityDtoToJson(_$_ConcertCityDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
