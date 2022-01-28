import 'package:test_betting_strategy/feature/data/database/database.dart';

abstract class LocalDatasourseInterface {
  Future<List<BetStrat>> getFavoriteBS();
  addToFavorite(BetStrat betSrtat);
  deleteFromFavorite(BetStrat betStrat);
}

class LocalDatasourse implements LocalDatasourseInterface {
  final AppDatabase appDatabase;

  LocalDatasourse({required this.appDatabase});

  @override
  addToFavorite(BetStrat betStrat) {
    appDatabase.addToFavorite(betStrat);
  }

  @override
  deleteFromFavorite(BetStrat betStrat) {
    appDatabase.deleteFromFavorite(betStrat);
  }

  @override
  Future<List<BetStrat>> getFavoriteBS() {
    final favList = appDatabase.getFavoriteBetStrategies;
    return favList;
  }
}
