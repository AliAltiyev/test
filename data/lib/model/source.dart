import 'package:data/data.dart';

part 'source.g.dart';

@JsonSerializable()
class Source {
  final String? id;
  final String? name;

  Source({
    required this.id,
    required this.name,
  });

  factory Source.fromJson(Map<String, dynamic> json) {
    return _$SourceFromJson(json);
  }

  Map<String, dynamic> toJson({
    required Source source,
  }) {
    return _$SourceToJson(source);
  }
}
