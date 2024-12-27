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
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row( children: [Text("Top Left") , Stack(alignment: Alignment.topLeft,children: re()) ]),
              Row( children: [Text("Top Center") , Stack(alignment: Alignment.topCenter,children: re()) ]),
              Row( children: [Text("Top Right") , Stack(alignment: Alignment.topRight,children: re()) ]),
              Row( children: [Text("Center Left") , Stack(alignment: Alignment.centerLeft,children: re()) ]),
              Row( children: [Text("Center") , Stack(alignment: Alignment.center,children: re()) ]),
              Row( children: [Text("Center Right") , Stack(alignment: Alignment.centerRight,children: re()) ]),
              Row( children: [Text("Bottom left") , Stack(alignment: Alignment.bottomLeft,children: re()) ]),
              Row( children: [Text("Bottom right") , Stack(alignment: Alignment.bottomRight,children: re()) ]),
              Row( children: [Text("Bottom Center") , Stack(alignment: Alignment.bottomCenter,children: re()) ]),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> re(){
  return [
    Container(color: Colors.red,height: 60,width: 60),
    Container(color: Colors.blue,height: 40,width: 40),
    Container(color: Colors.green,height: 20,width: 20),
  ];
}
