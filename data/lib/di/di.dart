import 'package:data/data.dart';
import 'package:data/repository_impl/repository_impl.dart';

Future<void> initData() async {
  await getIt.isReady<SharedPreferences>();

  getIt.registerLazySingleton<DateFormatter>(() => DateFormatter());
  getIt.registerLazySingleton<DioConfig>(() => DioConfig());
  getIt.registerLazySingleton<LocaleStorageImpl>(
    () => LocaleStorageImpl(sharedPreferences: getIt<SharedPreferences>()),
  );
  getIt.registerLazySingleton<LocaleStorage>(
    () => LocaleStorageImpl(sharedPreferences: getIt<SharedPreferences>()),
  );

  getIt.registerLazySingleton<NewsApiImpl>(
    () => NewsApiImpl(
      dioConfig: getIt<DioConfig>(),
      dateFormatter: getIt<DateFormatter>(),
    ),
  );

  getIt.registerLazySingleton<NewsApi>(
    () => NewsApiImpl(
      dioConfig: getIt<DioConfig>(),
      dateFormatter: getIt<DateFormatter>(),
    ),
  );

  getIt.registerLazySingleton<Repository>(
    () => RepositoryImpl(
      api: getIt<NewsApi>(),
    ),
  );

  getIt.registerLazySingleton<FetchFeaturedNewsUseCase>(
    () => FetchFeaturedNewsUseCase(
      authRepository: getIt<Repository>(),
    ),
  );
}
