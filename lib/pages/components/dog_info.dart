import 'package:dogfacts_app/pages/components/dog_info_section.dart';
import 'package:dogfacts_app/pages/components/dog_title.dart';
import 'package:flutter/material.dart';

class DogInfo extends StatelessWidget {
  final String temperament, height, weight, lifespan, name;

  const DogInfo(
      {Key key,
      this.temperament,
      this.height,
      this.weight,
      this.lifespan,
      this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              DogTitle(name: name),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DogInfoSection(title: "Height", detail: height),
              DogInfoSection(title: "Weight", detail: weight),
              DogInfoSection(title: "Lifespan", detail: lifespan),
            ],
          ),
          DogInfoSection(title: "Temperament", detail: temperament),
        ],
      ),
    );
  }
}
