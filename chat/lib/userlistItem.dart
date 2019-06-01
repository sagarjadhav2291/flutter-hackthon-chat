import 'package:chat_app/chatscreen.dart';
import 'package:flutter/material.dart';

class ChatItemList extends StatefulWidget {
  @override
  _ChatItemListState createState() => _ChatItemListState();
}

class _ChatItemListState extends State<ChatItemList> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => ChatScreen()),
        );
      },
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
                'Sagar Jadhav',
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
