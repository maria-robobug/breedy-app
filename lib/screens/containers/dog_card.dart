import 'package:breedy/models/doggo.dart';
import 'package:breedy/screens/components/dog_image.dart';
import 'package:breedy/screens/components/dog_info.dart';
import 'package:breedy/screens/components/dog_summary.dart';
import 'package:breedy/screens/components/dog_title.dart';
import 'package:flutter/material.dart';

class DogCard extends StatelessWidget {
  final Doggo doggo;
  const DogCard(this.doggo);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          DogTitle(name: doggo.name, origin: doggo.breedGroup),
          DogImage(
              imageUrl: doggo.imageUrl,
              imageHeight: doggo.imageHeight,
              imageWidth: doggo.imageWidth),
          DogSummary(temperament: doggo.temperament),
          Divider(color: Colors.grey),
          DogInfo(
            height: doggo.height,
            weight: doggo.weight,
            lifespan: doggo.lifespan,
          ),
        ],
      ),
    );
  }
}
