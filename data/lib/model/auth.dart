import 'package:data/data.dart';
import 'package:data/model/token.dart';
import 'package:data/model/user.dart';
part 'auth.g.dart';

@JsonSerializable()
final class AuthModel extends Equatable {
  @JsonKey()
  final TokenModel token;
  @JsonKey()
  final UserModel user;

  const AuthModel({
    required this.token,
    required this.user,
  });
  const AuthModel.empty()
      : this(
          token: const TokenModel.empty(),
          user: const UserModel.empty(),
        );

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  Map<String, dynamic> toJson(AuthModel model) => _$AuthModelToJson(model);

  @override
  List<Object?> get props => <Object?>[
        token,
        user,
      ];
}
