// rewards.dart

import 'package:flutter/material.dart';
import 'reward_section.dart';
import 'reward_card.dart';

class Rewards {
  final int userTokens;

  Rewards({required this.userTokens});

  List<Widget> buildWidgets() {
    return [
      const SizedBox(height: 24),
      RewardSection(
        sectionTitle: 'Free delivery',
        rewards: [
          RewardCard(
            icon: Icons.card_giftcard,
            rewardName: '1 free delivery',
            rewardCost: 300,
            userTokens: userTokens,
          ),
          RewardCard(
            icon: Icons.star,
            rewardName: '3 free delivery',
            rewardCost: 700,
            userTokens: userTokens,
          ),
        ],
      ),
      const SizedBox(height: 24),
      RewardSection(
        sectionTitle: 'Safety Package discount',
        rewards: [
          RewardCard(
            icon: Icons.local_cafe,
            rewardName: '1 discount of 2,50 zł',
            rewardCost: 350,
            userTokens: userTokens,
          ),
          RewardCard(
            icon: Icons.shopping_cart,
            rewardName: '1 discount of 5 zł ',
            rewardCost: 600,
            userTokens: userTokens,
          ),
        ],
      ),
    ];
  }
}
