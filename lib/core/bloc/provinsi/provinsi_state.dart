import 'package:itacov/core/model/provinsi_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ProvinsiState {}


class InitialProvinsiState extends ProvinsiState {}


class LoadingProvinsiState extends ProvinsiState {}


class FailureProvinsiState extends ProvinsiState {
  final String errorMessage;
  FailureProvinsiState(this.errorMessage);
}



class LoadedProvinsiState extends ProvinsiState {
  final ProvinsiModel provinsiModel;
  LoadedProvinsiState(this.provinsiModel);
}
