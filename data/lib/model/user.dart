import 'package:data/data.dart';

part 'user.g.dart';

@JsonSerializable()
final class UserModel extends Equatable {
  final String email;
  final String password;
  final int? id;

  const UserModel({
    required this.id,
    required this.email,
    required this.password,
  });

  const UserModel.empty()
      : this(
          id: 0,
          email: '',
          password: '',
        );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson(UserModel model) => _$UserModelToJson(model);

  @override
  List<Object?> get props => <Object?>[
        id,
        email,
        password,
      ];
}
