import 'dart:convert';

import 'package:breedy/constants.dart';
import 'package:breedy/models/doggo.dart';
import 'package:breedy/widgets/components/page_image.dart';
import 'package:breedy/widgets/components/info.dart';
import 'package:breedy/widgets/components/summary.dart';
import 'package:breedy/widgets/components/page_title.dart';
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
            child: PageTitle(title: doggo.name, subHeading: doggo.breedGroup),
          ),
          Container(
            child: PageImage(
              imageUrl: doggo.imageUrl,
              imageHeight: doggo.imageHeight,
              imageWidth: doggo.imageWidth,
            ),
          ),
          SizedBox(height: 30),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 10.0),
            child: Column(
              children: [
                PageTitle(title: "Traits"),
                Summary(summary: doggo.temperament),
                SizedBox(height: 10),
                Divider(
                  color: Colors.grey,
                  indent: 120,
                  endIndent: 120,
                ),
                Info(
                  option1: doggo.height,
                  option2: doggo.weight,
                  option3: doggo.lifespan,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
