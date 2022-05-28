// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_and_weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DateAndWeatherDto _$$_DateAndWeatherDtoFromJson(Map<String, dynamic> json) =>
    _$_DateAndWeatherDto(
      dateText: json['dt_txt'] as String,
      weather: _weatherFromjson(json['main'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DateAndWeatherDtoToJson(
        _$_DateAndWeatherDto instance) =>
    <String, dynamic>{
      'dt_txt': instance.dateText,
      'main': instance.weather,
    };
