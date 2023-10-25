import 'package:data/data.dart';

abstract class ApiService {
  Future<AuthModel?> login({
    required String email,
    required String password,
  });
  Future<void> signOut();
}
