import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/themeModel.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(builder: (context, theme, child) {
      return Drawer(
        backgroundColor:
            theme.isDark ? const Color.fromRGBO(55, 55, 55, 1.0) : Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
             UserAccountsDrawerHeader(
              accountName: const Text('Максим Прокопенко'),
              accountEmail: const Text('s1maprokopenko@gmail.com'),
              currentAccountPicture: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/photo.jpg'),
              ),
              decoration: BoxDecoration(
                color: theme.isDark ? Colors.deepPurple : Colors.red,
              ),
            ),
            ListTile(
              title: Text('Профіль',
                style: TextStyle(
                  color: theme.isDark ? Colors.grey : Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Налаштування',
                style: TextStyle(
                  color: theme.isDark ? Colors.grey : Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Розрахувати доставку',
                style: TextStyle(
                  color: theme.isDark ? Colors.grey : Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Послуга Експрес драйв',
                style: TextStyle(
                  color: theme.isDark ? Colors.grey : Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Викликати кур\'єра',
                style: TextStyle(
                  color: theme.isDark ? Colors.grey : Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Про компанію',
                style: TextStyle(
                  color: theme.isDark ? Colors.grey : Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Новини',
                style: TextStyle(
                  color: theme.isDark ? Colors.grey : Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Центр підтримки',
                style: TextStyle(
                  color: theme.isDark ? Colors.grey : Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Документація',
                style: TextStyle(
                  color: theme.isDark ? Colors.grey : Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Тема',
                style: TextStyle(
                  color: theme.isDark ? Colors.grey : Colors.black,
                ),
              ),
              trailing: Consumer<ThemeModel>(
                builder: (context, themeModel, _) {
                  return Switch(
                    value: themeModel.isDark,
                    onChanged: (value) {
                      themeModel.toggleTheme();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}
