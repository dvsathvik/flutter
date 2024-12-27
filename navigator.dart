import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Row widget",
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> secondscreen()));
        }, 
            child: Text("Go to Second Page" , style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              fontStyle: FontStyle.italic
            ))),
      ),
    );
  }
}

class secondscreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pop(context);
        },
            child: Text("Go to Home Page" , style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontStyle: FontStyle.italic
            ))),
      ),
    );
  }
}
