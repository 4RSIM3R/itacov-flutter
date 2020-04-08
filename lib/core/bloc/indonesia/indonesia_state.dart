import 'package:itacov/core/model/indonesia_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class IndonesiaState {}

class InitialIndonesiaState extends IndonesiaState {}

class LoadingIndonesiaState extends IndonesiaState {}

class FailureIndonesiaState extends IndonesiaState {
  final String errorMessage;

  FailureIndonesiaState(this.errorMessage);
}

class LoadedIndonesiaState extends IndonesiaState {
  final IndonesiaModel indonesiaModel;

  LoadedIndonesiaState(this.indonesiaModel);
}