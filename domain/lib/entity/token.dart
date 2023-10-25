
import 'package:domain/domain.dart';

final class TokenEntity extends Equatable {
  final String accessToken;
  final String refreshToken;

  const TokenEntity({
    required this.accessToken,
    required this.refreshToken,
  });


  @override
  List<Object?> get props => <Object?>[
        accessToken,
        refreshToken,
      ];
}
