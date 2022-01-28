import 'package:test_betting_strategy/feature/data/database/database.dart';
import 'package:test_betting_strategy/feature/data/datasourse/file_datasourse.dart';
import 'package:test_betting_strategy/feature/data/datasourse/local_datasourse.dart';

abstract class RepositoryInterface {
  List<BetStrat> getAllBS();
  Future<List<BetStrat>> getFavoriteBS();
  addToFavorite(BetStrat betStrat);
  deleteFromFavorite(BetStrat betStrat);
}

class Repository implements RepositoryInterface {
  final FileDatasourse fileDatasourse;
  final LocalDatasourse localDatasourse;

  Repository({required this.fileDatasourse, required this.localDatasourse});

    @override
  List<BetStrat> getAllBS() {
    return fileDatasourse.getAllBS();
  }

  @override
  Future<List<BetStrat>> getFavoriteBS() {
    return localDatasourse.getFavoriteBS();
  }

  @override
  addToFavorite(BetStrat betStrat) {
    localDatasourse.addToFavorite(betStrat);
  }

  @override
  deleteFromFavorite(BetStrat betStrat) {
    localDatasourse.deleteFromFavorite(betStrat);
  }
}
