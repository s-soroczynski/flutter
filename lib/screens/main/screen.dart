import 'package:checkout_redem/global-state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/chunk.dart';
import './state.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.title});
  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final mainState = MainState();

  @override
  Widget build(BuildContext context) {
    final mainState = context.watch<GlobalState>().mainState;

    if (mainState.isSuccess) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text(
              'Reward applied',
              style: TextStyle(color: Color(0xFF02282C)),
            ),
            backgroundColor: const Color(0xFFC8F8F6),
            behavior: SnackBarBehavior.floating,
            margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        );
        mainState.setSuccess(false);
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                RewardsSelectionChunk(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
