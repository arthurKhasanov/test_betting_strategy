import 'package:flutter/material.dart';
import 'package:test_betting_strategy/feature/data/database/database.dart';
import 'package:test_betting_strategy/feature/ui/widgets/bet_strat_card.dart';
import 'package:test_betting_strategy/string_extention.dart';

class StratList extends StatelessWidget {
  final List<BetStrat> betStratArray;
  const StratList({required this.betStratArray, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (betStratArray.isNotEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            betStratArray[0].sport.capitalize(),
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(
            height: 300,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return BetStratCard(betStrat: betStratArray[index]);
                },
                separatorBuilder: (context, index) => const SizedBox(
                      width: 8,
                    ),
                itemCount: betStratArray.length),
          ),
        ],
      );
    } else {
      return Container();
    }
  }
}
