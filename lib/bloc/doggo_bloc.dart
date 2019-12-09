import 'package:bloc/bloc.dart';
import 'package:breedy/bloc/doggo_event.dart';
import 'package:breedy/bloc/doggo_state.dart';
import 'package:breedy/models/models.dart';
import 'package:breedy/repositories/repositories.dart';
import 'package:flutter/material.dart';

class DoggoBloc extends Bloc<DoggoEvent, DoggoState> {
  final AnimalRepository animalRepository;

  DoggoBloc({@required this.animalRepository}) : assert(animalRepository != null);

  @override
  DoggoState get initialState => InitialDoggoState();

  @override
  Stream<DoggoState> mapEventToState(DoggoEvent event) async* {
    if (event is FetchDoggo) {
      yield DoggoLoading();
      try {
        final Doggo doggo = await animalRepository.getRandomDoggo();
        yield DoggoLoaded(doggo: doggo);
      } catch (_) {
        yield DoggoError();
      }
    }
    if (event is RefreshDoggo) {
      try {
        yield DoggoLoading();
        final Doggo doggo = await animalRepository.getRandomDoggo();
        yield DoggoLoaded(doggo: doggo);
      } catch (_) {
        yield state;
      }
    }
  }
}
