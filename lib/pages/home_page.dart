import 'dart:async';

import 'package:breedy/models/doggo.dart';
import 'package:breedy/pages/containers/dog_card.dart';
import 'package:breedy/controllers/dog_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage(this.title);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Doggo dog;

  void initState() {
    super.initState();
    _gatherDogData();
  }

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
          child: RefreshIndicator(
            onRefresh: _gatherDogData,
            color: Color.fromRGBO(192, 192, 192, 0.2),
            child: dog == null ? Text("fetching doggo...") : DogCard(dog),
          ),
        ),
      ),
    );
  }

  Future<void> _gatherDogData() async {
    await new Future.delayed(
            new Duration(seconds: 2), DogController.fetchDogData)
        .then((doggo) {
      setState(() {
        dog = doggo;
      });
    });
  }
}
