import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
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
          : await rootBundle.loadString('assets/concert_cities.json');
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
            "id": "city_1", 
            "name": "Silverstone", 
            "country": "United Kingdom",
            "latitude": 52.090586,
            "longitude": -1.025873
        },
        {
            "id": "city_2", 
            "name": "São Paulo", 
            "country": "Brazil",
            "latitude": -23.562398,
            "longitude": -46.668755
        },
        {
            "id": "city_3", 
            "name": "Melbourne", 
            "country": "Australia",
            "latitude": -37.821730,
            "longitude": 145.085324
        },
        {
            "id": "city_4", 
            "name": "Monte Carlo", 
            "country": "Monaco",
            "latitude": 43.739691,
            "longitude": 7.427304
        }
    ]
}
''';
