import 'package:core/core.dart';

final class ServerException extends Equatable {
  final String message;

  const ServerException({
    required this.message,
  });

  @override
  List<Object?> get props => <Object?>[
        message,
      ];
}
