import 'package:data/data.dart';

class TokenMapper implements BaseMapper<TokenEntity, TokenModel> {
  @override
  TokenEntity toEntity(TokenModel model) {
    return TokenEntity(
      accessToken: model.accessToken,
      refreshToken: model.refreshToken,
    );
  }

  @override
  TokenModel toModel(TokenEntity model) {
    return TokenModel(
      accessToken: model.accessToken,
      refreshToken: model.refreshToken,
    );
  }
}
