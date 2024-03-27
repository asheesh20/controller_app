import 'package:flutter/material.dart';

class DigitsScreen extends StatelessWidget {
  const DigitsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Base screen
        const Scaffold(
          backgroundColor: Colors.transparent, // Make base screen transparent
          body: SafeArea(
            child: Center(
              child: Text('Base Screen Content'),
            ),
          ),
        ),
        // Overlay screen
        Opacity(
          opacity: 0.5, // Opacity of overlay screen
          child: Container(
            color: Colors.grey[400], // Color of overlay screen
          ),
        ),
        Center(
          child: FractionallySizedBox(
            widthFactor: 0.9, // Half the width of the screen
            heightFactor: 0.5, // Half the height of the screen
            child: Card(
              color: Colors.grey[100],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    //title: Text('Overlay Screen'),
                    trailing: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      padding: const EdgeInsets.all(8),
                      mainAxisSpacing: 25,
                      crossAxisSpacing: 20,
                      childAspectRatio: 2,
                      children: const [
                        RemoteButton(text: '1'),
                        RemoteButton(text: '2'),
                        RemoteButton(text: '3'),
                        RemoteButton(text: '4'),
                        RemoteButton(text: '5'),
                        RemoteButton(text: '6'),
                        RemoteButton(text: '7'),
                        RemoteButton(text: '8'),
                        RemoteButton(text: '9'),
                        Spacer(),
                        RemoteButton(text: '0'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RemoteButton extends StatelessWidget {
  const RemoteButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 0.1,
            blurStyle: BlurStyle.inner,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
