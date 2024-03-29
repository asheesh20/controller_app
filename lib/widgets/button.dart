import 'package:controller_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.firsticon,
      required this.secondiconData,
      required this.text});

  final String text;
  final IconData firsticon;
  final IconData secondiconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 57,
      height: 180,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: grey300,
            spreadRadius: 15,
            offset: const Offset(0, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(firsticon),
            onPressed: () {},
          ),
          const SizedBox(height: 30),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 30,
          ),
          IconButton(
            icon: Icon(secondiconData),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}


/*
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.firsticon,
      required this.secondiconData,
      required this.text});

  final String text;
  final IconData firsticon;
  final IconData secondiconData;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints.tightFor(
          height: 185,
          width: 90,
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey.withOpacity(0.4),
            foregroundColor: Colors.black,
            elevation: 1,
            shadowColor: Colors.grey[200],
            // side: BorderSide(color: Colors.black, width: 1),
          ),
          child: Icon(firsticon),
        ));
  }
}
*/


