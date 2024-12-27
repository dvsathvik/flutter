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
      routes: {
        '/' : (context)=>Homepage(),
        '/about' : (context)=>secondpage(),
        '/third' : (context)=>thirdpage(),
      },
      initialRoute: '/',
    );
  }
}

class Homepage extends StatelessWidget
{
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home page")),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/about');
              }, child: const Text("About")),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/third');
              }, child: const Text("Third Page")),
            ],
          )
      ),
    );
  }
}

class secondpage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/');
            }, child: Text("Go To HomePage")),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/third');
            }, child: const Text("Third Page")),
          ],
        )
      ),
    );
  }
}

class thirdpage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Third Page")),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/about');
              }, child: const Text("About")),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/');
              }, child: Text("Go To HomePage")),
            ],
          )
      ),
    );
  }
}
