import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_betting_strategy/feature/data/database/database.dart';
import 'package:test_betting_strategy/feature/ui/pages/detail_page.dart';
import 'package:test_betting_strategy/feature/use_cases/bloc/bet_strategy_cubit.dart';

class BetStratCard extends StatelessWidget {
  BetStrat betStrat;
  BetStratCard({required this.betStrat, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cubit = BlocProvider.of<BetStratCubit>(context);
    
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailPage(betStrat: betStrat);
        }));
      },
      child: Container(
        width: 300,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(_cubit.getImage(betStrat)),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken),
            ),
            borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  betStrat.title,
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.center,
                )
              ]),
        ),
      ),
    );
  }
}

