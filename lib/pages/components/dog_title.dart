import 'package:flutter/material.dart';

class DogTitle extends StatelessWidget {
  final String name;

  const DogTitle({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle nameStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30.0,
    );

    return Container(
      child: Padding(
        padding:
            EdgeInsets.only(top: 2.0, bottom: 20.0, left: 10.0, right: 10.0),
        child: Text(name, style: nameStyle),
      ),
    );
  }
}
