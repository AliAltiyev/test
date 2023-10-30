import 'dart:core';

import 'package:domain/domain.dart';
part 'recipient.g.dart';

@JsonSerializable()
final class RecipientModel extends Equatable {
  final String username;
  final String email;
  final String phoneNumber;
  final String country;
  final String city;
  final String address;
  final String postCode;

  const RecipientModel({
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.country,
    required this.city,
    required this.address,
    required this.postCode,
  });

  factory RecipientModel.fromJson(Map<String, dynamic> json) {
    return _$RecipientModelFromJson(json);
  }

   Map<String, dynamic> toJson() {
    return _$RecipientModelToJson(this);
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
