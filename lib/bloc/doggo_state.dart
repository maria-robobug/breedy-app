import 'package:breedy/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

abstract class DoggoState extends Equatable {
  const DoggoState();

  @override
  List<Object> get props => [];
}

class InitialDoggoState extends DoggoState {}

class DoggoLoading extends DoggoState {}

class DoggoLoaded extends DoggoState {
  final Doggo doggo;
  const DoggoLoaded({@required this.doggo}) : assert(doggo != null);

  @override
  List<Object> get props => [doggo];
}

class DoggoError extends DoggoState {}
