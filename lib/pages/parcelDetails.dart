import 'package:flutter/material.dart';
import 'package:project_1/entities/parcel.dart';

class ParcelDetails extends StatelessWidget {
  final ParcelInfo parcelInfo;

  const ParcelDetails({Key? key, required this.parcelInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Інформація про посилку"),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 2),
        color: Colors.grey[300],
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    parcelInfo.id,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
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
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Відправлена ${parcelInfo.dateFrom}',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Отримана ${parcelInfo.dateTo}',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Деталі маршруту',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 2),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: const Row(
                children: [
                  Text(
                    "Послуги з доставки",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
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
                style: TextStyle(color: Colors.grey[800]),
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
  }
}
