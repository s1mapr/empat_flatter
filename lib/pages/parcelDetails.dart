import 'package:flutter/material.dart';
import 'package:project_1/entities/parcel.dart';
import 'package:provider/provider.dart';

import '../model/themeModel.dart';

class ParcelDetails extends StatelessWidget {
  final ParcelInfo parcelInfo;

  const ParcelDetails({Key? key, required this.parcelInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, theme, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: theme.isDark
                ? const Color.fromRGBO(55, 55, 55, 1.0)
                : Colors.white,
            iconTheme: IconThemeData(
                color: theme.isDark ? Colors.deepPurple : Colors.red),
            title: Text(
              "Інформація про посилку",
              style: TextStyle(
                color: theme.isDark ? Colors.grey : Colors.black,
              ),
            ),
          ),
          body: Container(
            padding: const EdgeInsets.only(top: 2),
            decoration: BoxDecoration(
              color: theme.isDark
                  ? const Color.fromRGBO(72, 72, 72, 1.0)
                  : Colors.grey[300],
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: theme.isDark
                        ? const Color.fromRGBO(55, 55, 55, 1.0)
                        : Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        parcelInfo.id.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: theme.isDark ? Colors.grey[500] : Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Hero(
                        tag: parcelInfo.id,
                        child: const Icon(
                          Icons.local_shipping_outlined,
                          size: 36,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: theme.isDark
                        ? const Color.fromRGBO(55, 55, 55, 1.0)
                        : Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Відправлена ${parcelInfo.dateFrom}',
                        style: TextStyle(
                          fontSize: 18,
                          color: theme.isDark ? Colors.grey[500] : Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Отримана ${parcelInfo.dateTo}',
                        style: TextStyle(
                          fontSize: 18,
                          color: theme.isDark ? Colors.grey[500] : Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Деталі маршруту',
                        style: TextStyle(
                          fontSize: 18,
                          color: theme.isDark ? Colors.deepPurple : Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 2),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: theme.isDark
                        ? const Color.fromRGBO(55, 55, 55, 1.0)
                        : Colors.white,
                  ),
                  child:  Row(
                    children: [
                      Text(
                        "Послуги з доставки",
                        style: TextStyle(
                          fontSize: 18,
                          color: theme.isDark ? Colors.grey[500] : Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "(Спачено)",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "ОТРИМАТИ ПОВНУ ІНФОРМАЦІЮ ПРО ПОСИЛКУ",
                    style: TextStyle(color: theme.isDark? Colors.grey[500] :Colors.grey[800]),
                  ),
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.chat),
          ),
        );
      },
    );
  }
}
