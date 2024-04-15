import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/themeModel.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, theme, child) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          backgroundColor: theme.isDark
              ? const Color.fromRGBO(55, 55, 55, 1.0)
              : Colors.white,
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_shipping_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.language_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: '',
            ),
          ],
          unselectedItemColor: theme.isDark? Colors.grey[500] : Colors.grey,
          selectedIconTheme: IconThemeData(
              color: theme.isDark ? Colors.deepPurple : Colors.red),
        );
      },
    );
  }
}
