import 'package:domain/domain.dart';

final class AuthEntity extends Equatable {
  final TokenEntity token;
  final UserEntity user;

  const AuthEntity({
    required this.token,
    required this.user,
  });

  @override
  List<Object?> get props => <Object?>[
        token,
        user,
      ];
}
