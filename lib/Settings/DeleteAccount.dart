import 'package:animation_exp/login/LoginPage.dart';
import 'package:flutter/material.dart';

class DeleteAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings > Delete Account'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          Container(
            height: 140,
            child: const Center(
                child: Text(
                  'Are you sure you want to delete your profile? This is a permanent action that cannot be undone.',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
                )),
            margin: const EdgeInsets.all(10.0),

          ),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new LoginPage(),
                ));
              },
              child: new Container(
                height: 80,
                child: const Center(
                    child: Text(
                      'Delete Account',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    )),
                margin: const EdgeInsets.all(20.0),
                decoration: new BoxDecoration(
                    color: Colors.red,
                    borderRadius: new BorderRadius.all(Radius.circular(20.0))),
              )),

        ],
      ),
    );
  }
}