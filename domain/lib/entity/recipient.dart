import 'package:domain/domain.dart';

final class Recipient extends Equatable {
  final String username;
  final String email;
  final String phoneNumber;
  final String country;
  final String city;
  final String address;
  final String postCode;

  const Recipient({
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.country,
    required this.city,
    required this.address,
    required this.postCode,
  });

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
