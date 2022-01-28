import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_betting_strategy/feature/data/database/database.dart';
import 'package:test_betting_strategy/feature/use_cases/bloc/bet_strategy_cubit.dart';

class DetailPage extends StatelessWidget {
  BetStrat betStrat;
  DetailPage({required this.betStrat, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BetStratCubit _cubit = context.read<BetStratCubit>();
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(betStrat.title),
        actions: [
          IconButton(
              onPressed: () {
                _cubit.addOrDeleteBSFromDB(betStrat);
              },
              icon: betStrat.isFavorite
                  ? const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    )
                  : const Icon(
                      Icons.star,
                      color: Colors.grey,
                    )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: _size.width,
            height: _size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(_cubit.getImage(betStrat)),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              betStrat.title,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              betStrat.description,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ]),
      ),
    );
  }
}
