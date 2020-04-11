import 'package:get_it/get_it.dart';
import 'package:itacov/core/bloc/dunia/bloc.dart';
import 'package:itacov/core/bloc/indonesia/bloc.dart';
<<<<<<< HEAD
import 'package:itacov/core/repository/repo_api.dart';
=======
import 'package:itacov/core/bloc/provinsi/bloc.dart';
import 'package:itacov/core/repository/corona_repo.dart';
>>>>>>> ff3e29b83861337799a730f9712074a678e68de5

final sl = GetIt.instance;

void init() {
  // Repository
  sl.registerLazySingleton<RepoApi>(() => RepoApi());

  // BLoC
  sl.registerFactory(() => IndonesiaBloc(sl()));
<<<<<<< HEAD
  sl.registerFactory(() => DuniaBloc(sl()));
=======
  sl.registerFactory(() => ProvinsiBloc(sl()));

>>>>>>> ff3e29b83861337799a730f9712074a678e68de5
}