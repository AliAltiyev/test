part of 'interceptor.dart';

class DioConfig {
  static const Duration timeoutDefault = Duration(milliseconds: 30000);

  late final Dio _dio;

  Dio get dio => _dio;

  DioConfig() {
    _dio = Dio()
      ..options.baseUrl = ApiConstants.baseUrl
      ..options.responseType = ResponseType.json
      ..options.sendTimeout = timeoutDefault
      ..options.receiveTimeout = timeoutDefault
      ..options.connectTimeout = timeoutDefault
      ..interceptors.add(dioLoggerInterceptor);
  }
}
