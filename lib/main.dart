import 'package:breedy/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;
import 'repositories/repositories.dart';
import 'package:breedy/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final AnimalRepository animalRepository = AnimalRepository(
    animalApiClient: AnimalApiClient(httpClient: http.Client()),
  );

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) {
    Logger.level = Level.verbose;
    runApp(App(animalRepository: animalRepository));
  });
}

class App extends StatelessWidget {
  final AnimalRepository animalRepository;

  App({Key key, @required this.animalRepository})
      : assert(animalRepository != null),
        super(key: key);

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
          body: BlocProvider<DoggoBloc>(
            create: (context) => DoggoBloc(animalRepository: animalRepository),
            child: DoggoScreen(),
          )),
    );
  }
}
