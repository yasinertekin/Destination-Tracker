import 'package:auto_route/auto_route.dart';
import 'package:shared_preferences_case/product/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')

/// AppRouter
final class AppRouter extends $AppRouter {
  @override
  List<AdaptiveRoute> get routes => [
        AdaptiveRoute(
          page: NavBarRoute.page,
          initial: true,
          children: [
            AdaptiveRoute(
              page: HomeRoute.page,
            ),
            AdaptiveRoute(
              page: VisitedRoute.page,
            ),
          ],
        ),
        AdaptiveRoute(
          page: AddDestinationRoute.page,
          path: '/add-destination',
        ),
      ];
}
