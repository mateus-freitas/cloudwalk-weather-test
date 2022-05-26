import 'package:weather_test/infrastructure/networking/i_dio_client.dart';
import 'package:weather_test/infrastructure/networking/i_request_handler.dart';

class GetCurrentWeatherRequest extends IRequestHandler {
  final int movieId;
  final String? lang;

  GetCurrentWeatherRequest(this.movieId, this.lang);

  @override
  RequestMethod get method => RequestMethod.get;

  @override
  String get path => '/movie/$movieId/videos';

  @override
  Map<String, String>? get queryParameters =>
      lang != null ? {'language': lang!} : null;
}
