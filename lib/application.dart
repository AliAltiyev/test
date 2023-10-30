import 'package:test/export.dart';

class Application extends StatelessWidget {
  final AppRouter router = getIt<AppRouter>();

  Application({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderBloc>(
      create: (
        BuildContext context,
      ) {
        return OrderBloc(appRouter: getIt<AppRouter>());
      },
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: AutoRouterDelegate(router),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}
