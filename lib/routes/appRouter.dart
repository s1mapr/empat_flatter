import 'package:auto_route/auto_route.dart';

import 'package:project_1/routes/appRouter.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomePageRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: HomeNavRoute.page,
              children: [
                AutoRoute(
                  page: HomeRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  page: NPShoppingRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: InterParcelRoute.page,
            ),
            AutoRoute(
              page: LocationNavRoute.page,
              children: [
                AutoRoute(page: LocationRoute.page, initial: true),
                AutoRoute(
                  page: ListOfPostRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: ParcelsRoute.page,
            ),
          ],
        ),
      ];
}
