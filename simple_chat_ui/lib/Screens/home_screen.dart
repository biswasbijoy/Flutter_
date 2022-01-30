import 'package:flutter/material.dart';
import 'package:simple_chat_ui/Contents/drawer_components.dart';
import 'package:simple_chat_ui/Contents/home_screen_contents.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "AirMail",
            style: TextStyle(
                color: Color(0xffffff00),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blueAccent,
                  Colors.redAccent,
                  Colors.purple,
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
          ],
          bottom: TabBar(
            indicatorColor: Colors.orange,
            indicatorWeight: 5,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt), text: 'Camera'),
              Tab(icon: Icon(Icons.inbox), text: 'Inbox'),
              Tab(icon: Icon(Icons.people), text: 'Contacts'),
              Tab(icon: Icon(Icons.call), text: 'Calls'),
            ],
          ),
          elevation: 20,
          titleSpacing: 20,
        ),
        drawer: DrawerComponent(),
        body: TabBarView(

          children: [
            buildPage('Camera Page'),
            ChatData(),
            buildPage('Contacts Page'),
            buildPage('Calls Page'),
          ],
        ),
      ));

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
      );
}
