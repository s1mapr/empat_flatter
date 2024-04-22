import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project_1/pages/homePageTabs/home.dart';
import 'package:project_1/pages/homePageTabs/myParcels.dart';
import 'package:project_1/pages/homePageTabs/internationalParcels.dart';
import 'package:project_1/pages/homePageTabs/location.dart';
import 'package:project_1/pages/npShopping.dart';
import 'package:project_1/widgets/customBottomNavBar.dart';
import 'package:project_1/widgets/customDrawer.dart';
import 'package:provider/provider.dart';

import '../model/themeModel.dart';
import '../routes/appRouter.gr.dart';
@RoutePage()

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
        routes: const [
          HomeRoute(),
          ParcelsRoute(),
          InterParcelRoute(),
          LocationRoute(),
        ],
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            // appBar: AppBar(
            //   // backgroundColor: theme.isDark
            //   //     ? const Color.fromRGBO(55, 55, 55, 1.0)
            //   //     : Colors.white,
            //   // iconTheme: IconThemeData(
            //   //     color: theme.isDark ? Colors.deepPurple : Colors.red),
            //   title: Text(
            //       // style: TextStyle(
            //       //   fontSize: 20,
            //       //   color: theme.isDark ? Colors.grey : Colors.black,
            //       // ),
            //       "d"),
            //   centerTitle: true,
            //   actions: [
            //     IconButton(
            //       icon: const Icon(
            //         Icons.notifications_none_outlined,
            //         size: 30,
            //       ),
            //       onPressed: () {},
            //     ),
            //   ],
            // ),
            //drawer: const CustomDrawer(),
            body: child,
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.chat),
            ),
            bottomNavigationBar: CustomBottomNavBar(
              selectedIndex: tabsRouter.activeIndex,
              onItemTapped: (value) {
                tabsRouter.setActiveIndex(value);
              },
            ),
          );
        });
  }
}
