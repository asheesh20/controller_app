import 'package:flutter/material.dart';
import 'package:controller_app/utils/colors.dart';

class Mute extends StatefulWidget {
  const Mute({super.key});

  @override
  State<Mute> createState() => _MuteState();
}

class _MuteState extends State<Mute> {
  bool isMuted = true;
  void toggleMute() {
    setState(() {
      isMuted = !isMuted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: grey300,
            spreadRadius: 15,
            blurStyle: BlurStyle.inner,
            blurRadius: 1,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: IconButton(
        onPressed: () {
          toggleMute();
        },
        icon: isMuted
            ? const Icon(Icons.volume_off_sharp)
            : const Icon(Icons.volume_up_sharp),
      ),
    );
  }
}
