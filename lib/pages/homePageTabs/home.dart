import 'package:flutter/material.dart';
import 'package:project_1/widgets/barcode.dart';

import '../../widgets/imageSlider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            child: ImageSlider(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: BarcodeScreen(),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text("Скануйте у відділенні"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.all(10),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Купуйте за кордоном',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Знайомтесь із послугою NP Shopping',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


