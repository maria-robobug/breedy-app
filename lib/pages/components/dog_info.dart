import 'package:dogfacts_app/pages/components/dog_info_section.dart';
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
    Widget temperWidget;

    if (temperament == "") {
      temperWidget = new DogInfoSection(title: "Temperament", detail: "N/A");
    } else {
      temperWidget =
          new DogInfoSection(title: "Temperament", detail: temperament);
    }

    return new Container(
      child: Column(
        children: <Widget>[
          temperWidget,
          Divider(color: Colors.grey),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              DogInfoSection(title: "Height", detail: height),
              DogInfoSection(title: "Weight", detail: weight),
              DogInfoSection(title: "Lifespan", detail: lifespan),
            ],
          ),
        ],
      ),
    );
  }
}
