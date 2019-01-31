import 'package:flutter/material.dart';

class DogInfoSection extends StatelessWidget {
  final String title, detail;

  const DogInfoSection({Key key, this.title, this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle titleStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
    );

    final TextStyle detailStyle = TextStyle(
      fontSize: 20.0,
    );

    return Container(
      child: Padding(
        padding:
            EdgeInsets.only(left: 12.0, right: 12.0, top: 15.0, bottom: 30.0),
        child: Column(
          children: <Widget>[
            Text(title, style: titleStyle),
            Text(detail, style: detailStyle, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
