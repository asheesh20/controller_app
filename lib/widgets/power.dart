import 'package:flutter/material.dart';

class Power extends StatelessWidget {
  const Power({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 20,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: const Icon(
        Icons.power_settings_new_rounded,
      ),
    );
  }
}
