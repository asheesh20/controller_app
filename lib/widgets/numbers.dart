import 'package:controller_app/screens/digits.dart';
import 'package:flutter/material.dart';
import 'package:controller_app/utils/colors.dart';

class Numbers extends StatefulWidget {
  const Numbers({super.key});

  @override
  State<Numbers> createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
  @override
  Widget build(BuildContext context) {
    //final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        /* Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const DigitsScreen()));*/
        showDialog(
          context: context,
          builder: (context) => const AlertDialog(
            content: remotePopUpTv(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: grey300,
              spreadRadius: 15,
              //blurRadius: 1,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: const Text(
          '123',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
