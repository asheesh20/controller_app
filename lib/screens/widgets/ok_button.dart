import 'package:flutter/material.dart';

class OkButton extends StatelessWidget {
  const OkButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 40,
            blurRadius: 1,
            //blurStyle: BlurStyle.inner,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.arrow_drop_up_sharp),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.arrow_left_sharp),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'OK',
                  style: TextStyle(fontSize: 16.3),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_right_sharp),
              ],
            ),
          ),
          Icon(Icons.arrow_drop_down_sharp),
        ],
      ),
    );
  }
}
