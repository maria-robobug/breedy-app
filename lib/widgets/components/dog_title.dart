import 'package:flutter/material.dart';

class DogTitle extends StatelessWidget {
  final String name, origin;

  const DogTitle({Key key, this.name, this.origin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle nameStyle = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 28.0,
      color: Colors.white,
    );

    final TextStyle originStyle = TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 25.0,
      color: Colors.white70,
    );

    return Container(
      padding: EdgeInsets.only(bottom: 25.0),
      child: Column(children: <Widget>[
        Text(name, style: nameStyle),
        origin != null
            ? Text(
                " " + origin + " dog",
                style: originStyle,
                textAlign: TextAlign.center,
              )
            : Text(""),
      ]),
    );
  }
}
