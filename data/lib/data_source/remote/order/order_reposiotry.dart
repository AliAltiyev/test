import 'package:data/model/recipient.dart';
import 'package:data/model/sender.dart';

abstract class OrderRepository {
  Future<void> saveSenderDetails(
    SenderModel sender,
  );
  Future<List<SenderModel>> fetchSenderDetails();

  Future<void> saveRecipientDetails(
    RecipientModel sender,
  );
  Future<List<RecipientModel>> fetchRecipientDetails();
}
