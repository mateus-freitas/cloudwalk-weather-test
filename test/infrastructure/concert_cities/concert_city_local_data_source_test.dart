import 'package:flutter_test/flutter_test.dart';
import 'package:weather_test/infrastructure/concert_cities/concert_city_local_data_source.dart';
import 'package:weather_test/infrastructure/concert_cities/concert_city_repository_impl.dart';

void main() {
  late ConcertyCityLocalDataSourceImpl dataSource;

  setUp(() {
    dataSource = ConcertyCityLocalDataSourceImpl();
  });

  test('should return a list of ConcertCityDto if successful', () {});

  test('should throw a CacheException when theres an error', () {});
}
