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
            color: Colors.grey.withOpacity(0.4),
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
