import 'package:weather_test/infrastructure/networking/i_dio_client.dart';
import 'package:weather_test/infrastructure/networking/i_request_handler.dart';

class GetForecastRequest extends IRequestHandler {
  final double lat;
  final double lon;
  final String? lang;

  GetForecastRequest(this.lat, this.lon, this.lang);

  @override
  RequestMethod get method => RequestMethod.get;

  @override
  String get path => '/forecast';

  @override
  Map<String, String>? get queryParameters => {
        'lat': lat.toString(),
        'lon': lon.toString(),
        if (lang != null) 'language': lang!
      };
}
