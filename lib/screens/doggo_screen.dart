import 'dart:async';
import 'package:breedy/models/doggo.dart';
import 'package:breedy/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'containers/dog_card.dart';

class DoggoScreen extends StatefulWidget {
  final String title;
  DoggoScreen(this.title);

  @override
  _DoggoScreenState createState() => _DoggoScreenState(animalRepository);
}

class _DoggoScreenState extends State<DoggoScreen> {
  Doggo dog;
  AnimalRepository animalRepository;

  _DoggoScreenState(this.animalRepository);

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
    final Doggo doggo = await animalRepository.getRandomDoggo();
    setState(() {
      dog = doggo;
    });
  }
}
