import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:test_betting_strategy/feature/data/database/database.dart';

abstract class BetStratState extends Equatable {}

class BetStratLoadingState extends BetStratState {
  @override
  List<Object?> get props => [];
}

class BetStratLoadSuccessfulState extends BetStratState {
  final List<List<BetStrat>> listBetStrats;
  final String title;
  final Color starColor;

  BetStratLoadSuccessfulState(
      {required this.listBetStrats, required this.title, required this.starColor});

  @override
  List<Object?> get props => [listBetStrats, title];
}

class BetStratLoadFailedState extends BetStratState {
  final Exception exception;

  BetStratLoadFailedState({required this.exception});

  @override
  List<Object?> get props => [exception];
}

