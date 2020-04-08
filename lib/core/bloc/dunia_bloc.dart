import 'package:itacov/core/model/dunia_model.dart';
import 'package:itacov/core/repository/corona_repo.dart';
import 'package:rxdart/rxdart.dart';

class DuniaBloc {
  final RepoApi _repoApi = RepoApi();
  // Instace BehaviorSubject dengan Bertipe DuniaBloc
  // Expects nya Akan Sama Dengan Apa Yang Ada di Model Nanti nya
  final BehaviorSubject<DuniaModel> sembuh = BehaviorSubject<DuniaModel>();
  final BehaviorSubject<DuniaModel> positif = BehaviorSubject<DuniaModel>();
  final BehaviorSubject<DuniaModel> meninggal = BehaviorSubject<DuniaModel>();

  // Request Data Ke Repo

  getSembuh() async {
    DuniaModel response = await _repoApi.getSembuh();
    sembuh.sink.add(response);
  }

  getPositif() async {
    DuniaModel response = await _repoApi.getPositif();
    positif.sink.add(response);
  }

  getMeninggal() async {
    DuniaModel response = await _repoApi.getMeninggal();
    meninggal.sink.add(response);
  }

  // Buat Getter untuk mengambil data dari Stream BehaviorSubject;
  BehaviorSubject<DuniaModel> get datasembuh => sembuh;
  BehaviorSubject<DuniaModel> get datapositif => positif;
  BehaviorSubject<DuniaModel> get datamati => meninggal;



  void dispose() {
    positif.close();
    meninggal.close();
    sembuh.close();
  }
}

final duniaBloc = DuniaBloc();
