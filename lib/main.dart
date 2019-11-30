import 'package:breedy/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    Logger.level = Level.verbose;
    runApp(new BreedyApp());
  });
}


class BreedyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Breedy",
      theme: ThemeData(brightness: Brightness.light),
      home: HomeScreen(),
    );
  }
}
