import 'package:flutter/material.dart';

class ChatItemRight extends StatefulWidget {
  @override
  _ChatItemRightState createState() => _ChatItemRightState();
}

class _ChatItemRightState extends State<ChatItemRight> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => print('tapped'),
      title: new Container(  
        height: 50.0,
        child: Padding(
          padding: new EdgeInsets.all(1.0),
          child: Row(
            children: <Widget>[
              new Expanded(child: Container()),
              Text(
                'Im Good, Thanks!',
                style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}