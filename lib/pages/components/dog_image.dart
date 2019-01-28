import 'package:cached_network_image/cached_network_image.dart';
import 'package:dogfacts_app/pages/components/dog_title.dart';
import 'package:flutter/material.dart';

class DogImage extends StatelessWidget {
  final String imageUrl, name;

  const DogImage({Key key, this.imageUrl, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 2.5,
        margin: EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            CachedNetworkImage(
              fit: BoxFit.cover,
              placeholder: CircularProgressIndicator(),
              imageUrl: imageUrl,
            ),
            DogTitle(name: name),
          ],
        ),
      ),
    );
  }
}
