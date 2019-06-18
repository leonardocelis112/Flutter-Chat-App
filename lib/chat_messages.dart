import 'package:flutter/material.dart';

class ChatMessages extends StatefulWidget {
  @override
  _ChatMessagesState createState() => _ChatMessagesState();

  final bool isFriend;
  final bool isNotPrevious;
  final String message;
  final String friendInitial;

  ChatMessages({
    Key key,
    this.isFriend: false,
    this.isNotPrevious: false,
    this.message: "",
    this.friendInitial: "",
  }) : super(key: key);
}

class _ChatMessagesState extends State<ChatMessages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: 100.0,
      width: double.infinity,
      color: Colors.grey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          widget.isFriend && widget.isNotPrevious
              ? CircleAvatar(
                  radius: 34.0,
                  backgroundColor: Colors.white,
                  child: Text(widget.friendInitial),
                )
              : Container(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(widget.message),
            ),
          ),
          !widget.isFriend && widget.isNotPrevious
              ? CircleAvatar(
                  radius: 34.0,
                  backgroundColor: Colors.white,
                  child: Text("Me"),
                )
              : Container()
        ],
      ),
    );
  }
}
