import 'package:data/data.dart';

abstract class NewsApi {
  Future<List<Article>> getLatestArticles();
  Future<List<Article>> getFeaturedArticles();
  Future<Article> getArticle(String id);
}
