// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class BetStrat extends DataClass implements Insertable<BetStrat> {
  final int id;
  final String title;
  final String description;
  final String sport;
  bool isFavorite;
  BetStrat(
      {required this.id,
      required this.title,
      required this.description,
      required this.sport,
      required this.isFavorite});
  factory BetStrat.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return BetStrat(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      sport: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sport'])!,
      isFavorite: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_favorite'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['sport'] = Variable<String>(sport);
    map['is_favorite'] = Variable<bool>(isFavorite);
    return map;
  }

  BetStratsCompanion toCompanion(bool nullToAbsent) {
    return BetStratsCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
      sport: Value(sport),
      isFavorite: Value(isFavorite),
    );
  }

  factory BetStrat.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BetStrat(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      sport: serializer.fromJson<String>(json['sport']),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'sport': serializer.toJson<String>(sport),
      'isFavorite': serializer.toJson<bool>(isFavorite),
    };
  }

  BetStrat copyWith(
          {int? id,
          String? title,
          String? description,
          String? sport,
          bool? isFavorite}) =>
      BetStrat(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        sport: sport ?? this.sport,
        isFavorite: isFavorite ?? this.isFavorite,
      );
  @override
  String toString() {
    return (StringBuffer('BetStrat(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('sport: $sport, ')
          ..write('isFavorite: $isFavorite')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, description, sport, isFavorite);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BetStrat &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.sport == this.sport &&
          other.isFavorite == this.isFavorite);
}

class BetStratsCompanion extends UpdateCompanion<BetStrat> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> description;
  final Value<String> sport;
  final Value<bool> isFavorite;
  const BetStratsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.sport = const Value.absent(),
    this.isFavorite = const Value.absent(),
  });
  BetStratsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String description,
    required String sport,
    this.isFavorite = const Value.absent(),
  })  : title = Value(title),
        description = Value(description),
        sport = Value(sport);
  static Insertable<BetStrat> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? sport,
    Expression<bool>? isFavorite,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (sport != null) 'sport': sport,
      if (isFavorite != null) 'is_favorite': isFavorite,
    });
  }

  BetStratsCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? description,
      Value<String>? sport,
      Value<bool>? isFavorite}) {
    return BetStratsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      sport: sport ?? this.sport,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (sport.present) {
      map['sport'] = Variable<String>(sport.value);
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BetStratsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('sport: $sport, ')
          ..write('isFavorite: $isFavorite')
          ..write(')'))
        .toString();
  }
}

class $BetStratsTable extends BetStrats
    with TableInfo<$BetStratsTable, BetStrat> {
  final GeneratedDatabase _db;
  final String? _alias;
  $BetStratsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _sportMeta = const VerificationMeta('sport');
  @override
  late final GeneratedColumn<String?> sport = GeneratedColumn<String?>(
      'sport', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _isFavoriteMeta = const VerificationMeta('isFavorite');
  @override
  late final GeneratedColumn<bool?> isFavorite = GeneratedColumn<bool?>(
      'is_favorite', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_favorite IN (0, 1))',
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, description, sport, isFavorite];
  @override
  String get aliasedName => _alias ?? 'bet_strats';
  @override
  String get actualTableName => 'bet_strats';
  @override
  VerificationContext validateIntegrity(Insertable<BetStrat> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('sport')) {
      context.handle(
          _sportMeta, sport.isAcceptableOrUnknown(data['sport']!, _sportMeta));
    } else if (isInserting) {
      context.missing(_sportMeta);
    }
    if (data.containsKey('is_favorite')) {
      context.handle(
          _isFavoriteMeta,
          isFavorite.isAcceptableOrUnknown(
              data['is_favorite']!, _isFavoriteMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BetStrat map(Map<String, dynamic> data, {String? tablePrefix}) {
    return BetStrat.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $BetStratsTable createAlias(String alias) {
    return $BetStratsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $BetStratsTable betStrats = $BetStratsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [betStrats];
}
