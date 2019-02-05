import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:breedy/models/doggo.dart';

class DogController {
  static const ANIMAL_API_URL =
      "https://animal-api-229520.appspot.com/api/v1/dog";

  static Future fetchDogData() async {
    Doggo doggo = new Doggo();

    var response = await http.get(
      ANIMAL_API_URL,
      headers: {"Accept": "application/json"},
    );

    if (response.statusCode == 200) {
      String responseBody = response.body;
      var responseJSON = json.decode(responseBody);

      doggo.imageUrl = responseJSON['image_url'];
      doggo.name = responseJSON['name'];
      doggo.height = responseJSON['height'];
      doggo.weight = responseJSON['weight'];
      doggo.lifespan = responseJSON['lifespan'];
      doggo.temperament = responseJSON['temperament'];
    } else {
      print('Something went wrong. \nResponse Code : ${response.statusCode}');
    }

    return doggo;
  }
}
