/*
import 'package:flutter/material.dart';

class remotePopUpTv extends StatelessWidget {
  const remotePopUpTv({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.5,
      child: Center(
        child: Card(
          color: Colors.grey[100],
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                //title: Text('Overlay Screen'),
                trailing: IconButton(
                  icon: const Icon(Icons.close),
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
*/

import 'package:flutter/material.dart';

class remotePopUpTv extends StatelessWidget {
  const remotePopUpTv({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.5,
      child: Center(
        child: Card(
          color: Colors.grey[100],
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                //title: Text('Overlay Screen'),
                trailing: IconButton(
                  icon: const Icon(Icons.close),
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
                  children: [
                    RemoteButton(number: '1', onPressed: () {}),
                    RemoteButton(number: '2', onPressed: () {}),
                    RemoteButton(number: '3', onPressed: () {}),
                    RemoteButton(number: '4', onPressed: () {}),
                    RemoteButton(number: '5', onPressed: () {}),
                    RemoteButton(number: '6', onPressed: () {}),
                    RemoteButton(number: '7', onPressed: () {}),
                    RemoteButton(number: '8', onPressed: () {}),
                    RemoteButton(number: '9', onPressed: () {}),
                    const Spacer(),
                    RemoteButton(number: '0', onPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
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
*/

class RemoteButton extends StatelessWidget {
  const RemoteButton(
      {super.key, required this.number, required this.onPressed});

  final void Function() onPressed;
  final String number;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(number),
      //style: ButtonStyle(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
