import 'package:auto_route/auto_route.dart' as AutoRoute;
import 'package:project_1/pages/homeNav.dart';
import 'package:project_1/pages/listOfPost.dart';
import 'package:project_1/pages/locationNav.dart';
import 'package:project_1/pages/homePageTabs/internationalParcels.dart';
import 'package:project_1/pages/homePageTabs/location.dart';

import '../pages/npShopping.dart';
import '../pages/homePage.dart';
import '../pages/homePageTabs/home.dart';
import '../pages/homePageTabs/myParcels.dart';

abstract class $AppRouter extends AutoRoute.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, AutoRoute.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return AutoRoute.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoute.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Home(),
      );
    },
    HomeNavRoute.name: (routeData) {
      return AutoRoute.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeNav(),
      );
    },
    InterParcelRoute.name: (routeData) {
      return AutoRoute.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InternationalParcels(),
      );
    },
    LocationRoute.name: (routeData) {
      return AutoRoute.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Location(),
      );
    },
    ListOfPostRoute.name: (routeData) {
      return AutoRoute.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ListOfPost(),
      );
    },
    LocationNavRoute.name: (routeData) {
      return AutoRoute.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LocationNav(),
      );
    },
    ParcelsRoute.name: (routeData) {
      return AutoRoute.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Parcels(),
      );
    },
    NPShoppingRoute.name: (routeData) {
      return AutoRoute.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NPShopping(),
      );
    },
  };
}

class HomePageRoute extends AutoRoute.PageRouteInfo<void> {
  const HomePageRoute({List<AutoRoute.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const AutoRoute.PageInfo<void> page = AutoRoute.PageInfo<void>(name);
}

class HomeRoute extends AutoRoute.PageRouteInfo<void> {
  const HomeRoute({List<AutoRoute.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const AutoRoute.PageInfo<void> page = AutoRoute.PageInfo<void>(name);
}

class HomeNavRoute extends AutoRoute.PageRouteInfo<void> {
  const HomeNavRoute({List<AutoRoute.PageRouteInfo>? children})
      : super(
          HomeNavRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavRoute';

  static const AutoRoute.PageInfo<void> page = AutoRoute.PageInfo<void>(name);
}

class InterParcelRoute extends AutoRoute.PageRouteInfo<void> {
  const InterParcelRoute({List<AutoRoute.PageRouteInfo>? children})
      : super(
          InterParcelRoute.name,
          initialChildren: children,
        );

  static const String name = 'InterParcelRout';

  static const AutoRoute.PageInfo<void> page = AutoRoute.PageInfo<void>(name);
}

class LocationRoute extends AutoRoute.PageRouteInfo<void> {
  const LocationRoute({List<AutoRoute.PageRouteInfo>? children})
      : super(
          LocationRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocationRoute';

  static const AutoRoute.PageInfo<void> page = AutoRoute.PageInfo<void>(name);
}

class LocationNavRoute extends AutoRoute.PageRouteInfo<void> {
  const LocationNavRoute({List<AutoRoute.PageRouteInfo>? children})
      : super(
          LocationNavRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocationNavRoute';

  static const AutoRoute.PageInfo<void> page = AutoRoute.PageInfo<void>(name);
}

class ListOfPostRoute extends AutoRoute.PageRouteInfo<void> {
  const ListOfPostRoute({List<AutoRoute.PageRouteInfo>? children})
      : super(
          ListOfPostRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListOfPostRoute';

  static const AutoRoute.PageInfo<void> page = AutoRoute.PageInfo<void>(name);
}

class ParcelsRoute extends AutoRoute.PageRouteInfo<void> {
  const ParcelsRoute({List<AutoRoute.PageRouteInfo>? children})
      : super(
          ParcelsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ParcelsRoute';

  static const AutoRoute.PageInfo<void> page = AutoRoute.PageInfo<void>(name);
}

class NPShoppingRoute extends AutoRoute.PageRouteInfo<void> {
  const NPShoppingRoute({List<AutoRoute.PageRouteInfo>? children})
      : super(
          NPShoppingRoute.name,
          initialChildren: children,
        );

  static const String name = 'NPShoppingRoute';

  static const AutoRoute.PageInfo<void> page = AutoRoute.PageInfo<void>(name);
}
