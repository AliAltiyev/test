import 'dart:async';

import 'package:home/order.dart';
part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final AppRouter _appRouter;

  OrderBloc({
    required AppRouter appRouter,
  })  : _appRouter = appRouter,
        super(OrderState()) {
    on<SelectAddressEvent>(_onSelectAddressEvent);
    on<OnPopEvent>(_onPopEvent);
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
}
