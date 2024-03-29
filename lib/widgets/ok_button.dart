import 'package:flutter/material.dart';
import 'package:controller_app/utils/colors.dart';

class OkButton extends StatelessWidget {
  const OkButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: grey300,
            spreadRadius: 30,
            blurStyle: BlurStyle.inner,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_drop_up_sharp),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_left_sharp),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'OK',
                  style: TextStyle(fontSize: 16.3, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_right_sharp),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_drop_down_sharp),
          )
        ],
      ),
    );
  }
}
