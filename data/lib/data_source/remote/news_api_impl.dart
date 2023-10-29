import 'dart:io';

import 'package:data/data.dart';

final class NewsApiImpl implements NewsApi {
  final DioConfig _dioConfig;
  final DateFormatter _dateFormatter;

  NewsApiImpl({
    required DioConfig dioConfig,
    required DateFormatter dateFormatter,
  })  : _dioConfig = dioConfig,
        _dateFormatter = dateFormatter;

  @override
  Future<Article> getArticle(String id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Article>> getFeaturedArticles() async {
    try {
      final Response<dynamic> response = await _dioConfig.dio.get(
        ApiConstants.fetchEverything,
        queryParameters: <String, String>{
          'from': '2023-10-25',
          'to': '2023-10-25',
          'sortBy': 'popularity',
          'apiKey': ApiConstants.apiKey,
        },
      );
      if (response.statusCode == HttpStatus.ok && response.data != null) {
        final List<dynamic> articleData = response.data['articles'];
        final List<Article> articles =
            articleData.map((dynamic item) => Article.fromJson(item)).toList();
        //!Remove
        AppLogger().logDebug(articleData.toString());
        return articles;
      }
    } catch (e) {
      // Handle exceptions here
    }
    return <Article>[];
  }

  @override
  Future<List<Article>> getLatestArticles() async {
    throw UnimplementedError();
  }
}
