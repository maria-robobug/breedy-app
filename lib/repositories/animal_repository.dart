import 'package:breedy/models/models.dart';
import 'package:breedy/repositories/animal_api_client.dart';
import 'package:flutter/material.dart';

class AnimalRepository {
  final AnimalApiClient animalApiClient;

  AnimalRepository({@required this.animalApiClient})
      : assert(animalApiClient != null);

  Future<Doggo> getRandomDoggo() async {
    return await animalApiClient.fetchRandomDoggo();
  }
}
