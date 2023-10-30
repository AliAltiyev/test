import 'dart:async';

import 'package:home/order.dart';
part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final SaveSenderDetailsUseCase _saveSenderDetailsUseCase;
  final AppRouter _appRouter;

  OrderBloc(
      {required AppRouter appRouter,
      required SaveSenderDetailsUseCase saveSenderDetailsUseCase})
      : _appRouter = appRouter,
        _saveSenderDetailsUseCase = saveSenderDetailsUseCase,
        super(OrderState()) {
    on<SelectAddressEvent>(_onSelectAddressEvent);
    on<OnPopEvent>(_onPopEvent);
    on<SaveSenderDetailsEvent>(_onSaveSenderDetailsEvent);
  }

  Future<void> _onSelectAddressEvent(
    SelectAddressEvent event,
    Emitter<OrderState> emit,
  ) async {
    await _appRouter.navigate(const SelectAddress());
  }

  Future<void> _onPopEvent(
    OnPopEvent event,
    Emitter<OrderState> emit,
  ) async {
    await _appRouter.pop();
  }

  Future<void> _onSaveSenderDetailsEvent(
    SaveSenderDetailsEvent event,
    Emitter<OrderState> emit,
  ) async {
    await _saveSenderDetailsUseCase(
      SaveSenderDetailsUseCaseParams(
        sender: event.sender,
      ),
    );
  }
}
