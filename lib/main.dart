import 'package:breedy/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;
import 'repositories/repositories.dart';
import 'package:breedy/bloc/bloc.dart';
import 'package:bloc/bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  BlocSupervisor.delegate = SimpleBlocDelegate();

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
      title: "Breedy",
      theme: ThemeData(brightness: Brightness.light),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Breedy'),
          backgroundColor: Colors.black87,
          elevation: 0.0,
        ),
        body: DoggoScreen(animalRepository: animalRepository),
      ),
    );
  }
}
