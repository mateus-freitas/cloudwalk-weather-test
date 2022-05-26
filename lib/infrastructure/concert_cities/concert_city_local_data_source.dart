import 'dart:convert';
import 'dart:io';
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
      final fileAsString =
          await File('assets/concert_cities.json').readAsString();
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
