import 'package:flutter/foundation.dart';

import '../entities/parcel.dart';

class ParcelsModel extends ChangeNotifier {
  ParcelItems _parcels = ParcelItems();

  ParcelItems get parcels => _parcels;

  void addParcel(ParcelInfo parcelInfo) {
    _parcels.items.add(parcelInfo);
    notifyListeners();
  }
}
