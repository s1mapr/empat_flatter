import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project_1/routes/appRouter.gr.dart';
import 'package:provider/provider.dart';

import '../../model/themeModel.dart';

@RoutePage()
class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ThemeModel>(
        builder: (context, theme, child) {
          return Container(
            width: MediaQuery.of(context).size.width,
            color: theme.isDark
                ? const Color.fromRGBO(72, 72, 72, 1.0)
                : Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            theme.isDark
                                ? const Color.fromRGBO(72, 72, 72, 1.0)
                                : Colors.white,
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 4),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: theme.isDark
                                        ? Colors.deepPurple
                                        : Colors.red,
                                    width: 2)),
                          ),
                          child: Text(
                            "КАРТА",
                            style: TextStyle(
                              color:
                                  theme.isDark ? Colors.deepPurple : Colors.red,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          AutoRouter.of(context).push(const ListOfPostRoute());
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            theme.isDark
                                ? const Color.fromRGBO(72, 72, 72, 1.0)
                                : Colors.white,
                          ),
                        ),
                        child: Text(
                          "СПИСОК",
                          style: TextStyle(
                            fontSize: 18,
                            color:
                                theme.isDark ? Colors.grey[500] : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/map.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
