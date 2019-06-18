import 'package:chat_app/chat_messages.dart';
import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {
  ChatView({Key key, this.friendName: "", this.lastMessage: ""})
      : super(key: key);

  @override
  _ChatViewState createState() => _ChatViewState();

  final String friendName;
  final String lastMessage;
}

class _ChatViewState extends State<ChatView> {
  String _friendInitial;

  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _friendInitial = widget.friendName.substring(0, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.friendName),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView(
              children: <Widget>[
                ChatMessages(
                  isFriend: true,
                  isNotPrevious: true,
                  friendInitial: _friendInitial,
                  message: "I really want to snap!!",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    controller: _controller,
                    onFieldSubmitted: (String _message) {
                      print("On field submmited " + _message);
                    },
                    decoration: InputDecoration(
                        hintText: "Type your message here",
                        labelText: "Your message",
                        helperText: "Here's where the message goes"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: IconButton(
                      icon: Icon(
                        Icons.send,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        print("Send Message" + _controller.text);
                        _controller.clear();
                      },
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
