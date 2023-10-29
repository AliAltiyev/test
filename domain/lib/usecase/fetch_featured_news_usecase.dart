import 'package:domain/domain.dart';

final class FetchFeaturedNewsUseCase {
  final Repository _repository;

  FetchFeaturedNewsUseCase({
    required Repository repository,
  }) : _repository = repository;

}
