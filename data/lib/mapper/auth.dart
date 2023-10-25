import 'package:data/data.dart';
import 'package:data/mapper/token.dart';
import 'package:data/mapper/user.dart';

class AuthMapper implements BaseMapper<AuthEntity, AuthModel> {
  @override
  AuthEntity toEntity(AuthModel model) {
    return AuthEntity(
      token: TokenMapper().toEntity(model.token),
      user: UserMapper().toEntity(model.user),
    );
  }

  @override
  AuthModel toModel(AuthEntity model) {
    return AuthModel(
      token: TokenMapper().toModel(model.token),
      user: UserMapper().toModel(model.user),
    );
  }
}
