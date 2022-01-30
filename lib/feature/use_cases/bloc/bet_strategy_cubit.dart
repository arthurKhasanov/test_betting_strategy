import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_betting_strategy/feature/data/database/database.dart';
import 'package:test_betting_strategy/feature/data/repository/repository.dart';
import 'package:test_betting_strategy/feature/use_cases/bloc/bet_strategy_state.dart';

class BetStratCubit extends Cubit<BetStratState> {
  final RepositoryInterface repository;
  List<int> addedBS = [];
  bool isFav = false;
  BetStratCubit({required this.repository}) : super(BetStratLoadingState());

  loadAllBS() async {
    if (state is BetStratLoadSuccessfulState == false) {
      emit(BetStratLoadingState());
    }

    final allBSList = repository.getAllBS();
    getBSfromDB();
    if (allBSList.isNotEmpty) {
      final sortedBS = _sortBS(allBSList);
      emit(BetStratLoadSuccessfulState(
          listBetStrats: sortedBS,
          title: 'Choose your Strategy',
          starColor: Colors.deepPurple));
    } else {
      emit(BetStratLoadSuccessfulState(
        listBetStrats: const [],
        title: 'No bet Strategies',
        starColor: Colors.deepPurple,
      ));
    }
  }

  loadFavoriteBS() async {
    if (state is BetStratLoadSuccessfulState == false) {
      emit(BetStratLoadingState());
    }

    try {
      final favBSList = await getBSfromDB();
      if (favBSList.isNotEmpty) {
        final sortedBS = _sortBS(favBSList);
        emit(BetStratLoadSuccessfulState(
            listBetStrats: sortedBS,
            title: 'Your strategies',
            starColor: Colors.yellow));
      } else {
        emit(BetStratLoadSuccessfulState(
          listBetStrats: [],
          title: 'No bet Strategies',
          starColor: Colors.deepPurple,
        ));
      }
    } catch (e) {
      emit(BetStratLoadFailedState(exception: e as Exception));
    }
  }

  void addOrDeleteBSFromDB(BetStrat betStrat) {
    if (isFav) {
      if (addedBS.contains(betStrat.id)) {
        deleteFromFavorite(betStrat);
        loadAllBS();
      } else {
        addToFavorite(betStrat);
        loadAllBS();
      }
    } else {
      if (addedBS.contains(betStrat.id)) {
        deleteFromFavorite(betStrat);
        loadFavoriteBS();
      } else {
        addToFavorite(betStrat);
        loadFavoriteBS();
      }
    }
  }

  addToFavorite(BetStrat betStrat) async {
    await repository.addToFavorite(betStrat);
    addedBS.add(betStrat.id);
  }

  deleteFromFavorite(BetStrat betStrat) async {
    await repository.deleteFromFavorite(betStrat);
    addedBS.remove(betStrat.id);
  }

  String getImage(BetStrat betStrat) {
    if (betStrat.sport == 'football') {
      return 'assets/images/football.jpeg';
    } else if (betStrat.sport == 'baseball') {
      return 'assets/images/baseball.jpeg';
    } else {
      return 'assets/images/basketball.jpeg';
    }
  }

  changeListStatus() {
    isFav = !isFav;
  }

  Future<List<BetStrat>> getBSfromDB() async {
    final favBSList = await repository.getFavoriteBS();
    addedBS = [];
    for (var item in favBSList) {
      addedBS.add(item.id);
    }
    return favBSList;
  }
}

List<List<BetStrat>> _sortBS(List<BetStrat> listBS) {
  List<List<BetStrat>> sortedBS = [[], [], []];
  for (var bs in listBS) {
    if (bs.sport == 'football') {
      sortedBS[0].add(bs);
    } else if (bs.sport == 'baseball') {
      sortedBS[1].add(bs);
    } else {
      sortedBS[2].add(bs);
    }
  }
  return sortedBS;
}
