import 'package:itacov/core/model/provinsi_model.dart';
import 'package:itacov/core/repository/corona_repo.dart';
import 'package:rxdart/rxdart.dart';

class ProvinsiBloc {
  final RepoApi _repoApi = RepoApi();

  final BehaviorSubject<ProvinsiModel> _subject = BehaviorSubject<ProvinsiModel>();

  getProvinsi() async {
    ProvinsiModel response = await _repoApi.getProvinsi();
    _subject.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<ProvinsiModel> get subject => _subject;
}

final provinsiBloc = ProvinsiBloc();
