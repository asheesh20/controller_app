import 'package:flutter/material.dart';

class VolumeButton extends StatelessWidget {
  const VolumeButton({super.key});

  //final IconData icon;
  //final void Function() onPressed;
  //final String text;

  @override
  Widget build(BuildContext context) {
    return /*ElevatedButton(
      onPressed: onPressed,
      child: Icon(icon),
      style: ElevatedButton.styleFrom(
        //),
        padding: EdgeInsets.all(20),
      ),
    );*/
        Container(
      width: 56,
      height: 180,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 15,
              blurRadius: 1,
              offset: const Offset(0, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(40)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.add),
          SizedBox(height: 40),
          Text('Volume'),
          SizedBox(
            height: 40,
          ),
          Icon(Icons.remove),
        ],
      ),
    );
  }
}
