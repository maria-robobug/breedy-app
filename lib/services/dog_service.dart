import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:breedy/models/doggo.dart';

class DogService {
  static const ANIMAL_API_URL = "https://go-animal-api.herokuapp.com/api/v1/dogs/random";

  static Future fetchDogData() async {
    Doggo doggo = new Doggo();

    try {
      var request = await HttpClient().getUrl(Uri.parse(ANIMAL_API_URL));
      var response = await request.close();

      await for (var contents in response.transform(Utf8Decoder())) {
        var decodedContents = json.decode(contents);
        doggo.imageUrl = decodedContents['image']['url'];
        doggo.name = decodedContents['name'];
        doggo.height = decodedContents['height'];
        doggo.weight = decodedContents['weight'];
        doggo.lifespan = decodedContents['lifespan'];
        doggo.temperament = decodedContents['temperament'];
        doggo.breedGroup = decodedContents['breed_group'];
      }
    } catch (exception) {
      print(exception);
    }

    return doggo;
  }
}
