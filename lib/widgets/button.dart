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
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 15,
              //blurRadius: 1,
              offset: const Offset(0, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(40)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(firsticon),
          SizedBox(height: 40),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 40,
          ),
          Icon(secondiconData),
        ],
      ),
    );
  }
}
