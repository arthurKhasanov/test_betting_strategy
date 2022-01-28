import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_betting_strategy/feature/ui/pages/home_page.dart';
import 'package:test_betting_strategy/feature/ui/theme/my_theme.dart';
import 'package:test_betting_strategy/feature/use_cases/bloc/bet_strategy_cubit.dart';
import 'package:test_betting_strategy/service_locator.dart' as di;
import 'service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BetStratCubit>(
        create: (context) => sl<BetStratCubit>()..loadAllBS(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.system,
            theme: MyTheme.ligthTheme,
            darkTheme: MyTheme.darkTheme,
            title: 'Material App',
            home: SafeArea(child: HomePage())));
  }
}
