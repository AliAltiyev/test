import 'package:data/data.dart';
import 'package:data/data_source/locale/locale_storage.dart';

final class DioInterceptor implements InterceptorsWrapper {
  final LocaleStorage _localeStorage;
  final Dio _dio;

  DioInterceptor({
    required LocaleStorage localeStorage,
    required Dio dio,
  })  : _localeStorage = localeStorage,
        _dio = dio;

  @override
  Future<void> onError(
    DioException error,
    ErrorInterceptorHandler handler,
  ) async {
    if (error.response?.statusCode == StatusCode.statusCode_401) {
      final String? newToken = await refreshToken();
      if (newToken != null) {
        _dio.options.headers['Authorization'] = 'bearer $newToken';
        return handler.resolve(await _dio.fetch(error.requestOptions));
      }
    }
    return handler.next(error);
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['Accept'] = 'application/json';
    String? token = await _localeStorage.get('access');
    options.headers['Authorization'] = 'bearer $token';
    return handler.next(options);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    // TODO: implement onResponse
  }

  Future<String?> refreshToken() async {
    try {
      final String refreshToken =
          await _localeStorage.get(TokenType.requestToken.name);
      final Response<dynamic> response = await _dio.post<dynamic>(
        'refresh_token',
        data: <String, String>{'refresh_token': refreshToken},
      );
      final dynamic newAccessToken = response.data['access_token'];
      _localeStorage.save(TokenType.accessToken.name, newAccessToken);
    } catch (e) {
      throw DioException(requestOptions: RequestOptions());
    }

    return null;
  }
}
