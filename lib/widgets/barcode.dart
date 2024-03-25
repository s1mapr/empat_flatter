import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

class BarcodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BarcodeWidget(
          barcode: Barcode.ean13(),
          data: '123456789012',
          width: MediaQuery.of(context).size.width*0.9,
          height: MediaQuery.of(context).size.height*0.05,
          drawText: false,
        ),
      ],
    );
  }
}