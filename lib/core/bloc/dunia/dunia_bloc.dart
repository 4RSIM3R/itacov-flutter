import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:itacov/core/model/dunia/dunia_model.dart';
import 'package:itacov/core/repository/repo_api.dart';
import './bloc.dart';

class DuniaBloc extends Bloc<DuniaEvent, DuniaState> {
  final RepoApi repoApi;

  DuniaBloc(this.repoApi);

  @override
  DuniaState get initialState => InitialDuniaState();

  @override
  Stream<DuniaState> mapEventToState(
    DuniaEvent event,
  ) async* {
    if (event is LoadDuniaEvent) {
      yield* _mapLoadDuniaEventToState();
    }
  }

  Stream<DuniaState> _mapLoadDuniaEventToState() async* {
    yield LoadingDuniaState();
    String valuePositifDunia = '';
    String valueSembuhDunia = '';
    String valueMeninggalDunia = '';

    var responseSembuhDunia = await repoApi.getDataSembuhDunia();
    var sembuhDunia = responseSembuhDunia.fold(
      (error) => error,
      (data) => data,
    );
    if (sembuhDunia is String) {
      yield FailureDuniaState(sembuhDunia);
      return;
    } else if (sembuhDunia is DuniaModel) {
      valueSembuhDunia = sembuhDunia.value;
    }
    var responsePositifDunia = await repoApi.getDataPositifDunia();
    var positifDunia = responsePositifDunia.fold(
      (error) => error,
      (data) => data,
    );
    if (positifDunia is String) {
      yield FailureDuniaState(positifDunia);
      return;
    } else if (positifDunia is DuniaModel) {
      valuePositifDunia = positifDunia.value;
    }
    var responseMeninggalDunia = await repoApi.getDataMeninggalDunia();
    var meninggalDunia = responseMeninggalDunia.fold(
      (error) => error,
      (data) => data,
    );
    if (meninggalDunia is String) {
      yield FailureDuniaState(meninggalDunia);
      return;
    } else if (meninggalDunia is DuniaModel) {
      valueMeninggalDunia = meninggalDunia.value;
    }
    List<DuniaModel> listDuniaModel = [
      DuniaModel(name: 'Kasus Positif Seluruh Dunia', value: valuePositifDunia),
      DuniaModel(name: 'Kasus Sembuh Seluruh Dunia', value: valueSembuhDunia),
      DuniaModel(name: 'Kasus Meninggal Seluruh Dunia', value: valueMeninggalDunia),
    ];
    yield LoadedDuniaState(listDuniaModel);
  }
}
