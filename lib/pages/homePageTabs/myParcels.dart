import 'package:flutter/material.dart';
import 'package:project_1/entities/parcel.dart';
import 'package:project_1/pages/parcel_details.dart';
class Parcels extends StatefulWidget {
  @override
  _ParcelsState createState() => _ParcelsState();
}

class _ParcelsState extends State<Parcels> {
  final parcels = ParcelItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Мої посилки",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add_outlined,
              size: 30,
            ),
            color: Colors.red,
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 30.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: ListView.builder(
          itemCount: parcels.items.length,
          itemBuilder: (context, index) {
            final parcel = parcels.items[index];
            return ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ParcelDetails(parcelInfo: parcel)));
              },
              title: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(parcel.id),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(parcel.dateFrom),
                        Text(parcel.dateTo),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          parcel.cityFrom,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          parcel.cityTo,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Отримана',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Hero(
                          tag: parcel.id,
                          child: const Icon(
                            Icons.local_shipping_outlined,
                            size: 36,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}