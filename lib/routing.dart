import 'package:flutter/material.dart';
import 'screens/main/screen.dart';

class Routing {
  static const String main = '/main';
  static const String mainChooseRewards = '$main/choose-rewards';

  static final Map<String, WidgetBuilder> routes = {
    main: (context) => const MainScreen(title: 'Flutter Demo Home Page'),
  };
}
