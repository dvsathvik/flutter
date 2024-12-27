import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Widget Example'),
        ),
        body: Center(
          child: Text('Hello, Flutter!',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 50,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5
            ),
          ),
        ),
      ),
    );
  }
}
