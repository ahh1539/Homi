import 'package:flutter/material.dart';

class HideMyProfile extends StatelessWidget {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings > Hide My Profile'),
      ),
      body: ListTile(
        title: Text("Hide Profile"),
        subtitle: Text("This will make your profile hidden"),
        trailing: Switch(
          value: isSwitched,
          onChanged: (value) {
            isSwitched = !isSwitched;
          },
        ),
      )
    );
  }
}

showAlertDialog(BuildContext context) {

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("AlertDialog"),
    content: Text("Your profile is now hidden, you can come back and activate "
        "it at any time. Click outside of this box to "),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}


