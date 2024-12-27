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
          child: Image.asset("download.jpg")
        ),
      ),
    );
  }
}

// create a new directory named as assets and keep the images in it
//uncomment the following in publicspec.yaml
  // assets:
  //and write the following below it 
//  - assets/
