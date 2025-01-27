import 'package:flutter/material.dart';
import 'components/rewards.dart';

class CheckoutRedemption extends StatelessWidget {
  const CheckoutRedemption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
            size: 28,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            "Choose rewards",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text("Your tokens:"),
          Row(children: [
            Text(
              "1000",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.monetization_on_outlined,
              size: 24,
            )
          ]),
          SizedBox(height: 24),
          Text(
            "Even if you don't complete this purchase, you can use these rewards on the next purchase you make in the next 30 days.",
            style: TextStyle(
                fontSize: 14,
                color: Color(
                  0xFF406367,
                )),
          ),
          ...Rewards(userTokens: 200).buildWidgets(),
        ],
      ),
    );
  }
}
