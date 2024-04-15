import 'package:flutter/material.dart';
import 'package:project_1/pages/homePageTabs/home.dart';
import 'package:project_1/pages/homePageTabs/myParcels.dart';
import 'package:project_1/pages/homePageTabs/internationalParcels.dart';
import 'package:project_1/pages/homePageTabs/location.dart';
import 'package:project_1/widgets/customBottomNavBar.dart';
import 'package:project_1/widgets/customDrawer.dart';
import 'package:provider/provider.dart';

import '../model/themeModel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  late PageController _pageController;

  List<Widget> _pages = [];

  String getAppBarTitle(int index) {
    switch (index) {
      case 0:
        return 'Головна';
      case 1:
        return 'Мої посилки';
      case 2:
        return 'Міжнародні посилки';
      case 3:
        return 'Відділення та поштомати';
      default:
        return '';
    }
  }

  @override
  void initState() {
    super.initState();
    _pages = [
      Home(),
      Parcels(),
      InternationalParcels(),
      Location(),
    ];
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(builder: (context, theme, child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: theme.isDark?const Color.fromRGBO(55, 55, 55, 1.0) : Colors.white,
          iconTheme: IconThemeData(color: theme.isDark? Colors.deepPurple : Colors.red),
          title: Text(
            getAppBarTitle(_selectedIndex),
            style: TextStyle(
              fontSize: 20,
              color: theme.isDark? Colors.grey : Colors.black,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications_none_outlined,
                size: 30,
              ),
              onPressed: () {},
            ),
          ],
        ),
        drawer: const CustomDrawer(),
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: _pages,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.chat),
        ),
        bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: _selectedIndex,
          onItemTapped: (index) {
            setState(() {
              _selectedIndex = index;
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            });
          },
        ),
      );
    });
  }
}
