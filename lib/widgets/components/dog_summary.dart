import 'package:flutter/material.dart';

class DogSummary extends StatelessWidget {
  final String temperament;

  const DogSummary({Key key, this.temperament}) : super(key: key);
  static const double SCALE_FACTOR = 1.2;

  @override
  Widget build(BuildContext context) {
    final TextStyle traitsStyle = TextStyle(
      fontSize: 25.0,
    );

    return Container(
      padding: const EdgeInsets.all(15.0),
      alignment: Alignment.center,
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              "Traits",
              textAlign: TextAlign.center,
              textScaleFactor: 1,
              style: traitsStyle,
            ),
          ),
          temperament == null
              ? Text("N/A",
                  textAlign: TextAlign.center, textScaleFactor: SCALE_FACTOR)
              : Text(temperament,
                  textAlign: TextAlign.center, textScaleFactor: SCALE_FACTOR),
        ],
      ),
    );
  }
}
