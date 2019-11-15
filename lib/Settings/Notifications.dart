import 'package:animation_exp/preferences/preference_title.dart';
import 'package:flutter/material.dart';
import 'package:preferences/preference_page.dart';
import 'package:preferences/preference_page_link.dart';
import 'package:preferences/switch_preference.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings > Notifications'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          PreferenceTitle('Messaging'),
          PreferencePageLink(
            'Notifications',
            leading: Icon(Icons.message),
            trailing: Icon(Icons.keyboard_arrow_right),
            page: PreferencePage([
              PreferenceTitle('New Posts'),
              SwitchPreference(
                'New Posts from Homis',
                'notification_newpost_friend',
                defaultVal: true,
              ),
              PreferenceTitle('Private Messages'),
              SwitchPreference(
                'Private Messages from Homis',
                'notification_pm_friend',
                defaultVal: true,
              ),
              SwitchPreference(
                'Private Messages from Strangers',
                'notification_pm_stranger',
                onEnable: () async {
                  // Write something in Firestore or send a request
                  await Future.delayed(Duration(seconds: 1));

                  print('Enabled Notifications for PMs from Strangers!');
                },
                onDisable: () async {
                  // Write something in Firestore or send a request
                  await Future.delayed(Duration(seconds: 1));

                  // No Connection? No Problem! Just throw an Exception with your custom message...
                  throw Exception('No Connection');

                  print('Disabled Notifications for PMs from Strangers!');
                },
              ),
            ]),
          ),
          Container(
            height: 60,
            child: const Center(
                child: Text(
                  'Disable Notifications',
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

