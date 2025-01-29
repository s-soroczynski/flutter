import 'package:checkout_redem/screens/main/views/choose_rewards.dart';
import 'package:checkout_redem/screens/main/views/summary.dart';
import 'package:flutter/material.dart';
import 'screens/main/screen.dart';

class Routing {
  static const String main = '/main';
  static const String mainChooseRewards = '$main/choose-rewards';
  static const String mainSummary = '$main/summary';

  static final Map<String, WidgetBuilder> routes = {
    main: (context) => const MainScreen(title: 'Flutter Demo Home Page'),
    mainSummary: (context) => const RewardSummaryScreen(
          rewardName: "rewardName",
          rewardDescription: 'Zastosujemy ją automatycznie do Twojego zakupu.',
          rewardCost: 1,
          userTokens: 1,
        ),
    mainChooseRewards: (context) =>
        const CheckoutRedemption(),
  };
}
