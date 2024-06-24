part of 'imdb_bloc.dart';

@immutable
abstract class ImdbState {}

class ImdbInitial extends ImdbState {}
class ImdbBlocLoading extends ImdbState {}
class ImdbBlocLoaded extends ImdbState {}
class ImdbBlocError extends ImdbState {}
