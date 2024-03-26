import 'package:controller_app/widgets/Channel_button.dart';
import 'package:controller_app/widgets/back.dart';
import 'package:controller_app/widgets/forward.dart';
import 'package:controller_app/widgets/menu.dart';
import 'package:controller_app/widgets/numbers.dart';
import 'package:controller_app/widgets/ok_button.dart';
import 'package:controller_app/widgets/power.dart';
import 'package:controller_app/widgets/volume_button.dart';
import 'package:flutter/material.dart';

class TvScreen extends StatelessWidget {
  const TvScreen({super.key});

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
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Please try to match with 3 keys at least',
              maxLines: 2,
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
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
                      SizedBox(
                        height: 100,
                      ),
                      Power(),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      VolumeButton(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Back(),
                          SizedBox(
                            height: 60,
                          ),
                          Forward(),
                        ],
                      ),
                      // SizedBox(width: 50),
                      ChannelButton(),
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
                      MenuScreen(),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
