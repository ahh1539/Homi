import 'package:flutter/material.dart';
import 'package:preferences/dropdown_preference.dart';
import 'package:preferences/preference_page.dart';
import 'package:preferences/preference_title.dart';
import 'package:preferences/radio_preference.dart';

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

      DropdownPreference(
        'Start Page',
        'start_page',
        defaultVal: 'Matching',
        values: ['Matching', 'Timeline', 'Private Messages'],
      ),
      PreferenceTitle('Personalization'),
      RadioPreference(
        'Light Theme',
        'light',
        'ui_theme',
        isDefault: true,

      ),
      RadioPreference(
        'Dark Theme',
        'dark',
        'ui_theme',

      ),

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