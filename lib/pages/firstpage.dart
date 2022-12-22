import 'package:flutter/material.dart';
import 'package:flutter_application_4/pages/profiel.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProfilePage(
                    text1: 'sagarmatha',
                  );
                }));
              },
              child: CustomContainer(
                text: 'H1',
                customColor: Colors.red,
              ),
            ),
            CustomContainer(
              text: 'H2',
              customColor: Colors.white,
            ),
            CustomContainer(
              text: 'H3',
              customColor: Colors.blue,
            ),
            CustomContainer(
              text: 'H4',
              customColor: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final text;
  final customColor;
  CustomContainer({this.customColor, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: EdgeInsets.all(16),
      height: 100,
      color: customColor,
      child: Column(
        children: [
          Text(
            text,
          ),
        ],
      ),
    );
  }
}
