import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DogImage extends StatelessWidget {
  final String imageUrl;

  const DogImage({Key key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image;
    const defaultImagePath = 'assets/loading.gif';

    if (imageUrl == null) {
      image = new Image.asset(
        defaultImagePath,
        fit: BoxFit.contain,
      );
    } else {
      image = new CachedNetworkImage(
        imageUrl: imageUrl,
        placeholder: Image.asset(defaultImagePath),
        fit: BoxFit.fitWidth,
        errorWidget: Icon(Icons.error),
      );
    }

    return Container(
      alignment: Alignment.topCenter,
      child: image,
    );
  }
}
