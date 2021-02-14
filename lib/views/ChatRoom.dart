import 'package:flutter/material.dart';
import 'package:leet_chat/helper/authenticate.dart';
import 'package:leet_chat/sevices/auth.dart';
import 'package:leet_chat/views/search.dart';
// ignore: unused_import
import 'package:leet_chat/views/signup.dart';
import 'package:leet_chat/widgets/category_selector.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  AuthMethods authMethods = new AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: GestureDetector(
            child: IconButton(
                icon: Icon(Icons.exit_to_app),
                iconSize: 30.0,
                color: Colors.white,
                onPressed: () {
                  authMethods.signOut();
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Authenticate()));
                })),
        title: Text(
          "             Chats",
          textAlign: TextAlign.end,
          style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchScreen()));
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )),
          ))
        ],
      ),
    );
  }
}
