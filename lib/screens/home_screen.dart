import 'package:flutter/material.dart';
import 'package:breedy/screens/doggo_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Breedy'),
        backgroundColor: Colors.black87,
        elevation: 0.0,
      ),
      body: Center(
        child: RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.all(10.0),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DoggoScreen('Breedy')),
              );
            },
            child: new Text('Daily Doggo')),
      ),
    );
  }
}
