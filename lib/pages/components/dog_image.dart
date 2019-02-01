import 'package:flutter/material.dart';

class DogImage extends StatelessWidget {
  final String imageUrl;

  const DogImage({Key key, this.imageUrl})
      : assert(imageUrl != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Center(
        child: Image.network(
          imageUrl,
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
