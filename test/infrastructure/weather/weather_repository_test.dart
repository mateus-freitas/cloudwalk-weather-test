import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:weather_test/core/platform/network_info.dart';
import 'package:weather_test/infrastructure/weather/weather_local_data_source.dart';
import 'package:weather_test/infrastructure/weather/weather_remote_data_source.dart';
import 'package:weather_test/infrastructure/weather/weather_repository_impl.dart';
import 'weather_repository_test.mocks.dart';

@GenerateMocks(
    [WeatherRemoteDataSourceImpl, NetworkInfo, WeatherLocalDataSourceImpl])
void main() {
  late WeatherRepositoryImpl repository;
  late MockWeatherRemoteDataSourceImpl remoteDataSource;
  late MockWeatherLocalDataSourceImpl mockLocalDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    remoteDataSource = MockWeatherRemoteDataSourceImpl();
    mockLocalDataSource = MockWeatherLocalDataSourceImpl();
    mockNetworkInfo = MockNetworkInfo();
    repository = WeatherRepositoryImpl(
        remoteDataSource, mockLocalDataSource, mockNetworkInfo);
  });

  group('getCurrentWeather', () {
    test('should fetch data from the data source', () {});

    test('should return Weather when the call is successful', () {});

    test('should return a OpenWeatherFailure when the call is not successful',
        () {});
  });
}
