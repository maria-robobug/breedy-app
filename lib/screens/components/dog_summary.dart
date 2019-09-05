import 'package:flutter/material.dart';

class DogSummary extends StatelessWidget {
  final String temperament;

  const DogSummary({Key key, this.temperament}) : super(key: key);
  static const double SCALE_FACTOR = 1.2;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width * 1.0;

    return Container(
      width: deviceWidth,
      padding: const EdgeInsets.all(15.0),
      alignment: Alignment.bottomLeft,
      child: temperament == null
          ? Text("N/A",
              textAlign: TextAlign.left, textScaleFactor: SCALE_FACTOR)
          : Text(temperament,
              textAlign: TextAlign.left, textScaleFactor: SCALE_FACTOR),
    );
  }
}
