import 'dart:convert';
import 'dart:async';
import 'package:breedy/models/log/logger.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:breedy/models/doggo.dart';

class AnimalApiClient {
  static const baseURL = 'https://go-animal-api.herokuapp.com';
  static final log = getLogger('DogService');
  final http.Client httpClient;

  AnimalApiClient({
    @required this.httpClient,
  }) : assert(httpClient != null);

  Future<Doggo> fetchRandomDoggo() async {
    final randomDoggoURL = '$baseURL/api/v1/dogs/random';
    final doggoResponse = await this.httpClient.get(randomDoggoURL);

    if (doggoResponse.statusCode != 200) {
      log.e("Request failed with status: ${doggoResponse.statusCode}");
      throw Exception('error getting doggo');
    }

    final doggoJson = jsonDecode(doggoResponse.body);
    return Doggo.fromJson(doggoJson);
  }
}
