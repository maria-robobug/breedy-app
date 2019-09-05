import 'dart:async';

import 'package:breedy/models/doggo.dart';
import 'package:breedy/services/dog_service.dart';
import 'package:flutter/material.dart';

import 'containers/dog_card.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  HomeScreen(this.title);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    var duration = new Duration(seconds: 2);

    await new Future.delayed(duration, DogService.fetchData).then((doggo) {
      setState(() {
        dog = doggo;
      });
    });
  }
}
