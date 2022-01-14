import 'package:flutter/material.dart';

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
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "Chat",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            'Call',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            'Contacts',
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ]),
      ),
      actions: [
        Icon(Icons.search),
        Icon(Icons.more_vert),
      ],
    ));
  }
}
