import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Display',
      home: NumberInputPage(),
    );
  }
}

class NumberInputPage extends StatefulWidget {
  @override
  _NumberInputPageState createState() => _NumberInputPageState();
}

class _NumberInputPageState extends State<NumberInputPage> {
  TextEditingController _controller = TextEditingController();
  String _enteredNumber = '';

  void _displayNumber() {
    setState(() {
      _enteredNumber = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter and Display Number'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter a number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _displayNumber,
              child: Text('Display Number'),
            ),
            SizedBox(height: 20),
            if (_enteredNumber.isNotEmpty)
              Text(
                'You entered: $_enteredNumber',
                style: TextStyle(fontSize: 20),
              ),
          ],
        ),
      ),
    );
  }
}
