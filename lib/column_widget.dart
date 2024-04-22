import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 171, 201, 105),
        title: const Text('Widget Column'),
      ),
      body: Column(
        children: const [
          Text('Kolom1'),
          Text('Kolom2'),
          Text('Kolom3'),
          Text('Kolom4')
        ],
    ));
  }
}