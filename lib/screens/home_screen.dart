import 'package:flutter/material.dart';
import 'package:breedy/screens/doggo_screen.dart';

class HomeScreen extends StatelessWidget {
  final appName = 'Breedy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0.0,
      ),
      body: Center(
        child: FlatButton.icon(
          color: Colors.blue,
          textColor: Colors.white,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          padding: EdgeInsets.all(40.0),
          splashColor: Colors.blueAccent,
          icon: Icon(Icons.mood),
          label: Text('Doggo!'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DoggoScreen(appName)),
            );
          },
        ),
      ),
    );
  }
}
