import 'package:domain/domain.dart';

abstract class AuthRepository {
  Future<AuthEntity> signIn({
    required String email,
    required String password,
  });
}
