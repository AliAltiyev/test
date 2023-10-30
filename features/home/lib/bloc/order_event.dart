part of 'order_bloc.dart';

@immutable
abstract class OrderEvent extends Equatable {}

final class SaveSenderDetailsEvent extends OrderEvent {
  final Sender sender;

  SaveSenderDetailsEvent({
    required this.sender,
  });

  @override
  List<Object?> get props => <Object?>[
        sender,
      ];
}

final class SelectAddressEvent extends OrderEvent {
  @override
  List<Object?> get props => <Object?>[];
}

final class OnPopEvent extends OrderEvent {
  @override
  List<Object?> get props => <Object?>[];
}
