import 'package:flutter/material.dart';
import 'package:simple_chat_ui/Contents/home_screen_contents.dart';
import 'package:simple_chat_ui/List/message_screen_list.dart';
import 'package:simple_chat_ui/Screens/chat_screen.dart';
import 'package:simple_chat_ui/model/chat_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.purple.shade900,
      title: Text('Simple Chat App'),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Icon(Icons.camera_alt),
          GestureDetector(
            child: Text(
              "Chat",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChatData()));
            },
          ),
          Text(
            'Contacts',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            'Calls',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ]),
      ),
      actions: [
        Icon(Icons.search),
        Icon(Icons.more_vert),
      ],
    ));
  }
}
