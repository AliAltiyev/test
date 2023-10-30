import 'package:data/data.dart';
import 'package:data/mapper/base.dart';
import 'package:data/model/recipient.dart';

final class RecipientMapper implements BaseMapper<Recipient, RecipientModel> {
  @override
  Recipient toEntity(RecipientModel model) {
    return Recipient(
      username: model.username,
      email: model.email,
      phoneNumber: model.phoneNumber,
      country: model.country,
      city: model.city,
      address: model.address,
      postCode: model.postCode,
    );
  }

  @override
  RecipientModel toModel(Recipient model) {
    return RecipientModel(
      username: model.username,
      email: model.email,
      phoneNumber: model.phoneNumber,
      country: model.country,
      city: model.city,
      address: model.address,
      postCode: model.postCode,
    );
  }
}
