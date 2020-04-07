import 'package:itacov/core/model/indonesia_model.dart';
import 'package:itacov/core/repository/corona_repo.dart';
import 'package:rxdart/rxdart.dart';

class IndonesiaBloc {
  final RepoApi _repoApi = RepoApi();
  final BehaviorSubject<IndonesiaModel> _subject = BehaviorSubject<IndonesiaModel>();

  getIndonesia() async {
    IndonesiaModel response = await _repoApi.getDataIndonesia();
    _subject.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<IndonesiaModel> get subject => _subject;
}

final indonesiaBloc = IndonesiaBloc();
