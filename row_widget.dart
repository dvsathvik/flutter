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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Start"),
            Row(mainAxisAlignment: MainAxisAlignment.start,children: re()),
            Text("End"),
            Row(mainAxisAlignment: MainAxisAlignment.end,children: re()),
            Text("Space Evenly"),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: re()),
            Text("Center"),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: re()),
            Text("Space Between"),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: re()),
            Text("Space Around"),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: re()),
          ],
        ),
      ),
    );
  }
}

List<Widget> re(){
  return [
    Container(color: Colors.red,child: Center(child: Text("1")),height: 50,width: 50),
    Container(color: Colors.blue,child: Center(child: Text("2")),height: 50,width: 50),
    Container(color: Colors.green,child: Center(child: Text("3")),height: 50,width: 50),
  ];
}
