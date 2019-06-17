import 'package:chat_app/chat_messages.dart';
import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {
  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat View"),
      ),
      body: ListView(
        children: <Widget>[
          ChatMessages(
            isFriend: true,
            isNotPrevious: true,
          ),
          ChatMessages(
            isFriend: false,
            isNotPrevious: true,
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Text Here!"),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                print("Send Message");
              },
            )
          ],
        ),
      ),
    );
  }
}
