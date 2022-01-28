import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';

part 'database.g.dart';

class BetStrats extends Table {
  IntColumn get id => integer()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  TextColumn get sport => text()();
  BoolColumn get isFavorite => boolean().withDefault(const Constant(false))();
}

@DriftDatabase(tables: [BetStrats])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Получать все бетстрат
  Future<List<BetStrat>> get getFavoriteBetStrategies async =>
      await select(betStrats).get();
  // Добавлять
  addToFavorite(BetStrat betStrategy) {
    into(betStrats).insert(betStrategy);
  }
  // Удалять
  deleteFromFavorite(BetStrat betStrategy) =>
      delete(betStrats).delete(betStrategy);
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
