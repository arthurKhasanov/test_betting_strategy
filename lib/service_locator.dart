import 'package:get_it/get_it.dart';
import 'package:test_betting_strategy/feature/data/database/database.dart';
import 'package:test_betting_strategy/feature/data/datasourse/file_datasourse.dart';
import 'package:test_betting_strategy/feature/data/datasourse/local_datasourse.dart';
import 'package:test_betting_strategy/feature/data/repository/repository.dart';
import 'package:test_betting_strategy/feature/use_cases/bloc/bet_strategy_cubit.dart';

final sl = GetIt.instance;

@override
Future<void> init() async {
  // Cubit
  sl.registerFactory(() => BetStratCubit(repository: sl()));

  // Repository
  sl.registerLazySingleton<RepositoryInterface>(
      () => Repository(fileDatasourse: sl(), localDatasourse: sl()));

  //Datasourse
  sl.registerLazySingleton<LocalDatasourse>(
      () => LocalDatasourse(appDatabase: sl()));
  sl.registerLazySingleton<FileDatasourse>(() => FileDatasourse());
  // DB
  sl.registerLazySingleton<AppDatabase>(() => AppDatabase());
}
