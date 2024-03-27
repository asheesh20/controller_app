import 'package:controller_app/widgets/menu.dart';
import 'package:controller_app/widgets/mute.dart';
import 'package:controller_app/widgets/numbers.dart';
import 'package:controller_app/widgets/ok_button.dart';
import 'package:controller_app/widgets/power.dart';
import 'package:controller_app/widgets/button.dart';
import 'package:flutter/material.dart';

class TvScreen extends StatefulWidget {
  const TvScreen({super.key});

  @override
  State<TvScreen> createState() => _TvScreenState();
}

class _TvScreenState extends State<TvScreen> {
  @override
  Widget build(context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'TV Match',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Please try to match with 3 keys at least',
              maxLines: 2,
            ),
            const SizedBox(height: 50),
            box(),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  Container box() {
    return Container(
      width: 320,
      height: 600,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            //blurRadius: 0,
            spreadRadius: 1,
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Power(),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //VolumeButton(),
              Button(
                firsticon: Icons.add,
                text: 'Volume',
                secondiconData: Icons.remove,
              ),
              Mute(),
              Button(
                firsticon: Icons.add,
                secondiconData: Icons.remove,
                text: 'Channel',
              ),
            ],
          ),
          SizedBox(
            height: 55,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OkButton(),
            ],
          ),
          SizedBox(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Numbers(),
              SizedBox(
                width: 70,
              ),
              Menu(),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
