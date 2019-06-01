import 'package:chat_app/chatitem.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chat',
      home: new Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: true,
          title: Text('Chat-Screen'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
          actions: <Widget>[],
        ),
        body: new ChattingScreen(),
      ),
    );
  }
}

Widget _myListView() {
 return ListView.builder(
   itemCount: 15,
   itemBuilder: (context, index) {
     return Card(child: ChatItem());
   },
 );
}

class ChattingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        children: <Widget>[
          new Expanded(child: _myListView()),
          Container(
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                RaisedButton(
                  child: Text("Send"),
                  onPressed: () {},
                  color: Colors.green,
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w300, color: Colors.red),
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      hintText: '',
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
