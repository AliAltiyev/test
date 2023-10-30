import 'package:data/data.dart';
import 'package:data/data_source/remote/order/order_reposiotry.dart';
import 'package:data/model/recipient.dart';
import 'package:data/model/sender.dart';

final class OrderRepositoryImpl implements OrderRepository {
  final FirebaseFirestore _firestore;

  OrderRepositoryImpl({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  @override
  Future<List<RecipientModel>> fetchRecipientDetails() {
    // TODO: implement fetchRecipientDetails
    throw UnimplementedError();
  }

  @override
  Future<List<SenderModel>> fetchSenderDetails() {
    // TODO: implement fetchSenderDetails
    throw UnimplementedError();
  }

  @override
  Future<void> saveRecipientDetails(RecipientModel recipient) async {
    try {
      final CollectionReference<Map<String, dynamic>> ordersCollection =
          _firestore.collection(FirebaseCollection.senders.name);
      Map<String, dynamic> sendersData = recipient.toJson();
      await ordersCollection.add(
        sendersData,
      );
    } on FirebaseException catch (e) {
      throw ServerFailure(
        message: e.message ?? '',
        statusCode: e.toString(),
      );
    }
  }

  @override
  Future<void> saveSenderDetails(SenderModel sender) async {
    try {
      final CollectionReference<Map<String, dynamic>> recipientsCollection =
          _firestore.collection(
        FirebaseCollection.recipients.name,
      );
      Map<String, dynamic> recipientData = sender.toJson();
      await recipientsCollection.add(recipientData);
    } on FirebaseException catch (e) {
      throw ServerFailure(
        message: e.message ?? '',
        statusCode: e.toString(),
      );
    }
  }
}
