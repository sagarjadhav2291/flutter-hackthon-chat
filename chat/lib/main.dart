import 'package:chat_app/Users.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat',
      routes: <String, WidgetBuilder>{
        '/Users': (BuildContext context) => new ChatUsers(),
      },
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        appBar: new AppBar(
          title: Text('Chat-App'),
        ),
        body: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Your Name',
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w300, color: Colors.red),
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      hintText: '',
                    ),
                  ),
                ),
                Text(
                  'Enter a Nick Name',
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w300, color: Colors.red),
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      hintText: '',
                    ),
                  ),
                ),
                RaisedButton(
                  child: Text("Register"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => ChatUsers()),
                    );
                  },
                  color: Colors.green,
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                ),
              ],
            ),
          ),
        ),
      );
  }
}