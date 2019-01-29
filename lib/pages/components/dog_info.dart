import 'package:dogfacts_app/pages/components/dog_info_section.dart';
import 'package:flutter/material.dart';

class DogInfo extends StatelessWidget {
  final String name, temperament, height, weight, lifespan;

  const DogInfo(
      {Key key,
      this.name,
      this.temperament,
      this.height,
      this.weight,
      this.lifespan})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DogInfoSection(title: "Name", detail: name),
          DogInfoSection(title: "Height", detail: height),
          DogInfoSection(title: "Weight", detail: weight),
          DogInfoSection(title: "Lifespan", detail: lifespan),
          DogInfoSection(title: "Temperament", detail: temperament),
        ],
      ),
    );
  }
}
