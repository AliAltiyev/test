import 'package:data/data.dart';

part 'dio_config.dart';

final InterceptorsWrapper dioLoggerInterceptor = InterceptorsWrapper(
  onRequest: (
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    String headers = '';
    options.headers.forEach((
      String key,
      dynamic value,
    ) {
      headers += '| $key: $value';
    });
    AppLogger().logDebug('''NETWORK REQUEST: ${options.method} ${options.uri}
    | ${options.data.toString()}
    | Headers:\n$headers''');
    handler.next(options);
  },
  onResponse: (
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) async {
    AppLogger().logDebug(
        '''NETWORK RESPONSE [code ${response.statusCode}]: ${response.data.toString()}''');
    handler.next(response);
  },
  onError: (
    DioException error,
    ErrorInterceptorHandler handler,
  ) async {
    AppLogger().logError(
      '''NETWORK ERROR: ${error.error}: ${error.response?.toString()}\npath=${error.requestOptions.path}''',
    );
    handler.next(error);
  },
);
