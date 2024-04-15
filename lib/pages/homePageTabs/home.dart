import 'package:flutter/material.dart';
import 'package:project_1/model/themeModel.dart';
import 'package:project_1/widgets/barcode.dart';
import 'package:provider/provider.dart';

import '../../widgets/imageSlider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<ThemeModel>(
      builder: (context, theme, child) {
        return Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: theme.isDark?const Color.fromRGBO(72, 72, 72, 1.0) : Colors.white,
          ),
          child: Column(
            children: [
              Container(
                color: Colors.grey,
                child: ImageSlider(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: BarcodeScreen(),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Скануйте у відділенні',
                  style: TextStyle(
                    color: theme.isDark ? Colors.grey[500] : Colors.black,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: theme.isDark? const Color.fromRGBO(55, 55, 55, 1.0): Colors.greenAccent,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.all(10),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Купуйте за кордоном',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: theme.isDark ? Colors.grey[500] : Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Знайомтесь із послугою NP Shopping',
                      style: TextStyle(
                        fontSize: 14,
                        color: theme.isDark ? Colors.grey[500] : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ));
  }
}
