import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DogImage extends StatelessWidget {
  final String imageUrl;
  const DogImage({Key key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image = new CachedNetworkImage(
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
      imageUrl: imageUrl,
    );

    return Container(
      alignment: Alignment.topCenter,
      child: image,
    );
  }
}
