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
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: new Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Padding(
          padding: new EdgeInsets.all(1.0),
          child: Row(
            children: <Widget>[
              new Text(
                'Hello, You there?',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              new Expanded(child: Container()),
              Text(
                '11:30 AM',
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
