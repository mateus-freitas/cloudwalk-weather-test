import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mockito/annotations.dart';
import 'package:weather_test/infrastructure/weather/weather_local_data_source.dart';
import 'weather_local_data_source_test.mocks.dart';

@GenerateMocks([HiveInterface])
void main() {
  late MockHiveInterface mockHive;
  late WeatherLocalDataSourceImpl dataSource;

  setUp(() {
    mockHive = MockHiveInterface();
    dataSource = WeatherLocalDataSourceImpl(mockHive);
  });

  group('getLastWeatherForCity', () {
    test('should return a WeatherDto when there is valid data cached', () {});

    test(
        'should throw a [OpenWeatherException] and delete the data when cache has expired',
        () {});
  });

  group('getLastForecastForCity', () {
    test(
        'should return a list of DateAndWeatherDto when there is valid data cached',
        () {});

    test(
        'should throw a [OpenWeatherException] and delete the data when cache has expired',
        () {});
  });

  group('cacheCurrentWeather', () {});

  group('cacheForecast', () {});
}
