import 'package:flutter/material.dart';
import './chunk.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.title, required this.isSuccess});

  final String title;
  final bool isSuccess;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    if (widget.isSuccess) {
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
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
