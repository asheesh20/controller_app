import 'package:flutter/material.dart';

class ChannelButton extends StatelessWidget {
  const ChannelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
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
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.add),
          SizedBox(height: 40),
          Text(
            'Channel',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 40,
          ),
          Icon(Icons.remove),
        ],
      ),
    );
  }
}
