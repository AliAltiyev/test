// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) => News(
      status: json['status'] as String?,
      totalResults: json['totalResults'] as int?,
      articles: News._fromJsonArticle(json['articles'] as List<Article>?),
    );

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': News._toJsonArticle(instance.articles),
    };
