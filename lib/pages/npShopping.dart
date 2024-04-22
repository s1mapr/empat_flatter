import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NPShopping extends StatelessWidget {
  const NPShopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping'),
      ),
      body: Text("This is NP Shopping page"),
    );
  }
}
