import 'package:chat_app/chatitem.dart';
import 'package:chat_app/chatscreen.dart';
import 'package:chat_app/userlistItem.dart';
import 'package:flutter/material.dart';

class ChatUsers extends StatefulWidget {
  @override
  _ChatUsersState createState() => _ChatUsersState();
}

class _ChatUsersState extends State<ChatUsers> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chat-users',
      routes: <String, WidgetBuilder>{
        '/chatscreen': (BuildContext context) => new ChatScreen(),
      },
      home: ChatUsersList(),
    );
  }
}

class ChatUsersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Chat-Users'),
      ),
      body: new ChatUsersListScreen(),
    );
  }
}

class ChatUsersListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: _myListView(),
      );
  }
}

Widget _myListView() {
 return ListView.builder(
   itemCount: 5,
   itemBuilder: (context, index) {
     return Card(child: ChatItemList());
   },
 );
}