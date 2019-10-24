import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DogImage extends StatelessWidget {
  final String imageUrl;
  final int imageHeight, imageWidth;
  const DogImage({Key key, this.imageUrl, this.imageHeight, this.imageWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageWidget = new CachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.scaleDown,
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );

    return Container(
      alignment: Alignment.center,
      child: imageWidget,
    );
  }
}
