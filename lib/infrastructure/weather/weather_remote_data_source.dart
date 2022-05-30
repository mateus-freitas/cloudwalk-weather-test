import 'package:injectable/injectable.dart';
import 'package:weather_test/core/error/exceptions.dart';
import 'package:weather_test/domain/concert_city/concert_city.dart';
import 'package:weather_test/infrastructure/networking/i_dio_client.dart';
import 'package:weather_test/infrastructure/weather/dto/date_and_weather_dto.dart';
import 'package:weather_test/infrastructure/weather/dto/weather_dto.dart';
import 'package:weather_test/networking/requests/get_current_weather_request.dart';
import 'package:weather_test/networking/requests/get_forecast_request.dart';
import 'package:weather_test/networking/open_weather_client.dart';

abstract class IWeatherRemoteDataSource {
  /// Performs a [GetCurrentWeatherRequest] call to TMDB API
  ///
  /// Throws a [OpenWeatherException] for all possible errors
  Future<WeatherDto> getCurrentWeather(ConcertCity city, String? lang);

  /// Performs a [GetForecastWeatherRequest] call to TMDB API
  ///
  /// Throws a [OpenWeatherException] for all possible errors
  Future<List<DateAndWeatherDto>> getForecastForCity(
      ConcertCity city, String? lang);
}

@Injectable(as: IWeatherRemoteDataSource)
class WeatherRemoteDataSourceImpl implements IWeatherRemoteDataSource {
  final IDioClient _client;

  WeatherRemoteDataSourceImpl(@Named.from(OpenWeatherClient) this._client);

  @override
  Future<WeatherDto> getCurrentWeather(ConcertCity city, String? lang) async {
    try {
      final request =
          GetCurrentWeatherRequest(city.latitude, city.longitude, lang);
      final response = await _client.perform(request);
      final mainTemp = response.data?['main'];
      if (mainTemp is! Map<String, dynamic>) {
        throw OpenWeatherException(code: -1);
      }
      return WeatherDto.fromJson(mainTemp);
    } on OpenWeatherException catch (_) {
      rethrow;
    } catch (e) {
      print(e);
      throw OpenWeatherException(code: -1);
    }
  }

  @override
  Future<List<DateAndWeatherDto>> getForecastForCity(
      ConcertCity city, String? lang) async {
    try {
      final request = GetForecastRequest(city.latitude, city.longitude, lang);
      final response = await _client.perform(request);
      final temps = response.data?['list'];
      if (temps is! List) {
        throw OpenWeatherException(code: -1);
      }
      return temps.map((e) => DateAndWeatherDto.fromJson(e)).toList();
    } on OpenWeatherException catch (_) {
      rethrow;
    } catch (e) {
      print(e);
      throw OpenWeatherException(code: -1);
    }
  }
}
