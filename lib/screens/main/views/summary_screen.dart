import 'package:checkout_redem/global-state.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

class RewardSummaryScreen extends StatelessWidget {
  final String rewardName;
  final String rewardDescription;
  final int rewardCost;
  final int userTokens;

  const RewardSummaryScreen({
    super.key,
    required this.rewardName,
    required this.rewardDescription,
    required this.rewardCost,
    required this.userTokens,
  });

  @override
  Widget build(BuildContext context) {
    final int remainingTokens = userTokens - rewardCost;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            }),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Aktywować nagrodę?',
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        rewardDescription,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(height: 32),
                      Row(
                        children: [
                          const Text('Nagroda'),
                          const Spacer(),
                          Text(
                            rewardName,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
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
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
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
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 8),
                  const Text(
                    'After you activate the reward, you have 30 days to use it.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<GlobalState>()
                          .mainState
                          .setShowSuccessSnackbar(true);
                      Navigator.pushNamed(context, '/main');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 32,
                      ),
                      backgroundColor: const Color(0xFF02282C),
                      foregroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Text(
                      'Tak, aktywuj',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
