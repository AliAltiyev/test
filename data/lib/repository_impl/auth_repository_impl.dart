import 'package:data/data.dart';

final class AuthRepositoryImpl implements AuthRepository {
  final ApiService _apiService;

  AuthRepositoryImpl({
    required ApiService apiService,
  }) : _apiService = apiService;

  @override
  Future<AuthEntity> signIn({
    required String email,
    required String password,
  }) async {
    final AuthModel? response = await _apiService.login(
      email: email,
      password: password,
    );
    return AuthMapper().toEntity(
      response ?? const AuthModel.empty(),
    );
  }
}
