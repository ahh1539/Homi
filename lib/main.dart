import 'package:animation_exp/SwipeAnimation/index.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Homi',
      // showPerformanceOverlay: true,
      theme: new ThemeData(
        primarySwatch: Colors.cyan,
      ),
      // home: new PageMain(),
      home: new CardDemo(),
      //home: BottomNavigationDemo(),
      // home:new exp(),
    );
  }
}
