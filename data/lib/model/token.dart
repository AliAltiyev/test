import 'package:data/data.dart';
part 'token.g.dart';

@JsonSerializable()
final class TokenModel extends Equatable {
  @JsonKey()
  final String accessToken;
  @JsonKey()
  final String refreshToken;

  const TokenModel({
    required this.accessToken,
    required this.refreshToken,
  });

  const TokenModel.empty()
      : this(
          accessToken: '',
          refreshToken: '',
        );

  factory TokenModel.fromJson(Map<String, dynamic> json) =>
      _$TokenModelFromJson(json);

  Map<String, dynamic> toJson(TokenModel model) => _$TokenModelToJson(model);

  @override
  List<Object?> get props => <Object?>[
        accessToken,
        refreshToken,
      ];
}
