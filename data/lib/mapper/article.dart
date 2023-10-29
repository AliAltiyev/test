import 'package:data/data.dart';
import 'package:data/mapper/base_list_mapper.dart';

final class ArticleMapper extends BaseListMapper<ArticleEntity, Article> {
  @override
  @override
  List<ArticleEntity> toEntity(List<Article> model) {
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

  @override
  List<Article> toModel(List<ArticleEntity> model) {
    return model
        .map((ArticleEntity element) => Article(
              author: element.author,
              content: element.content,
              description: element.description,
              publishedAt: element.publishedAt,
              source: _toSource(element.source),
              title: element.title,
              url: element.url,
              urlToImage: element.urlToImage,
            ))
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
