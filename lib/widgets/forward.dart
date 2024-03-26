import 'package:flutter/material.dart';

class Forward extends StatelessWidget {
  const Forward({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.25),
          spreadRadius: 15,
          blurStyle: BlurStyle.inner,
          blurRadius: 1,
          offset: const Offset(0, 1),
        ),
      ]),
      child: const Icon(Icons.settings_remote),
    );
  }
}