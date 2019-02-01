import 'package:flutter/material.dart';

class DogTitle extends StatelessWidget {
  final String name;

  const DogTitle({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle nameStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
    );

    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20.0),
      child: Text(name, style: nameStyle),
    );
  }
}
