import 'package:domain/domain.dart';
part 'sender.g.dart';

@JsonSerializable()
final class SenderModel extends Equatable {
  final String username;
  final String email;
  final String phoneNumber;
  final String country;
  final String city;
  final String address;
  final String postCode;

  const SenderModel({
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.country,
    required this.city,
    required this.address,
    required this.postCode,
  });

  factory SenderModel.fromJson(Map<String, dynamic> json) {
    return _$SenderModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SenderModelToJson(this);
  }

  @override
  List<Object?> get props => <Object>[
        username,
        email,
        phoneNumber,
        country,
        city,
        address,
        postCode,
      ];
}
