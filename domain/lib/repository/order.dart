import 'package:domain/domain.dart';

abstract class Repository {
  Future<void> saveSenderDetails(
    Sender sender,
  );
  Future<List<Sender>> fetchSenderDetails();

  Future<void> saveRecipientDetails(
    Recipient sender,
  );
  Future<List<Recipient>> fetchRecipientDetails();
}
