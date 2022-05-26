import 'package:injectable/injectable.dart';
import 'package:weather_test/core/error/exceptions.dart';
import 'package:weather_test/domain/concert_city/concert_city.dart';
import 'package:weather_test/infrastructure/networking/i_dio_client.dart';
import 'package:weather_test/infrastructure/weather/weather_dto.dart';
import 'package:weather_test/networking/requests/get_current_weather_request.dart';
import 'package:weather_test/networking/tmdb_dio_client.dart';

abstract class IWeatherRemoteDataSource {
  /// Performs a [GetCurrentWeatherRequest] call to TMDB API
  ///
  /// Throws a [OpenWeatherException] for all possible errors
  Future<WeatherDto> getCurrentWeather(ConcertCity city, String? lang);

  /// Performs a [GetForecastWeatherRequest] call to TMDB API
  ///
  /// Throws a [OpenWeatherException] for all possible errors
  Future<WeatherDto> getForecastForCity(ConcertCity city, String? lang);
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
  Future<WeatherDto> getForecastForCity(ConcertCity city, String? lang) {
    // TODO: implement getForecastForCity
    throw UnimplementedError();
  }
}
