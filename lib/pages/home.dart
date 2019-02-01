import 'package:dogfacts_app/models/dog_data.dart';
import 'package:dogfacts_app/pages/containers/dog_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black87,
        elevation: 0.0,
      ),
      body: Center(
        child: Container(
          color: Color.fromRGBO(192, 192, 192, 0.2),
          child: DogCard(DogData()),
        ),
      ),
    );
  }
}
