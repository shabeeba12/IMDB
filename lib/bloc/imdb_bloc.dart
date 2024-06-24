import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../repository/api/imdb_api.dart';
import '../repository/model_class/imdb_model.dart';
import '../ui/home.dart';
import 'imdb_event.dart';

part 'imdb_state.dart';

class ImbdBloc extends Bloc<ImdbEvent, ImdbState> {
  IMDbApi imdbApi=IMDbApi();
  late MovieModel imdbModel;
  ImbdBloc() : super(ImdbInitial()) {
    on<FetchImdb>((event, emit) async{
      emit(ImdbBlocLoading());
      try{

        imdbModel = await imdbApi.getIMDb();
        emit(ImdbBlocLoaded());
      }catch(e){
        print(e);
        emit(ImdbBlocError());
      }

      // TODO: implement event handler
    });
  }
}
