import 'dart:convert';

import 'dart:io';

class DogData {
  String imageUrl;
  String name;
  String height;
  String weight;
  String lifespan;
  String temperament;

  Future getDogData() async {
    try {
      var request = await HttpClient().getUrl(
          Uri.parse('https://animal-api-229520.appspot.com/api/v1/dog'));
      var response = await request.close();

      await for (var contents in response.transform(Utf8Decoder())) {
        imageUrl = json.decode(contents)['image_url'];
        name = json.decode(contents)['name'];
        height = json.decode(contents)['height'];
        weight = json.decode(contents)['weight'];
        lifespan = json.decode(contents)['lifespan'];
        temperament = json.decode(contents)['temperament'];
      }
    } catch (exception) {
      print(exception);
    }
  }
}
