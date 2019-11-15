import 'message_page.dart';
import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  static const String _name = "Homi";

  ChatMessage({this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(_name, style: Theme.of(context).textTheme.subhead),
              new Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: new Text(text),
              ),
            ],
          ),
          new Container(
            margin: const EdgeInsets.only(left: 16.0),
            child: new CircleAvatar(child: new Text(_name[0])),
          ),
        ],
      ),
    );
  }
}