import 'package:domain/domain.dart';

final class SignInUseCase {
  final AuthRepository _authRepository;

  SignInUseCase({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  Future<AuthEntity> call({
    required String email,
    required String password,
  }) {
    return _authRepository.signIn(
      email: email,
      password: password,
    );
  }
}
