import 'package:flutter/material.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 15,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Text('123'),
    );
  }
}
