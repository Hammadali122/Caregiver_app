import 'package:flutter/material.dart';
import 'firstscreen.dart';
import 'secondscreen.dart';
import 'chatscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  PageView(
        children: <Widget>[
          FirstPage(),
          SecondScreen(),
          ChatScreen(),
        ],
      ),
    );
  }
}

