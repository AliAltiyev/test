import 'package:data/data.dart';
import 'package:data/mapper/base.dart';
import 'package:data/model/sender.dart';

final class SenderMapper implements BaseMapper<Sender, SenderModel> {
  @override
  Sender toEntity(SenderModel model) {
    return Sender(
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
  SenderModel toModel(Sender model) {
    return SenderModel(
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
