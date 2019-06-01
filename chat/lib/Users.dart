import 'package:chat_app/API.dart';
import 'package:chat_app/chatitem.dart';
import 'package:chat_app/chatscreen.dart';
import 'package:chat_app/userlistItem.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChatUsers extends StatefulWidget {
  @override
  _ChatUsersState createState() => _ChatUsersState();
}

Future getUsers() {
 var url = "http://10.221.2.164:8084/chat";
 return http.get(url);
}

var users = new List<RegisterUser>();

class _ChatUsersState extends State<ChatUsers> {


_getUsers() async {
 await getUsers().then((response) {
   setState(() {
     Iterable list = json.decode(response.body);
    users = list.map((model) => RegisterUser.fromJson(model)).toList();
    print(users.length);
   });
 });
}
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getUsers();
  }
  
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
   itemCount: users.length,
   itemBuilder: (context, index) {
     return Card(child: ChatItemList(users:users[index]));
   },
 );
}