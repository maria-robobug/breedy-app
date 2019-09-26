import 'dart:convert' as convert;
import 'dart:async';

import 'package:breedy/models/log/logger.dart';
import 'package:http/http.dart' as http;
import 'package:breedy/models/doggo.dart';
import 'package:breedy/models/doggo_image.dart';

class DogService {
  static const DOG_API_URL =
      "https://go-animal-api.herokuapp.com/api/v1/dogs/random";
  static final log = getLogger('DogService');

  static Future<Doggo> fetchData() async {
    var response = await http.get(DOG_API_URL);

    if (response.statusCode != 200) {
      log.e("Request failed with status ${response.statusCode}");
      return null;
    }

    var jsonResponse = convert.jsonDecode(response.body);
    Doggo doggo = new Doggo();
    DoggoImage doggoImage = new DoggoImage();

    doggo.imageUrl = jsonResponse['image']['url'];
    doggo.imageWidth = jsonResponse['image']['width'];
    doggo.imageHeight = jsonResponse['image']['height'];
    doggo.name = jsonResponse['name'];
    doggo.height = jsonResponse['height'];
    doggo.weight = jsonResponse['weight'];
    doggo.lifespan = jsonResponse['lifespan'];
    doggo.temperament = jsonResponse['temperament'];
    doggo.breedGroup = jsonResponse['breed_group'];

    print(doggo);
    return doggo;
  }
}
