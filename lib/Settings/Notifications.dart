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
          PreferencePageLink(
            'Messaging',
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
              ),
            ]),
          ),
          PreferencePageLink(
            'Matching',
            leading: Icon(Icons.check),
            trailing: Icon(Icons.keyboard_arrow_right),
            page: PreferencePage([
              PreferenceTitle('New Homis'),
              SwitchPreference(
                'New Homi Matched',
                'notification_newpost_friend',
                defaultVal: true,
              ),
              PreferenceTitle('Super Homi'),
              SwitchPreference(
                'Super Homi Recommendation',
                'notification_pm_friend',
                defaultVal: true,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

