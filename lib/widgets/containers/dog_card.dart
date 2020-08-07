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
      alignment: Alignment.center,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.transparent, width: 1),
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 3.0,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            DogTitle(name: doggo.name, origin: doggo.breedGroup),
            SizedBox(
              width: 600,
              height: 300,
              child: DogImage(
                  imageUrl: doggo.imageUrl,
                  imageHeight: doggo.imageHeight,
                  imageWidth: doggo.imageWidth),
            ),
            DogSummary(temperament: doggo.temperament),
            DogInfo(
              height: doggo.height,
              weight: doggo.weight,
              lifespan: doggo.lifespan,
            ),
          ],
        ),
      ),
    );
  }
}
