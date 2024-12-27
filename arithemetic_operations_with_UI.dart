import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double add = -1,sub = -1,mul = -1,div = -1;
  TextEditingController ted1 = TextEditingController();
  TextEditingController ted2 = TextEditingController();

  void _work() {
    setState(() {
      double i = double.parse(ted1.text);
      double j = double.parse(ted2.text);
      add = i+j;
      sub = i-j;
      mul = i*j;
      div = i/j;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 100,child: TextField(controller: ted1,decoration: InputDecoration(labelText: "Num 1"))),
                SizedBox(width: 50),
                Container(width: 100,child: TextField(controller: ted2,decoration: InputDecoration(labelText: "Num 2"))),
              ],
            ),
            // SizedBox(height: 30),
            ElevatedButton(onPressed: (){
              _work();
            }, child: Text("Enter")),

            if (add != -1)
              Text("Addition is $add"),
            if (sub != -1)
              Text("Subtraction is $sub"),
            if (mul != -1)
              Text("Multipliaction is $mul"),
            if (div != -1)
              Text("Division is $div"),

          ],
        ),
      ),
    );
  }
}
