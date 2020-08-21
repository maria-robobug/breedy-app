import 'package:breedy/widgets/components/info_section.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final String option1, option2, option3;

  const Info({Key key, this.option1, this.option2, this.option3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InfoSection(title: "Height", detail: option1),
              InfoSection(title: "Weight", detail: option2),
              InfoSection(title: "Lifespan", detail: option3),
            ],
          ),
        ],
      ),
    );
  }
}
