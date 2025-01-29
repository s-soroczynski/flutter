import 'package:checkout_redem/routing.dart';
import 'package:flutter/material.dart';

class RewardsSelectionChunk extends StatelessWidget {
  const RewardsSelectionChunk({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 300,
        maxWidth: 328,
        minHeight: 72,
        maxHeight: 72,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: Colors.grey.shade300,
            width: 1,
          ),
        ),
        color: Colors.white,
        margin: EdgeInsets.all(4),
        child: ListTile(
          leading: Icon(Icons.discount_outlined),
          trailing: Icon(
            Icons.chevron_right,
            size: 36,
          ),
          title: Text("Choose rewards",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )),
          subtitle: Text("Spend less on this purchase",
              style: TextStyle(fontSize: 12)),
          onTap: () => Navigator.pushNamed(
            context,
            Routing.mainChooseRewards,
          ),
        ),
      ),
    );
  }
}
