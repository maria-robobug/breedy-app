import 'package:breedy/constants.dart';
import 'package:flutter/material.dart';

class DogTitle extends StatelessWidget {
  final String name, origin;

  const DogTitle({Key key, this.name, this.origin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 25.0),
      child: Column(children: <Widget>[
        Text(name, style: CustomTextStyle.heading),
        origin != null
            ? Text(
                " " + origin + " dog",
                style: CustomTextStyle.subHeading,
                textAlign: TextAlign.center,
              )
            : Text(""),
      ]),
    );
  }
}
