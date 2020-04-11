import 'package:itacov/core/model/dunia/dunia_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class DuniaState {}

class InitialDuniaState extends DuniaState {}

class LoadingDuniaState extends DuniaState {}

class FailureDuniaState extends DuniaState {
  final String errorMessage;

  FailureDuniaState(this.errorMessage);

}

class LoadedDuniaState extends DuniaState {
  final List<DuniaModel> listDuniaModel;

  LoadedDuniaState(this.listDuniaModel);
}
