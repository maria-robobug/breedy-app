import 'package:breedy/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;
import 'constants.dart';
import 'repositories/repositories.dart';
import 'package:breedy/bloc/bloc.dart';
import 'package:bloc/bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = SimpleBlocObserver();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    Logger.level = Level.verbose;

    runApp(App());
  });
}

class App extends StatelessWidget {
  final AnimalRepository animalRepository = AnimalRepository(
    animalApiClient: AnimalApiClient(httpClient: http.Client()),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // title: Text("Breedy",
          //     textScaleFactor: 1.5, style: CustomTextStyle.appTitle),
          shadowColor: Colors.transparent,
          backgroundColor: CustomColour.background,
        ),
        body: DoggoScreen(animalRepository: animalRepository),
      ),
    );
  }
}
