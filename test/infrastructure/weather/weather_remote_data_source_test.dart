import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:weather_test/infrastructure/weather/weather_remote_data_source.dart';
import 'package:weather_test/networking/tmdb_dio_client.dart';
import 'weather_remote_data_source_test.mocks.dart';

@GenerateMocks([OpenWeatherClient])
void main() {
  late MockOpenWeatherClient mockClient;
  late WeatherRemoteDataSourceImpl dataSource;

  setUp(() {
    mockClient = MockOpenWeatherClient();
    dataSource = WeatherRemoteDataSourceImpl(mockClient);
  });

  group('getCurrentWeather', () {
    test('should throw a [OpenWeatherException] when call to API fails', () {});

    test('should return a WeatherDto when call to API is successful', () {});
  });

  group('getForecastForCity', () {
    test('should throw a [OpenWeatherException] when call to API fails', () {});

    test('should return a list of WeatherDto when call to API is successful',
        () {});
  });
}
