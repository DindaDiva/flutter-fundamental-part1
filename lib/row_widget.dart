import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 105, 135, 201),
        title: const Text('Widget Column'),
      ),
      body: Row(
        children: const [
          Text('Row1'),
          Text('Row2'),
          Text('Row3'),
          Text('Row4')
        ],
      ),
    );
  }
}