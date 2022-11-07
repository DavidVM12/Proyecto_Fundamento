import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget child;
  final Color color;

  const CardContainer({super.key, required this.child, required this.color});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 450,
        color: color,
        child: child,
      ),
    );
  }
}
