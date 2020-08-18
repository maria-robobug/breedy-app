import 'dart:async';
import 'package:breedy/bloc/bloc.dart';
import 'package:breedy/bloc/doggo_event.dart';
import 'package:breedy/bloc/doggo_state.dart';
import 'package:breedy/models/doggo.dart';
import 'package:breedy/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'containers/dog_card.dart';

class DoggoScreen extends StatefulWidget {
  final AnimalRepository animalRepository;

  const DoggoScreen({Key key, this.animalRepository}) : super(key: key);

  @override
  State<DoggoScreen> createState() => _DoggoScreenState();
}

class _DoggoScreenState extends State<DoggoScreen> {
  Completer<void> _refreshCompleter;
  DoggoBloc _doggoBloc;

  @override
  void initState() {
    _doggoBloc = DoggoBloc(animalRepository: widget.animalRepository);
    _doggoBloc.add(FetchDoggo());
    _refreshCompleter = Completer<void>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: BlocListener<DoggoBloc, DoggoState>(
          cubit: _doggoBloc,
          listener: (context, state) {
            if (state is DoggoLoaded) {
              _refreshCompleter?.complete();
              _refreshCompleter = Completer();
            }
          },
          child: BlocBuilder<DoggoBloc, DoggoState>(
            cubit: _doggoBloc,
            builder: (context, state) {
              if (state is DoggoLoaded) {
                return buildDoggoLoaded(context, state.doggo);
              }
              if (state is DoggoError) {
                return buildDoggoError();
              }
              return buildDoggoLoading();
            },
          ),
        ),
      ),
    );
  }

  Widget buildDoggoLoading() {
    return Center(child: CircularProgressIndicator());
  }

  Widget buildDoggoLoaded(BuildContext context, Doggo doggo) {
    return RefreshIndicator(
      onRefresh: () {
        _doggoBloc.add(RefreshDoggo());
        return _refreshCompleter.future;
      },
      child: Container(
        color: Colors.black87,
        child: DogCard(doggo),
      ),
    );
  }

  Widget buildDoggoError() {
    return Text(
      'Error fetching doggo!',
      style: TextStyle(color: Colors.red),
    );
  }
}
