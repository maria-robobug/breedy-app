import 'package:flutter/material.dart';

class DogSummary extends StatelessWidget {
  final String temperament;

  const DogSummary({Key key, this.temperament}) : super(key: key);
  static const double SCALE_FACTOR = 1.2;

  @override
  Widget build(BuildContext context) {
    Widget temperWidget;
    double deviceWidth = MediaQuery.of(context).size.width * 1.0;

    if (temperament == "") {
      temperWidget = new Text("N/A",
          textAlign: TextAlign.left, textScaleFactor: SCALE_FACTOR);
    } else {
      temperWidget = new Text(temperament,
          textAlign: TextAlign.left, textScaleFactor: SCALE_FACTOR);
    }

    return Container(
      width: deviceWidth,
      padding: const EdgeInsets.only(
          left: 15.0, right: 15.0, top: 5.0, bottom: 10.0),
      alignment: Alignment.bottomLeft,
      child: temperWidget,
    );
  }
}
