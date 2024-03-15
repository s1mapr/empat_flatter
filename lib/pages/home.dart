import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:project_1/pages/utils/barcode.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.notifications_none_outlined),
          color: Colors.red,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outlined),
            color: Colors.red,
            onPressed: () {},
          ),
        ],
      ),
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
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.local_shipping_outlined,
                              size: 36,
                              color: Colors.red,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Мої \n посилки",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.language_outlined,
                              size: 36,
                              color: Colors.red,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Створити \n міжнародну посилку",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 36,
                              color: Colors.red,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Відділення \n та поштомати",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.add_outlined,
                              size: 36,
                              color: Colors.red,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Створити \n посилку",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _currentIndex = 0;
  final List<String> _images = [
    'lib/images/1.png',
    'lib/images/2.png',
    'lib/images/3.png',
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _images.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _images[_currentIndex],
      fit: BoxFit.fill,
    );
  }
}
