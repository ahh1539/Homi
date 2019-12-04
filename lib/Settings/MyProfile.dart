import 'package:flutter/material.dart';
import 'package:preferences/checkbox_preference.dart';
import 'package:preferences/preference_dialog.dart';
import 'package:preferences/preference_dialog_link.dart';
import 'package:preferences/preference_service.dart';
import 'package:preferences/preference_text.dart';
import 'package:preferences/preference_title.dart';
import 'package:preferences/text_field_preference.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PrefService.init();
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings > My Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          PreferenceTitle('User'),
          TextFieldPreference(
            'Display Name',
            'user_display_name',
          ),
          PreferenceText(
            PrefService.getString('user_description') ?? '',
            style: TextStyle(color: Colors.grey),
          ),
          PreferenceDialogLink(
            'Edit description',
            dialog: PreferenceDialog(
              [
                TextFieldPreference(
                  'Description',
                  'user_description',
                  padding: const EdgeInsets.only(top: 8.0),
                  autofocus: true,
                  maxLines: 2,
                )
              ],
              title: 'Edit description',
              cancelText: 'Cancel',
              submitText: 'Save',
              onlySaveOnSubmit: true,
            ),

          ),
          PreferenceTitle('Content'),
          PreferenceDialogLink(
            'Content Types',
            dialog: PreferenceDialog(
              [
                CheckboxPreference('Text', 'content_show_text'),
                CheckboxPreference('Images', 'content_show_image'),
                CheckboxPreference('Music', 'content_show_audio')
              ],
              title: 'Enabled Content Types',
              cancelText: 'Cancel',
              submitText: 'Save',
              onlySaveOnSubmit: true,
            ),
          ),

          Container(
            height: 60,
            child: const Center(
                child: Text(
                  'Modify Profile',
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

rando(BuildContext context){
  PrefService.init();
}