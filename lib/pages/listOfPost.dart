import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ListOfPost extends StatelessWidget {
  const ListOfPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Of Post'),
      ),
      body: Text("This is List Of Post page"),
    );
  }
}
