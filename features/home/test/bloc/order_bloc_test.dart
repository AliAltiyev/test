import 'package:home/order.dart';

class MockSaveSenderDetailsUseCase extends Mock
    implements SaveSenderDetailsUseCase {}

class MockAppRouter extends Mock implements AppRouter {}

void main() {
  group('OrderBloc', () {
    late OrderBloc orderBloc;
    late MockSaveSenderDetailsUseCase mockSaveSenderDetailsUseCase;
    late MockAppRouter mockAppRouter;

    setUp(() {
      mockSaveSenderDetailsUseCase = MockSaveSenderDetailsUseCase();
      mockAppRouter = MockAppRouter();
      orderBloc = OrderBloc(
          appRouter: mockAppRouter,
          saveSenderDetailsUseCase: mockSaveSenderDetailsUseCase);
    });

    tearDown(() {
      orderBloc.close();
    });

    test('emits initial state when created', () {
      expect(orderBloc.state, equals(OrderState()));
    });

    blocTest<OrderBloc, OrderState>(
      'navigates to SelectAddress screen when SelectAddressEvent is added',
      build: () => orderBloc,
      act: (OrderBloc bloc) => bloc.add(SelectAddressEvent()),
      verify: (_) {
        verify(mockAppRouter.navigate(const SelectAddress())).called(1);
      },
    );
    blocTest<OrderBloc, OrderState>(
      'pops current screen when OnPopEvent is added',
      build: () => orderBloc,
      act: (OrderBloc bloc) => bloc.add(OnPopEvent()),
      verify: (_) {
        verify(mockAppRouter.pop()).called(1);
      },
    );
  });
}
