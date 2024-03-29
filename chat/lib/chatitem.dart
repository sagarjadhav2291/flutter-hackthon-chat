import 'package:flutter/material.dart';

class ChatItem extends StatefulWidget {
  @override
  _ChatItemState createState() => _ChatItemState();
}

class _ChatItemState extends State<ChatItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => print('tapped'),
      title: new Container(
        height: 50.0,
        child: Padding(
          padding: new EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              new Text(
                'Hello, You there?',
                style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
