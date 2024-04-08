import 'package:flutter/material.dart';
import 'package:project_1/entities/parcel.dart';
import 'package:project_1/model/parcelsModel.dart';
import 'package:project_1/pages/parcelDetails.dart';
import 'package:provider/provider.dart';

class Parcels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<ParcelsModel>(
      builder: (context, parcelInfo, child) {
        return Container(
          padding: const EdgeInsets.only(top: 30.0),
          decoration: BoxDecoration(
            color: Colors.grey[300],
          ),
          child: ListView.builder(
            itemCount: parcelInfo.parcels.items.length,
            itemBuilder: (context, index) {
              final parcel = parcelInfo.parcels.items[index];
              return ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ParcelDetails(parcelInfo: parcel)),
                  );
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
        );
      },
    ));
  }
}
