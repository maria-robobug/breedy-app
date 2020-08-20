import 'package:breedy/constants.dart';
import 'package:flutter/material.dart';

class DogSummary extends StatelessWidget {
  final String temperament;

  const DogSummary({Key key, this.temperament}) : super(key: key);
  static const double SCALE_FACTOR = 1.2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        shrinkWrap: true,
        children: [
          temperament == ""
              ? Text("N/A",
                  textAlign: TextAlign.center,
                  textScaleFactor: SCALE_FACTOR,
                  style: CustomTextStyle.generic)
              : Text(temperament,
                  textAlign: TextAlign.center,
                  textScaleFactor: SCALE_FACTOR,
                  style: CustomTextStyle.generic),
        ],
      ),
    );
  }
}
