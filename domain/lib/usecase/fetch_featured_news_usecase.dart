import 'package:domain/domain.dart';

final class FetchFeaturedNewsUseCase {
  final Repository _repository;

  FetchFeaturedNewsUseCase({
    required Repository authRepository,
  }) : _repository = authRepository;

  Future<List<ArticleEntity>> call() async {
    return await _repository.getFeaturedArticles();
  }
}
