import 'package:data/data.dart';

final class RepositoryImpl implements Repository {
  final NewsApi _api;

  RepositoryImpl({
    required NewsApi api,
  }) : _api = api;

  @override
  Future<ArticleEntity> getArticle(String id) {
    // TODO: implement getArticle
    throw UnimplementedError();
  }

  @override
  Future<List<ArticleEntity>> getFeaturedArticles() async {
    final List<Article> response = await _api.getFeaturedArticles();
    return ArticleMapper().toEntity(response);
  }

  @override
  Future<List<ArticleEntity>> getLatestArticles() {
    // TODO: implement getLatestArticles
    throw UnimplementedError();
  }
}
