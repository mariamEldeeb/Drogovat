import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stepper Motor Control',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _status = 'Idle';
  final String esp32Ip =
      'http://192.168.65.237'; // Replace with your ESP32's IP address

  Future<void> _sendRequest(String endpoint) async {
    try {
      final response = await http.get(Uri.parse('$esp32Ip/$endpoint'));
      if (response.statusCode == 200) {
        setState(() {
          _status = 'Command sent: $endpoint';
        });
      } else {
        setState(() {
          _status = 'Failed to send command';
        });
      }
    } catch (e) {
      setState(() {
        _status = 'Error: $e';
      });
    }
  }

  void _stopMotor() {
    _sendRequest('stop');
  }

  void _moveMotor(int angle, int direction, int speed) {
    _sendRequest('go?angle=$angle&d=$direction&s=$speed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper Motor Control'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _moveMotor(360, 1, 10),
              // Example button to move 360 degrees CW at speed 10
              child: Text('Move 360° CW at speed 10'),
            ),
            ElevatedButton(
              onPressed: () => _moveMotor(270, 2, 1),
              // Example button to move 270 degrees CCW at speed 1
              child: Text('Move 270° CCW at speed 1'),
            ),
            ElevatedButton(
              onPressed: () => _moveMotor(90, 1, 4),
              // Example button to move 90 degrees CW at speed 4
              child: Text('Move 90° CW at speed 4'),
            ),
            ElevatedButton(
              onPressed: _stopMotor,
              child: Text('Stop Motor'),
            ),
            SizedBox(height: 20),
            Text('Status: $_status'),
          ],
        ),
      ),
    );
  }
}
