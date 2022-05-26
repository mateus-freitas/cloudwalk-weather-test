import 'package:dio/dio.dart';
import 'package:weather_test/infrastructure/core/constants.dart';
import 'package:weather_test/infrastructure/networking/i_request_handler.dart';

enum RequestMethod {
  options,
  get,
  head,
  post,
  put,
  patch,
  delete,
  trace,
  connect
}

abstract class IDioClient {
  int get baseConnectTimeout;

  int get baseReceiveTimeout;

  String get baseUrl;

  Map<String, String> get baseQueryParameters => {};

  String get baseContentType;

  Map<String, String>? get baseHeaders;

  Future<Dio> _build() async {
    BaseOptions options = BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: baseConnectTimeout,
        receiveTimeout: baseReceiveTimeout,
        headers: baseHeaders,
        queryParameters: baseQueryParameters,
        contentType: baseContentType);
    Dio dio = Dio(options);
    if (isDev) {
      dio.interceptors.add(LogInterceptor());
    }
    return dio;
  }

  Future<Response<dynamic>> perform(IRequestHandler request) async {
    try {
      Dio dio = await _build();
      Response<dynamic> response = await dio.request<dynamic>(request.path,
          data: request.data,
          queryParameters: request.queryParameters,
          options: Options(method: request.method.name));

      return response;
    } catch (_) {
      rethrow;
    }
  }
}
