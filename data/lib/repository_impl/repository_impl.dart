import 'package:data/data.dart';
import 'package:data/data_source/remote/order/order_reposiotry.dart';
import 'package:data/mapper/recipient.dart';
import 'package:data/mapper/sender.dart';
import 'package:data/model/recipient.dart';
import 'package:data/model/sender.dart';

final class RepositoryImpl implements Repository {
  final OrderRepository _orderRepository;

  RepositoryImpl({
    required OrderRepository orderRepository,
  }) : _orderRepository = orderRepository;

  @override
  Future<List<Recipient>> fetchRecipientDetails() {
    // TODO: implement fetchRecipientDetails
    throw UnimplementedError();
  }

  @override
  Future<List<Sender>> fetchSenderDetails() {
    // TODO: implement fetchSenderDetails
    throw UnimplementedError();
  }

  @override
  Future<void> saveRecipientDetails(Recipient recipient) async {
    final RecipientModel data = RecipientMapper().toModel(recipient);
    return await _orderRepository.saveRecipientDetails(data);
  }

  @override
  Future<void> saveSenderDetails(Sender sender) async {
    final SenderModel data = SenderMapper().toModel(sender);
    return await _orderRepository.saveSenderDetails(data);
  }
}
