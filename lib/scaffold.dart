import 'package:chat_app/chat_head.dart';
import 'package:chat_app/chat_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyChatApp extends StatefulWidget {
  @override
  _MyChatAppState createState() => _MyChatAppState();
}

class _MyChatAppState extends State<MyChatApp> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* home: Scaffold(
        appBar: AppBar(
          title: Text("Chat App"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.help),
              onPressed: () {
                print("button was pressed");
              },
            )
          ],
        ),
        body: ListView(
          children: <Widget>[ChatHead(), ChatHead(), ChatHead()],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.mail_outline), title: Text("Chats")),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text("Settings")),
          ],
          onTap: (int index) {
            print("Index is $index");
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print("Add was pressed");
          },
        ),
      ), */
      home: ChatView(),
    );
  }
}
