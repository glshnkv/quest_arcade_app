import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:quest_arcade_app/screens/home/home_screen.dart';
import 'package:quest_arcade_app/screens/splash/splash_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: HomeRoute.page),

  ];
}