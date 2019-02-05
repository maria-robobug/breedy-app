import 'package:flutter/material.dart';

class DogTitle extends StatelessWidget {
  final String name;

  const DogTitle({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle nameStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25.0,
    );

    return Container(
      padding: const EdgeInsets.all(15.0),
      alignment: Alignment.bottomLeft,
      child: Text(name, style: nameStyle),
    );
  }
}
