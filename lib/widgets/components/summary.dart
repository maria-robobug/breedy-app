import 'package:breedy/constants.dart';
import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  final String summary;

  const Summary({Key key, this.summary}) : super(key: key);
  static const double SCALE_FACTOR = 1.2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      child: ListView(
        shrinkWrap: true,
        children: [
          summary == ""
              ? Text(
                  "N/A",
                  textScaleFactor: SCALE_FACTOR,
                  style: CustomTextStyle.generic,
                  textAlign: TextAlign.center,
                )
              : Text(
                  summary,
                  textScaleFactor: SCALE_FACTOR,
                  style: CustomTextStyle.generic,
                  textAlign: TextAlign.center,
                ),
        ],
      ),
    );
  }
}
