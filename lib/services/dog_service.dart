import 'dart:convert';
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
	
	var doggo = Doggo();
    if (response.statusCode == 200) {
    	var doggoJson = json.decode(response.body);
    	doggo = Doggo.fromJson(doggoJson);
    } 
    return doggo;
  }
}
