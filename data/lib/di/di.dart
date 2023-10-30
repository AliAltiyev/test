import 'package:data/data.dart';
import 'package:data/data_source/remote/order/order_reposiotry.dart';
import 'package:data/data_source/remote/order/order_repository_impl.dart';
import 'package:data/repository_impl/repository_impl.dart';

Future<void> initData() async {
  
  //Repository

  getIt.registerLazySingleton<OrderRepository>(
    () {
      return OrderRepositoryImpl(
        firestore: getIt<FirebaseFirestore>(),
      );
    },
  );


  getIt.registerLazySingleton<RepositoryImpl>(
    () {
      return RepositoryImpl(
        orderRepository: getIt<OrderRepository>(),
      );
    },
  );
    
getIt.registerLazySingleton<Repository>(
    () {
      return RepositoryImpl(
        orderRepository: getIt<OrderRepository>(),
      );
    },
  );
  
  //UseCases
  getIt.registerLazySingleton<SaveSenderDetailsUseCase>(
    () {
      return SaveSenderDetailsUseCase(
        repository: getIt<RepositoryImpl>(),
      );
    },
  );




}
