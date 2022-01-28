import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_betting_strategy/feature/data/database/database.dart';
import 'package:test_betting_strategy/feature/ui/widgets/state_widgets.dart';
import 'package:test_betting_strategy/feature/ui/widgets/strat_list.dart';
import 'package:test_betting_strategy/feature/use_cases/bloc/bet_strategy_cubit.dart';
import 'package:test_betting_strategy/feature/use_cases/bloc/bet_strategy_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BetStratCubit, BetStratState>(
        builder: (context, state) {
          if (state is BetStratLoadSuccessfulState) {
            return BetStratList(
              betList: state.listBetStrats,
              title: state.title,
              starColor: state.starColor,
            );
          } else if (state is BetStratLoadFailedState) {
            return FailureBetStratList(
              exception: state.exception,
            );
          } else {
            return const LoadingView();
          }
        },
      ),
    );
  }
}

class BetStratList extends StatelessWidget {
  final List<List<BetStrat>> betList;
  final String title;
  final Color starColor;
  const BetStratList(
      {required this.betList,
      required this.title,
      Key? key,
      required this.starColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cubit = BlocProvider.of<BetStratCubit>(context);
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 200,
          actions: [
            IconButton(
              onPressed: () {
                if (_cubit.isFav) {
                  _cubit
                    ..changeListStatus()
                    ..loadFavoriteBS();
                } else {
                  _cubit
                    ..changeListStatus()
                    ..loadAllBS();
                }
              },
              icon: Icon(
                Icons.star,
                color: starColor,
              ),
            ),
          ],
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: const Image(
              image: AssetImage('assets/images/money.jpeg'),
              fit: BoxFit.cover,
            ),
            title: Text(
              title,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
        ),
        buildContent(context, betList),
      ],
    );
  }
}

Widget buildContent(BuildContext context, List<List<BetStrat>> betList) {
  return SliverToBoxAdapter(
    child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: betList.isNotEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StratList(
                    betStratArray: betList[0],
                  ),
                  StratList(
                    betStratArray: betList[1],
                  ),
                  StratList(
                    betStratArray: betList[2],
                  ),
                ],
              )
            : Center(
                child: Text(
                'You\'ll find Your Favorite Bet Strategies here',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ))),
  );
}
