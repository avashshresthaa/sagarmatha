import 'package:flutter/material.dart';
import 'package:flutter_application_4/pages/firstpage.dart';
import 'package:flutter_application_4/pages/secondpage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentNum = 0;

  List pages = [
    FirstPage(),
    SecondPage(),
    SecondPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentNum],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (value) {
          setState(() {
            currentNum = value;
          });
        },
        index: currentNum,
        items: [
          Icon(Icons.home),
          Icon(Icons.person),
          Icon(Icons.settings),
        ],
      ),
    );
  }
}
