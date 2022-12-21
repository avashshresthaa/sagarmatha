import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  //final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  //player.play('note1.wav');
                },
                child: Text('Hi')),
          ],
        ),
      ),
    );
  }
}
