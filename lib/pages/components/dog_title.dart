import 'package:flutter/material.dart';
import 'package:path/path.dart';

class DogTitle extends StatelessWidget {
  final String name;

  const DogTitle({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //80% of screen width
    double cWidth = MediaQuery.of(context).size.width * 0.8;

    final TextStyle nameStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 23.0,
    );

    return Container(
      padding: const EdgeInsets.all(20.0),
      width: cWidth,
      child: Text(name, style: nameStyle),
    );
  }
}
