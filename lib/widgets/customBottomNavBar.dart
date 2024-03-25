import 'package:flutter/material.dart';


class CustomBottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  CustomBottomNavBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });


  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.selectedIndex,
      onTap: widget.onItemTapped,
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
      selectedIconTheme: const IconThemeData(color: Colors.red),
    );
  }
}