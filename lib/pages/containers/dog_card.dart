import 'package:dogfacts_app/models/dog_data.dart';
import 'package:dogfacts_app/pages/components/dog_image.dart';
import 'package:dogfacts_app/pages/components/dog_info.dart';
import 'package:dogfacts_app/pages/components/dog_title.dart';
import 'package:flutter/material.dart';

class DogCard extends StatefulWidget {
  final DogData dogData;

  DogCard(this.dogData);

  @override
  _DogCardState createState() => _DogCardState(dogData);
}

class _DogCardState extends State<DogCard> {
  void initState() {
    super.initState();
    _gatherDogData();
  }

  DogData dogData;
  String imageUrl, name, temperament, height, weight, lifespan;

  _DogCardState(this.dogData);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RefreshIndicator(
        onRefresh: _gatherDogData,
        child: ListView(
          children: <Widget>[
            Card(
                elevation: 1.2,
                margin: EdgeInsets.only(
                    top: 25.0, left: 25.0, right: 25.0, bottom: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: Column(
                  children: <Widget>[
                    DogTitle(name: name),
                    DogImage(imageUrl: imageUrl),
                    DogInfo(
                      name: name,
                      height: height,
                      weight: weight,
                      lifespan: lifespan,
                      temperament: temperament,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Future<void> _gatherDogData() async {
    await dogData.getDogData();

    setState(() {
      imageUrl = dogData.imageUrl;
      name = dogData.name;
      temperament = dogData.temperament;
      height = dogData.height;
      weight = dogData.weight;
      lifespan = dogData.lifespan;
    });
  }
}
