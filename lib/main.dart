import 'package:flutter/material.dart';
import 'package:project_1/routes/appRouter.dart';
import 'package:provider/provider.dart';

import 'model/parcelsModel.dart';
import 'model/themeModel.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ParcelsModel()),
        ChangeNotifierProvider(create: (context) => ThemeModel()..loadTheme()),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter.config(),
      ),
    );
  }
}
