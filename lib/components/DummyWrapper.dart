import 'package:flutter/material.dart';

class DummyWrapper extends StatelessWidget {
  final List<Widget> children;

  const DummyWrapper({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}
