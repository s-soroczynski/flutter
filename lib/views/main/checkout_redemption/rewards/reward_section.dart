import 'package:flutter/material.dart';
import 'reward_card.dart';

class RewardSection extends StatelessWidget {
  final String sectionTitle;
  final List<RewardCard> rewards;

  const RewardSection({
    super.key,
    required this.sectionTitle,
    required this.rewards,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sectionTitle,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          GridView.count(
            childAspectRatio: 0.8,
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: rewards,
          ),
        ],
      ),
    );
  }
}
