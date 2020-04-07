import 'package:itacov/core/model/indonesia_model.dart';
import 'package:itacov/core/repository/corona_repo.dart';
import 'package:rxdart/rxdart.dart';

class IndonesiaBloc {
  final RepoApi _repoApi = RepoApi();
  final BehaviorSubject<Indonesia> _subject = BehaviorSubject<Indonesia>();

  getIndonesia() async {
    Indonesia response = await _repoApi.getDataIndonesia();
    _subject.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<Indonesia> get subject => _subject;
}

final indonesiaBloc = IndonesiaBloc();
