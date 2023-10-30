// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    Sender_details.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SenderDetailsScreen(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 1000,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SelectAddress.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SelectAddressScreen(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 1000,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          Sender_details.name,
          path: '/',
        ),
        RouteConfig(
          SelectAddress.name,
          path: 'select_address',
        ),
      ];
}

/// generated route for
/// [SenderDetailsScreen]
class Sender_details extends PageRouteInfo<void> {
  const Sender_details()
      : super(
          Sender_details.name,
          path: '/',
        );

  static const String name = 'Sender_details';
}

/// generated route for
/// [SelectAddressScreen]
class SelectAddress extends PageRouteInfo<void> {
  const SelectAddress()
      : super(
          SelectAddress.name,
          path: 'select_address',
        );

  static const String name = 'SelectAddress';
}
