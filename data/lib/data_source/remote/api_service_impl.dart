import 'package:data/data.dart';
import 'package:data/data_source/locale/locale_storage.dart';
import 'package:data/data_source/remote/interceptor.dart';
import 'package:data/model/auth.dart';
import 'package:data/model/user.dart';

final class ApiServiceImpl implements ApiService {
  final Dio _dio;
  final LocaleStorage _localeStorage;

  ApiServiceImpl({
    required Dio dio,
    required LocaleStorage localeStorage,
  })  : _dio = dio,
        _localeStorage = localeStorage {
    _dio.interceptors.add(
      DioInterceptor(
        localeStorage: _localeStorage,
        dio: _dio,
      ),
    );
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }

  @override
  Future<AuthModel?> login({
    required String email,
    required String password,
  }) async {

      try {
        final Map<String, String> data = <String, String>{
          'email': email,
          'password': password
        };
        final Response<dynamic> response = await _dio.post(
          ApiConstants.loginEndpoint,
          data: data,
        );
        if (response.statusCode == StatusCode.statusCode_200) {
          final AuthModel model = AuthModel.fromJson(response.data);

          await _localeStorage.save(
            TokenType.accessToken.name,
            model.token.accessToken,
          );
          await _localeStorage.save(
            TokenType.requestToken.name,
            model.token.refreshToken,
          );
          return model;
        }

      } on DioException catch (error) {
        if (error.response?.statusCode == StatusCode.statusCode_200) {
          throw const ServerException(message: 'invalid credential');
        } else {
          throw const ServerException(message: 'Internal server error');
        }
      } catch (error) {
        throw const ServerException(message: 'Unknown Exception');
      }
      return null;
    }
  }

