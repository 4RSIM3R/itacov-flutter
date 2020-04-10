import 'package:get_it/get_it.dart';
import 'package:itacov/core/bloc/dunia/bloc.dart';
import 'package:itacov/core/bloc/indonesia/bloc.dart';
import 'package:itacov/core/repository/repo_api.dart';

final sl = GetIt.instance;

void init() {
  // Repository
  sl.registerLazySingleton<RepoApi>(() => RepoApi());

  // BLoC
  sl.registerFactory(() => IndonesiaBloc(sl()));
  sl.registerFactory(() => DuniaBloc(sl()));
}