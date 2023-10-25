import 'package:data/data.dart';
import 'package:data/data_source/locale/locale_storage.dart';
import 'package:data/data_source/locale/locale_storage_impl.dart';
import 'package:data/data_source/remote/api_service_impl.dart';

Future<void> initData() async {
  getIt.registerLazySingleton<LocaleStorageImpl>(
    () => LocaleStorageImpl(sharedPreferences: getIt<SharedPreferences>()),
  );
  getIt.registerLazySingleton<LocaleStorage>(
    () => LocaleStorageImpl(sharedPreferences: getIt<SharedPreferences>()),
  );

  getIt.registerLazySingleton<ApiServiceImpl>(
    () => ApiServiceImpl(
      dio: getIt<Dio>(),
      localeStorage: getIt<LocaleStorage>(),
    ),
  );

  getIt.registerLazySingleton<ApiService>(
    getIt,
  );
  
  

}
