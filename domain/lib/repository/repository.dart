import 'package:domain/domain.dart';

abstract class Repository {
  
    Future<List<ArticleEntity>> getLatestArticles();
  Future<List<ArticleEntity>> getFeaturedArticles();
  Future<ArticleEntity> getArticle(String id);
  
}
