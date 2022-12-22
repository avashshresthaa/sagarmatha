import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final text1;
  ProfilePage({this.text1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(text1),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            )
          ],
        ),
      ),
    );
  }
}
