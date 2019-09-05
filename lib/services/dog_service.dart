import 'dart:convert' as convert;
import 'dart:async';

import 'package:http/http.dart' as http;

import 'package:breedy/models/doggo.dart';

class DogService {
  static const DOG_API_URL =
      "https://go-animal-api.herokuapp.com/api/v1/dogs/random";

  static Future<Doggo> fetchData() async {
    var response = await http.get(DOG_API_URL);

    if (response.statusCode == 200) {
      Doggo doggo = new Doggo();
      var jsonResponse = convert.jsonDecode(response.body);

      doggo.imageUrl = jsonResponse['image']['url'];
      doggo.name = jsonResponse['name'];
      doggo.height = jsonResponse['height'];
      doggo.weight = jsonResponse['weight'];
      doggo.lifespan = jsonResponse['lifespan'];
      doggo.temperament = jsonResponse['temperament'];
      doggo.breedGroup = jsonResponse['breed_group'];

      return doggo;
    } else {
      print("Request failed with status: ${response.statusCode}");
      return null;
    }
  }
}
