import 'package:data/data.dart';
part 'news.g.dart';

@JsonSerializable()
class News {
  final String? status;
  final int? totalResults;
  @JsonKey(toJson: _toJsonArticle, fromJson: _fromJsonArticle)
  final List<Article>? articles;

  News({
    this.status,
    this.totalResults,
    this.articles,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return _$NewsFromJson(json);
  }

  Map<String, dynamic> toJson({
    required News news,
  }) {
    return _$NewsToJson(news);
  }

  static List<Article>? _fromJsonArticle(List<Article>? model) {
    return model;
  }

  static List<Article>? _toJsonArticle(List<Article>? model) {
    return model;
  }
}
