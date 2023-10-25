import 'package:data/data.dart';
import 'package:data/model/user.dart';

 class UserMapper implements BaseMapper<UserEntity, UserModel> {


  @override
   UserEntity toEntity(UserModel model) {
    return UserEntity(
      email: model.email,
      password: model.password,
      id: model.id,
    );
  }

  @override
  UserModel toModel(UserEntity model) {
    return UserModel(
      email: model.email,
      password: model.password,
      id: model.id,
    );
  }
}
