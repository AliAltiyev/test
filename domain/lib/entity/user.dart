import 'package:domain/domain.dart';

final class UserEntity extends Equatable {
  final String email;
  final String password;
  final int? id;

  const UserEntity({
    required this.password,
    required this.email,
    this.id,
  });

  @override
  List<Object?> get props => <Object?>[
        password,
        email,
        id,
      ];
}
