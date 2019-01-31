import 'package:flutter/material.dart';

class DogImage extends StatelessWidget {
  final String imageUrl;

  const DogImage({Key key, this.imageUrl})
      : assert(imageUrl != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
          margin: EdgeInsets.zero,
          child: Image.network(
            imageUrl,
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
            width: 900.0,
            height: 300.0,
          )),
    );
  }
}
