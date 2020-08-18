import 'package:breedy/models/doggo.dart';
import 'package:breedy/models/size_config.dart';
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
    SizeConfig().init(context);

    return Container(
      alignment: Alignment.center,
      width: SizeConfig.blockSizeVertical * 80,
      height: SizeConfig.blockSizeHorizontal * 65,
      child: ListView(
        children: [
          DogTitle(name: doggo.name, origin: doggo.breedGroup),
          Container(
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.transparent, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DogImage(
                imageUrl: doggo.imageUrl,
                imageHeight: doggo.imageHeight,
                imageWidth: doggo.imageWidth,
              ),
            ),
          ),
          DogSummary(temperament: doggo.temperament),
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
