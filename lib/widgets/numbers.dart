import 'package:controller_app/screens/digits.dart';
import 'package:controller_app/widgets/glass_morphism.dart';
import 'package:flutter/material.dart';

class Numbers extends StatefulWidget {
  const Numbers({super.key});

  @override
  State<Numbers> createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DigitsScreen()));
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 15,
              //blurRadius: 1,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Text(
          '123',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
