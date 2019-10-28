import 'package:flutter/material.dart';

class HideMyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings > Hide My Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          Container(
            height: 60,
            child: const Center(
                child: Text(
                  'Hide Profile',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            margin: const EdgeInsets.all(5.0),
            decoration: new BoxDecoration(
                color: Colors.redAccent,
                borderRadius: new BorderRadius.all(Radius.circular(20.0))),
          ),
        ],
      ),
    );
  }
}