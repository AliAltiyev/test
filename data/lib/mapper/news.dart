import 'package:data/data.dart';

final class NewsMapper extends BaseMapper<News, NewsEntity> {
  @override
  News toEntity(NewsEntity model) {
    return News(
      articles: _toArticle(model.articles ?? <ArticleEntity>[]),
      status: model.status,
    );
  }

  @override
  NewsEntity toModel(News model) {
    return NewsEntity(
      articles: _toArticleEntity(model.articles ?? <Article>[]),
      status: model.status,
    );
  }

  List<ArticleEntity> _toArticleEntity(List<Article> model) {
    return model
        .map((Article element) => ArticleEntity(
              author: element.author,
              content: element.content,
              description: element.description,
              publishedAt: element.publishedAt,
              source: _toSourceEntity(element.source),
              title: element.title,
              url: element.url,
              urlToImage: element.urlToImage,
            ))
        .toList();
  }

  List<Article> _toArticle(List<ArticleEntity> model) {
    return model
        .map(
          (ArticleEntity element) => Article(
            author: element.author,
            content: element.content,
            description: element.description,
            publishedAt: element.publishedAt,
            source: _toSource(element.source),
            title: element.title,
            url: element.url,
            urlToImage: element.urlToImage,
          ),
        )
        .toList();
  }

  Source _toSource(SourceEntity? model) {
    return Source(
      id: model?.id,
      name: model?.name,
    );
  }

  SourceEntity _toSourceEntity(Source? model) {
    return SourceEntity(
      id: model?.id,
      name: model?.name,
    );
  }
}
