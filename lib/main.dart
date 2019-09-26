import 'package:breedy/app.dart';
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
