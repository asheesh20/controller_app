import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.4),
          spreadRadius: 15,
          blurStyle: BlurStyle.solid,
          blurRadius: 1,
          offset: const Offset(0, 1),
        ),
      ]),
      child: Icon(
        Icons.menu_outlined,
      ),
    );
  }
}
