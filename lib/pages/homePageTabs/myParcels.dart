import 'package:flutter/material.dart';
import 'package:project_1/model/parcelsModel.dart';
import 'package:project_1/model/themeModel.dart';
import 'package:project_1/pages/parcelDetails.dart';
import 'package:provider/provider.dart';

class Parcels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer2<ParcelsModel, ThemeModel>(
        builder: (context, parcelInfo, theme, child) {
          return Container(
            padding: const EdgeInsets.only(top: 30.0),
            decoration: BoxDecoration(
              color: theme.isDark
                  ? const Color.fromRGBO(72, 72, 72, 1.0)
                  : Colors.grey[300],
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
                    decoration: BoxDecoration(
                      color: theme.isDark
                          ? const Color.fromRGBO(55, 55, 55, 1.0)
                          : Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          parcel.id.toString(),
                          style: TextStyle(
                            color:
                                theme.isDark ? Colors.grey[500] : Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              parcel.dateFrom,
                              style: TextStyle(
                                color: theme.isDark
                                    ? Colors.grey[500]
                                    : Colors.black,
                              ),
                            ),
                            Text(
                              parcel.dateTo,
                              style: TextStyle(
                                color: theme.isDark
                                    ? Colors.grey[500]
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              parcel.cityFrom,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: theme.isDark
                                    ? Colors.grey[500]
                                    : Colors.black,
                              ),
                            ),
                            Text(
                              parcel.cityTo,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: theme.isDark
                                    ? Colors.grey[500]
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Отримана',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: theme.isDark
                                        ? Colors.grey[500]
                                        : Colors.black,
                                  ),
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
      ),
    );
  }
}
