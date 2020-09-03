import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

import 'package:brews/models/brewery.dart';
import 'package:brews/models/exceptions.dart';
import 'package:brews/repositories/impl/brews_repository_impl.dart';

part 'brews_state.dart';

class BrewsCubit extends Cubit<BrewsState> {
  final BrewsRepository _brewsRepository;

  BrewsCubit(this._brewsRepository) : super(const BrewsInitial());

  Future<void> getBrews(String brewName) async {
    try {
      emit(const BrewsLoading());
      final brews = await _brewsRepository.search(brewName);
      emit(BrewsLoaded(brews));
    } on NetworkException {
      emit(const BrewsError("Couldn't fetch brews. Is the device online?"));
    }
  }
}
