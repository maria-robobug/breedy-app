import 'package:dogfacts_app/pages/home.dart';
import 'package:flutter/material.dart';

class DogFactsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dog Facts',
      theme: ThemeData(brightness: Brightness.light),
      home: HomePage(title: 'Dog Facts'),
    );
  }
}
