// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipientModel _$RecipientModelFromJson(Map<String, dynamic> json) =>
    RecipientModel(
      username: json['username'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      country: json['country'] as String,
      city: json['city'] as String,
      address: json['address'] as String,
      postCode: json['postCode'] as String,
    );

Map<String, dynamic> _$RecipientModelToJson(RecipientModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'postCode': instance.postCode,
    };
