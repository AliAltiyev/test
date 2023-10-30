import 'package:navigation/navigation.dart';

part 'app_router.gr.dart';

const int _duration = 1000;

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      maintainState: true,
      name: 'sender_details',
      page: SenderDetails,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: _duration,
      path: '/',
    ),
    CustomRoute(
      maintainState: true,
      path: 'select_address',
      name: 'SelectAddress',
      page: SelectAddressScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: _duration,
    ),
  ],
)
class AppRouter extends _$AppRouter {}

class EmptyPageRouter extends AutoRouter {
  const EmptyPageRouter({
    super.key,
  });
}
