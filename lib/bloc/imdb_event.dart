import 'package:meta/meta.dart';

@immutable
abstract class ImdbEvent {}

class FetchImdb extends ImdbEvent {}
