import 'package:checkout_redem/components/DummyWrapper.dart';

import 'package:flutter/material.dart';

class SummaryTable extends StatelessWidget {
  final String rewardName;
  final int rewardCost;
  final int userTokens;

  const SummaryTable({
    super.key,
    required this.rewardName,
    required this.rewardCost,
    required this.userTokens,
  });

  @override
  Widget build(BuildContext context) {
    final int remainingTokens = userTokens - rewardCost;

    return DummyWrapper(children: [
      Row(
        children: [
          const Text('Nagroda'),
          const Spacer(),
          Text(
            rewardName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ],
      ),
      const Divider(),
      const SizedBox(height: 8),
      Row(
        children: [
          const Text('Wykorzystasz'),
          const Spacer(),
          Text(
            '$rewardCost tokenów',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ],
      ),
      const Divider(),
      const SizedBox(height: 8),
      Row(
        children: [
          const Text('Pozostanie Ci'),
          const Spacer(),
          Text(
            '$remainingTokens tokenów',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ],
      ),
    ]);
  }
}
