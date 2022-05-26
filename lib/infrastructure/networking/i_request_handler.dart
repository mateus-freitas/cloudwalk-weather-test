import 'package:weather_test/infrastructure/networking/i_dio_client.dart';

abstract class IRequestHandler {
  String get path;

  RequestMethod get method;

  Map<String, String>? get queryParameters;

  dynamic get data => <String, dynamic>{};
}
