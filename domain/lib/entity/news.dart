import 'package:domain/domain.dart';

class NewsEntity {
  final String? status;
  final int? totalResults;
  final List<ArticleEntity>? articles;

  NewsEntity({
    this.status,
    this.totalResults,
    this.articles,
  });
}
