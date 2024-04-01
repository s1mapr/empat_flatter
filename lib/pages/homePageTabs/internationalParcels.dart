import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_1/entities/parcel.dart';

class InternationalParcels extends StatelessWidget {
  final Function onPressed;

  InternationalParcels({required this.onPressed});

  String formatDate(DateTime date) {
    String day = date.day.toString().padLeft(2, '0');
    String month = date.month.toString().padLeft(2, '0');
    String year = date.year.toString();
    return '$day.$month.$year';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: Column(
          children: [
            const Text(
              "Нове відправлення",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Карїна відправки",
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Україна",
                    style: TextStyle(fontSize: 22),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Карїна доставки",
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Польща",
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Тип відправлення",
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Мала",
                          style: TextStyle(fontSize: 22),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "До 2 кг | 35x20x10 см",
                          style:
                          TextStyle(fontSize: 14, color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Середня",
                          style: TextStyle(fontSize: 22),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "До 10 кг | 40x30x30 см",
                          style:
                          TextStyle(fontSize: 14, color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Велика",
                          style: TextStyle(fontSize: 22),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "До 30 кг | 60x50x40 см",
                          style:
                          TextStyle(fontSize: 14, color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                int id = Random().nextInt(99999999 - 1000000) + 1000000;
                DateTime currentDate = DateTime.now();
                DateTime dateAfterTwoDays = currentDate.add(const Duration(days: 2));
                String dateFrom = formatDate(currentDate);
                String dateTo = formatDate(dateAfterTwoDays);

                onPressed(ParcelInfo(
                  id: id.toString(),
                  dateFrom: dateFrom,
                  dateTo: dateTo,
                  cityFrom: "Україна",
                  cityTo: "Польща",
                ));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                minimumSize: MaterialStateProperty.all<Size>(const Size(360, 70)),
              ),
              child: const Text(
                "Продовжити",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
