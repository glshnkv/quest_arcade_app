import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:quest_arcade_app/quest_arcade_app.dart';
import 'package:quest_arcade_app/widgets/coins/bloc/coins_bloc.dart';
import 'package:quest_arcade_app/widgets/daily_reward/bloc/daily_reward_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<CoinsBloc>(
          create: (context) => CoinsBloc()),
      BlocProvider<DailyRewardBloc>(
          create: (context) => DailyRewardBloc()),
    ],
    child: QuestArcadeApp(),
  ));
}
