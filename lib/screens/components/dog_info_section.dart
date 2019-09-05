import 'package:flutter/material.dart';

class DogInfoSection extends StatelessWidget {
  final String title, detail;

  const DogInfoSection({Key key, this.detail, this.title}) : super(key: key);
  static const double SCALE_FACTOR = 1.2;

  @override
  Widget build(BuildContext context) {
    final TextStyle titleStyle = TextStyle(
      fontWeight: FontWeight.bold,
    );

    return Container(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text(title, style: titleStyle, textScaleFactor: SCALE_FACTOR),
            ),
            Text(detail,
                textAlign: TextAlign.center, textScaleFactor: SCALE_FACTOR),
          ],
        ),
      ),
    );
  }
}
