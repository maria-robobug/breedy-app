import 'package:dogfacts_app/pages/components/dog_info_section.dart';
import 'package:flutter/material.dart';

class DogInfo extends StatelessWidget {
  final String temperament, height, weight, lifespan;

  const DogInfo(
      {Key key, this.temperament, this.height, this.weight, this.lifespan})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 2.5,
        margin: EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            DogInfoSection(title: "Height", detail: height),
            DogInfoSection(title: "Weight", detail: weight),
            DogInfoSection(title: "Lifespan", detail: lifespan),
            DogInfoSection(title: "Temperament", detail: temperament),
          ],
        ),
      ),
    );
  }
}
