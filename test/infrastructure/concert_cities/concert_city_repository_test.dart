import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:weather_test/infrastructure/concert_cities/concert_city_local_data_source.dart';
import 'package:weather_test/infrastructure/concert_cities/concert_city_repository_impl.dart';
import 'concert_city_repository_test.mocks.dart';

@GenerateMocks([ConcertyCityLocalDataSourceImpl])
void main() {
  late MockConcertyCityLocalDataSourceImpl mockDataSource;
  late ConcertCityRepositoryImpl repository;

  setUp(() {
    mockDataSource = MockConcertyCityLocalDataSourceImpl();
    repository = ConcertCityRepositoryImpl(mockDataSource);
  });

  test('should get data from local data source', () {});

  test('should return a list of ConcertCity if successful', () {});

  test('should return a CacheFailure when theres an error', () {});
}
