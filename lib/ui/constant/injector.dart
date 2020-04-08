import 'package:get_it/get_it.dart';
import 'package:itacov/core/bloc/indonesia/bloc.dart';
import 'package:itacov/core/repository/corona_repo.dart';

final sl = GetIt.instance;

void init() {
  // Repository
  sl.registerLazySingleton<RepoApi>(() => RepoApi());

  // BLoC
  sl.registerFactory(() => IndonesiaBloc(sl()));
}