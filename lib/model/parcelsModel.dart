import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../entities/parcel.dart';

class ParcelsModel extends ChangeNotifier {
  ParcelItems _parcels = ParcelItems();
  ParcelsModel() {
    getParcels();
  }
  ParcelItems get parcels{
    return _parcels;
  }

  Future<void> getParcels() async {
    Dio dio = Dio();
    String url = 'http://10.0.2.2:8080/api/parcels';
    try {
      final response = await dio.get(url);
      var responseData = response.data as List;
      _parcels.items = responseData.map((e) => ParcelInfo.fromJson(e)).toList();
      notifyListeners();
    } catch (e) {
      print('Connection error: $e');
    }
  }

  Future<void> addParcel(ParcelInfo parcelInfo) async {
     final Dio dio = Dio();
     const String url = "http://10.0.2.2:8080/api/parcels";
     var data = json.encode(parcelInfo);
     print(data);
    try {
       await dio.post(
         url,
         data: data,
       );
    getParcels();
    } catch (e) {
      print('Connection error: $e');
    }
  }
}
