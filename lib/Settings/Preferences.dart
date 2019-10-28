import 'package:flutter/material.dart';

class Preferences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings > Preferences'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          Container(
            height: 60,
            child: const Center(
                child: Text(
                  'Change Preferences',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            margin: const EdgeInsets.all(5.0),
            decoration: new BoxDecoration(
                color: Colors.cyan,
                borderRadius: new BorderRadius.all(Radius.circular(20.0))),
          ),
        ],
      ),
    );
  }
}