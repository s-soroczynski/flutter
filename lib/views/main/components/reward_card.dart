import 'package:flutter/material.dart';
import '../summary_screen.dart';

class RewardCard extends StatelessWidget {
  final IconData icon;
  final String rewardName;
  final int rewardCost;
  final int userTokens;

  const RewardCard({
    super.key,
    required this.icon,
    required this.rewardName,
    required this.rewardCost,
    required this.userTokens,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Icon(icon, size: 48, color: Color(0xFFEFC91E)),
            ),
            const SizedBox(height: 32),
            Flexible(
              child: Text(
                rewardName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF02282C),
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => RewardSummaryScreen(
                      rewardName: rewardName,
                      rewardDescription:
                          'Zastosujemy ją automatycznie do Twojego zakupu.',
                      rewardCost: rewardCost,
                      userTokens: userTokens,
                    ),
                  ),
                );
              },
              child: Text(
                '$rewardCost tokenów',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
