import 'package:breedy/models/size_config.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DogImage extends StatelessWidget {
  final String imageUrl;
  final int imageHeight, imageWidth;
  const DogImage({Key key, this.imageUrl, this.imageHeight, this.imageWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    Widget imageWidget = new CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );

    return SizedBox(
      child: Container(
        alignment: Alignment.center,
        width: SizeConfig.blockSizeVertical * 50,
        height: SizeConfig.blockSizeHorizontal * 80,
        child: (imageWidget),
      ),
    );
  }
}
