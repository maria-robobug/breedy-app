import 'package:breedy/pages/home_page.dart';
import 'package:flutter/material.dart';

class BreedyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Breedy",
      theme: ThemeData(brightness: Brightness.light),
      home: HomePage("Breedy"),
    );
  }
}
