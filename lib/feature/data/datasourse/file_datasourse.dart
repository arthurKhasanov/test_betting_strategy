import 'package:test_betting_strategy/feature/data/database/database.dart';

abstract class FileDatasourseInterface {
  List<BetStrat> getAllBS();
}

class FileDatasourse implements FileDatasourseInterface {
  @override
  List<BetStrat> getAllBS() {
    return [
      BetStrat(
        id: 1,
        title: 'Follow expert football predictions',
        description:
            'As we’ll look at later in this article, knowledge and experience is what makes the difference between winning and losing football bets in 2021. Those beating the bookmakers follow a proven strategy that works time and time again. The question is, how do you gain this knowledge and experience without losing £100s at the bookmakers first? As opposed to placing football bets on gut instinct, professional punters have the knowledge and experience to place profitable bets and beat the bookmakers at their own game. How awesome does that sound? Not only will your football betting become more profitable, following tipsters also makes your job much easier. No more questions on who to bet on or how much to stake. Everything is done for you! Simply open your emails or log in and your bets are there ready to place!So where can you find the best and most profitable football tipsters?',
        sport: 'football',
        isFavorite: false,
      ),
      BetStrat(
        id: 2,
        title: 'Profit with matched betting',
        description:
            'Matched betting is incredibly profitable but it can be quite challenging when you first get started. There’s a lot of new concepts to get your head around and you may feel like it’s too complicated. However, there are various matched betting sites which walk you through the entire process and help you get started. Sites like OddsMonkey (review) show you exactly what bets to place, how much to stake and how to maximise your profit.',
        sport: 'football',
        isFavorite: false,
      ),
      BetStrat(
        id: 3,
        title: 'Keep a record',
        description:
            'This way you’re more likely to achieve your goal and win more football bets in the process. At the end of every week or month, depending on your preference and how many bets you place, you should tally up your overall profit and loss and check whether you’re in the green or red. If you’re in the green, you should continue with your current strategy. However, if you’re in the red, check which bets are losing you the most money and see if you can change your tactics slightly. Perhaps your accumulator bets aren’t quite working as well as you’d like or there’s a certain team that keeps letting you down. Whatever it is, keeping a record of your betting activity will allow you to highlight and improve your overall betting strategy with the aim of winning more football bets. Whilst keeping a clear record takes time and effort and isn’t the most exciting process, it will certainly help you improve your betting in 2021.',
        sport: 'football',
        isFavorite: false,
      ),
      BetStrat(
        id: 4,
        title: 'Take Advantage of Plus-Money Underdogs',
        description:
            'In order to make money sports betting football and basketball spreads, bettors must win 52.4% of the time (assuming -110 juice) in order to break even. However, if MLB bettors avoid big favorites and consistently take plus-money underdogs (+120, +150, +170) they can win at a sub-50% clip but still finish the year with positive units won. When dogs lose, you only lose what you risked. But when they win, you enjoy valuable plus-money payouts.',
        sport: 'baseball',
        isFavorite: false,
      ),
      BetStrat(
        id: 5,
        title: 'Avoid Big Favorites',
        description:
            'Oddsmakers know that recreational folks in baseball betting love to take favorites. As a result, they’ll capitalize on public bias and shade their lines accordingly. This means that popular teams like the Red Sox, Yankees, Cubs and Dodgers will always be overpriced because “Average Joes” will take on them regardless of whether they’re -150, -180 or -200 when betting baseball. Using our Bet Labs software, we found that regular-season favorites at -150 or higher have gone 9,040-5,264 (63%) since 2005. On the surface that record seems impressive. However, because you’re always laying a huge minus number, you actually end up in the red (-310.77 units). When favorites win, your payout is small. But when they lose, you get crushed. Simply put, the juice isn’t worth the squeeze.',
        sport: 'baseball',
        isFavorite: false,
      ),
      BetStrat(
        id: 6,
        title: 'Bet Against the Public',
        description:
            'For years, we’ve detailed the value of betting against the public. We like to go contrarian because, more often than not, the public loses. The Average Joe bets based on his gut instinct. They always want to bet favorites, home teams, popular franchises and teams with star players.',
        sport: 'baseball',
        isFavorite: false,
      ),
      BetStrat(
        id: 7,
        title: 'Change bookmakers',
        description:
            'If you’re not keen on the idea of opening multiple bookmaker accounts in your football betting strategy, maybe this will change your mind. Here’s the thing, bookies offer new and existing customers a huge range of different free bets and other promotions that you can take advantage of on a daily basis. We’re particularly interested in the signup promotions offered to new customers. At the time of writing this article, there is over £1000 in sign up free bets waiting for you to profit from.',
        sport: 'basketball',
        isFavorite: false,
      ),
      BetStrat(
        id: 8,
        title: 'Stay impartial – Don’t bet with your heart',
        description:
            'It’s vital you stay in control and bet with your analytical brain. Don’t place bets based on your emotion. This will only lead to bad decisions and could mean you lose out in terms of overall profit. If your favourite team loses a final, you’re going to feel even more down if you bet on them! I recommend you don’t bet on a team you support unless your football analysis and research suggests you should. As is usually the way, bringing emotions into the mix could cloud your judgement. Here’s the thing, amateur punters generally rely on their emotions when it comes to placing football bets. The bookies love these kinds of bettors who convince themselves their team are going to win only for them to get relegated the following week…',
        sport: 'basketball',
        isFavorite: false,
      ),
      BetStrat(
        id: 9,
        title: 'Know basketball inside out',
        description:
            'The most obvious thing that separates new bettors from the old-timers is that the new bettors have short memories. They base their wagers on what happened last weekend, rather than looking at the overall quality of the team. They tend to look at the last game and base most of their decisions on the team’s performance in that game.',
        sport: 'basketball',
        isFavorite: false,
      ),
    ];
  }
}
