import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:itacov/core/repository/corona_repo.dart';
import './bloc.dart';

class IndonesiaBloc extends Bloc<IndonesiaEvent, IndonesiaState> {
  final RepoApi repoApi;

  IndonesiaBloc(this.repoApi);

  @override
  IndonesiaState get initialState => InitialIndonesiaState();

  @override
  Stream<IndonesiaState> mapEventToState(
    IndonesiaEvent event,
  ) async* {
    if (event is LoadDataIndonesiaEvent) {
      yield* _mapLoadDataIndonesiaEventToState();
    }
  }

  Stream<IndonesiaState> _mapLoadDataIndonesiaEventToState() async* {
    yield LoadingIndonesiaState();
    var response = await repoApi.getDataIndonesia();
    yield response.fold(
      (errorMessage) => FailureIndonesiaState(errorMessage),
      (data) => LoadedIndonesiaState(data),
    );
  }
}
