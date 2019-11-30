import 'package:equatable/equatable.dart';

abstract class DoggoEvent extends Equatable {
  const DoggoEvent();

  @override
  List<Object> get props => [];
}

class FetchDoggo extends DoggoEvent {}
