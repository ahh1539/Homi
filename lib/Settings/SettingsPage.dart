import 'package:animation_exp/Chat/chat.dart';
import 'package:animation_exp/Settings/DeleteAccount.dart';
import 'package:animation_exp/Settings/HideMyProfile.dart';
import 'package:animation_exp/Settings/MyProfile.dart';
import 'package:animation_exp/Settings/Notifications.dart';
import 'package:animation_exp/Settings/Preferences.dart';
import 'package:flutter/material.dart';

class SettingsRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new MyProfile(),
                ));
              },
              child: new Container(
                height: 60,
                child: const Center(
                    child: Text(
                  'My Profile',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                margin: const EdgeInsets.all(5.0),
                decoration: new BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: new BorderRadius.all(Radius.circular(20.0))),
              )),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new Notifications(),
                ));
              },
              child: new Container(
                height: 60,
                child: const Center(
                    child: Text(
                      'Notifications',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                margin: const EdgeInsets.all(5.0),
                decoration: new BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: new BorderRadius.all(Radius.circular(20.0))),
              )),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new Preferences(),
                ));
              },
              child: new Container(
                height: 60,
                child: const Center(
                    child: Text(
                      'Preferences',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                margin: const EdgeInsets.all(5.0),
                decoration: new BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: new BorderRadius.all(Radius.circular(20.0))),
              )),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new HideMyProfile(),
                ));
              },
              child: new Container(
                height: 60,
                child: const Center(
                    child: Text(
                      'Hide My Profile',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                margin: const EdgeInsets.all(5.0),
                decoration: new BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: new BorderRadius.all(Radius.circular(20.0))),
              )),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new DeleteAccount(),
                ));
              },
              child: new Container(
                height: 60,
                child: const Center(
                    child: Text(
                      'Delete Account',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                margin: const EdgeInsets.all(5.0),
                decoration: new BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: new BorderRadius.all(Radius.circular(20.0))),
              )),
        ],
      ),
    );
  }
}
