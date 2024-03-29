import 'package:flutter/material.dart';

class RemotePopUpTv extends StatelessWidget {
  const RemotePopUpTv({
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

class RemoteButton extends StatelessWidget {
  const RemoteButton(
      {super.key, required this.number, required this.onPressed});

  final void Function() onPressed;
  final String number;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: Text(number),
    );
  }
}
