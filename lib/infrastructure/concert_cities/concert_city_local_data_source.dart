import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_test/core/error/exceptions.dart';
import 'package:weather_test/infrastructure/concert_cities/dto/concert_city_dto.dart';

abstract class IConcertCityLocalDataSource {
  /// Gets the list of cities from a local JSON file
  ///
  /// Throws a [CacheException] for all possible errors
  Future<List<ConcertCityDto>> getConcertCities();
}

@Injectable(as: IConcertCityLocalDataSource)
class ConcertyCityLocalDataSourceImpl implements IConcertCityLocalDataSource {
  @override
  Future<List<ConcertCityDto>> getConcertCities() async {
    try {
      // This is a provisory solution since Flutter Web doesn't have access to
      // dart:io. Ideally we'd load it from a server
      final fileAsString = kIsWeb
          ? _citiesJsonStringWeb
          : await File('assets/concert_cities.json').readAsString();
      final jsonFile = json.decode(fileAsString);
      final citiesJson = jsonFile['cities'];
      if (citiesJson is List) {
        return citiesJson.map((e) => ConcertCityDto.fromJson(e)).toList();
      }
      throw CacheException();
    } on CacheException catch (e) {
      rethrow;
    } catch (e) {
      print(e);
      throw CacheException();
    }
  }
}

const _citiesJsonStringWeb = '''
{
    "cities": [
        {
            "name": "Silverstone", 
            "country": "United Kingdom",
            "longitude": 52.090586,
            "latitude": -1.025873
        },
        {
            "name": "São Paulo", 
            "country": "Brazil",
            "longitude": -23.562398,
            "latitude": -46.668755
        },
        {
            "name": "Melbourne", 
            "country": "Australia",
            "longitude": -37.821730,
            "latitude": 145.085324
        },
        {
            "name": "Monte Carlo", 
            "country": "Monaco",
            "longitude": 43.739691,
            "latitude": 7.427304
        }
    ]
}
''';
