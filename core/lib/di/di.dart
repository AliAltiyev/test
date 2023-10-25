import 'package:core/core.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> initCore() async {
  Future<SharedPreferences> getSharedPreferences() async {
    return await SharedPreferences.getInstance();
  }

  getIt.registerLazySingleton<Logger>(
    Logger.new,
  );

  getIt.registerLazySingletonAsync<SharedPreferences>(getSharedPreferences);

  final Dio dio = Dio(
    BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(milliseconds: 20000),
        contentType: 'application/json',
        followRedirects: true,
        receiveTimeout: const Duration(milliseconds: 30000),
        sendTimeout: const Duration(milliseconds: 30000)),
  );
  getIt.registerLazySingleton<Dio>(() => dio);
}
