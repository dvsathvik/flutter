import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {





    // 👇👇👇👇👇👇👇
    // Write the Image Widget name Here
    // Write the Image Widget here Ex: Download.png
    var d = "write the name of the widget here";
    // Write some text here
    var str = "Hello World";

    // create a directory named assets and store the image there
    // in pubspec.yaml uncomment the following lines
    
    // assets:
    //    - images/a_dot_ham.jpeg
    
    // and convert it to
    // assets:
    // - assets/
    // remember to remove the spaces before these lines after uncommenting





    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(d),
            Text(str,style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.blue,
              letterSpacing: 2,
              backgroundColor: Colors.grey
            ))
          ],
        ),
      ),
    );
  }
}
