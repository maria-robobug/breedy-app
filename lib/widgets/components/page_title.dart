import 'package:breedy/constants.dart';
import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  final String title, subHeading;

  const PageTitle({Key key, this.title, this.subHeading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(children: <Widget>[
        Text(
          title,
          style: CustomTextStyle.heading,
          textAlign: TextAlign.center,
          // textDirection: TextDirection.ltr,
        ),
        subHeading != null
            ? Text(
                " " + subHeading + " dog",
                style: CustomTextStyle.subHeading,
                textAlign: TextAlign.center,
                // textDirection: TextDirection.rtl,
              )
            : Text(""),
      ]),
    );
  }
}
