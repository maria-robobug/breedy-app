import 'package:breedy/constants.dart';
import 'package:breedy/models/doggo.dart';
import 'package:breedy/widgets/components/dog_image.dart';
import 'package:breedy/widgets/components/dog_info.dart';
import 'package:breedy/widgets/components/dog_summary.dart';
import 'package:breedy/widgets/components/dog_title.dart';
import 'package:flutter/material.dart';

class DogCard extends StatelessWidget {
  final Doggo doggo;
  const DogCard(this.doggo);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      color: CustomColour.background,
      child: ListView(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(bottom: 30.0),
            child: DogTitle(name: doggo.name, origin: doggo.breedGroup),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              padding: EdgeInsets.all(20),
              color: CustomColour.card,
              child: DogImage(
                imageUrl: doggo.imageUrl,
                imageHeight: doggo.imageHeight,
                imageWidth: doggo.imageWidth,
              ),
            ),
          ),
          DogInfo(
            height: doggo.height,
            weight: doggo.weight,
            lifespan: doggo.lifespan,
          ),
          DogSummary(temperament: doggo.temperament),
        ],
      ),
    );
  }
}
