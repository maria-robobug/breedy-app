import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DogImage extends StatelessWidget {
  final String imageUrl;

  const DogImage({Key key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          AspectRatio(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: CachedNetworkImageProvider(imageUrl),
                    fit: BoxFit.cover),
              ),
              height: 400.0,
              width: 800.0,
            ),
            aspectRatio: 1.2,
          )
        ],
      ),
    );
  }
}
