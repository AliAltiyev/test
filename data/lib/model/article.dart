import 'package:data/data.dart';
part 'article.g.dart';

@JsonSerializable()
class Article {
  @JsonKey(toJson: _$SourceToJson, fromJson: _$SourceFromJson)
  final Source? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final DateTime? publishedAt;
  final String? content;

  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return _$ArticleFromJson(json);
  }

  static Map<String, dynamic> toJson({
    required Article article,
  }) {
    return _$ArticleToJson(article);
  }

  static Source _$SourceFromJson(Map<String, dynamic>? json) => Source(
        id: json?['id'] as String?,
        name: json?['name'] as String?,
      );

  static Map<String, dynamic> _$SourceToJson(Source? instance) =>
      <String, dynamic>{
        'id': instance?.id,
        'name': instance?.name,
      };
}
