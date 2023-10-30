import 'package:navigation/navigation.dart';

Future<void> initNavigation() async {
  getIt.registerSingleton<AppRouter>(
    AppRouter(),
  );
}
