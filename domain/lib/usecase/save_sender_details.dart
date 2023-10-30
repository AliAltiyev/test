import 'package:domain/domain.dart';

final class SaveSenderDetailsUseCase {
  final Repository _repository;

  SaveSenderDetailsUseCase({
    required Repository repository,
  }) : _repository = repository;

Future<void> call(SaveSenderDetailsUseCaseParams params) {
    return _repository.saveSenderDetails(
      params.sender,
    );
  }
}

class SaveSenderDetailsUseCaseParams extends Equatable {
  final Sender sender;

  const SaveSenderDetailsUseCaseParams({
    required this.sender,
  });

  @override
  List<String> get props => <String>[];
}
