import 'package:flutter/material.dart';
import 'package:controller_app/utils/colors.dart';

class Power extends StatelessWidget {
  const Power({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: grey300,
            spreadRadius: 20,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.power_settings_new_rounded,
        ),
      ),
    );
  }
}
