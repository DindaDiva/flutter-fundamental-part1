import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Flutter'),
        backgroundColor:Color.fromARGB(255, 181, 106, 130),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}