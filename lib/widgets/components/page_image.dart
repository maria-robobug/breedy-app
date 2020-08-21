import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../constants.dart';

class PageImage extends StatelessWidget {
  final String imageUrl;
  final int imageHeight, imageWidth;
  const PageImage({Key key, this.imageUrl, this.imageHeight, this.imageWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageWidget = new CachedNetworkImage(
      imageUrl: imageUrl,
      alignment: Alignment.center,
      fit: BoxFit.contain,
      filterQuality: FilterQuality.high,
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );

    return SizedBox(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: CustomColour.card,
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        child: (imageWidget),
      ),
    );
  }
}
