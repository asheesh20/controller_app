import 'package:controller_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: grey300,
            spreadRadius: 15,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: const Icon(
        Icons.menu_outlined,
      ),
    );
  }
}
