import 'dart:convert';

class Doggo {
  final String imageUrl;
  final int imageWidth;
  final int imageHeight;
  final String name;
  final String height;
  final String weight;
  final String lifespan;
  final String temperament;
  final String breedGroup;

  Doggo(
      {this.imageUrl,
      this.imageWidth,
      this.imageHeight,
      this.name,
      this.height,
      this.weight,
      this.lifespan,
      this.temperament,
      this.breedGroup});

  factory Doggo.fromJson(Map<String, dynamic> json) {
    return Doggo(
      imageUrl: json['image']['url'],
      imageWidth: json['image']['width'],
      imageHeight: json['image']['height'],
      name: json['name'],
      height: json['height'],
      weight: json['weight'],
      lifespan: json['lifespan'],
      temperament: json['temperament'],
      breedGroup: json['breed_group'],
    );
  }
}
