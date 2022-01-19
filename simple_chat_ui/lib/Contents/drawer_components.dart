import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/bijoy.jpg"),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.wb_sunny)),
                  ],
                ),
                Spacer(),
                Text(
                  'Bijoy Biswas',
                  style: TextStyle(fontSize: 19),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '+8801751990907',
                      style: TextStyle(fontSize: 16),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_drop_down_circle_sharp))
                  ],
                ),
              ],
            ),
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
          ListTile(
            leading: Icon(Icons.people_outline),
            title: Text('New Group'),
          ),
          ListTile(
            leading: Icon(Icons.person_outlined),
            title: Text('Contacts'),
          ),
          ListTile(
            leading: Icon(Icons.call_outlined),
            title: Text('Calls'),
          ),
          ListTile(
            leading: Icon(Icons.bookmark_border_outlined),
            title: Text('Saved Message'),
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_outlined),
            title: Text('Invite Friends'),
          ),
          ListTile(
            leading: Icon(Icons.help_outline_outlined),
            title: Text('AirMails Features'),
          )
        ],
      ),
    );
  }
}
