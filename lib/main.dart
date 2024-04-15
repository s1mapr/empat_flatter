import 'package:flutter/material.dart';
import 'package:project_1/model/parcelsModel.dart';
import 'package:project_1/model/themeModel.dart';
import 'package:project_1/pages/homePage.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ParcelsModel()),
        ChangeNotifierProvider(create: (context) => ThemeModel()..loadTheme()),
      ],
      child: MaterialApp(
        title: 'My App',
        home: HomePage(),
      ),
    );
  }
}