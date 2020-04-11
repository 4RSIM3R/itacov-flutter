import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:itacov/core/bloc/indonesia/bloc.dart';
import 'package:itacov/core/bloc/provinsi/bloc.dart';
import 'package:itacov/core/repository/corona_repo.dart';

import './bloc.dart';

class ProvinsiBloc extends Bloc<ProvinsiEvent, ProvinsiState> {
  final RepoApi repoApi;
  ProvinsiBloc(this.repoApi);

  @override
  ProvinsiState get initialState => InitialProvinsiState();

  @override
  Stream<ProvinsiState> mapEventToState(ProvinsiEvent event) async* {
    if (event is LoadDataIndonesiaEvent) {
      yield* _mapLoadDataProvinsiEventToState();
    }
  }

  Stream<ProvinsiState> _mapLoadDataProvinsiEventToState() async* {
    yield LoadingProvinsiState();
    var response = await repoApi.getProvinsi();
    yield response.fold(
      (errorMessage) => FailureProvinsiState(errorMessage),
      (data) => LoadedProvinsiState(data),
    );
  }
}
