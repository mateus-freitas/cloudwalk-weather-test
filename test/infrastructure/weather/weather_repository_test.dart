import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:weather_test/infrastructure/weather/weather_remote_data_source.dart';
import 'package:weather_test/infrastructure/weather/weather_repository_impl.dart';
import 'weather_repository_test.mocks.dart';

@GenerateMocks([WeatherRemoteDataSourceImpl])
void main() {
  late WeatherRepositoryImpl repository;
  late MockWeatherRemoteDataSourceImpl remoteDataSource;

  setUp(() {
    remoteDataSource = MockWeatherRemoteDataSourceImpl();
    repository = WeatherRepositoryImpl(remoteDataSource);
  });

  group('getCurrentWeather', () {
    test('should fetch data from the data source', () {});

    test('should return Weather when the call is successful', () {});

    test('should return a OpenWeatherFailure when the call is not successful',
        () {});
  });
}
