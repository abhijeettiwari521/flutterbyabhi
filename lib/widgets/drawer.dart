// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        // ignore: duplicate_ignore, prefer_const_literals_to_create_immutables
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: const UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Abhijeet Tiwari",
                  style: TextStyle(color: Colors.white)),
              accountEmail: Text("abhijeettiwari521@gmail.com",
                  style: TextStyle(color: Colors.white)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/image/abhip.png"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text("Home",
                textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text("Profile",
                textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text("Email Me",
                textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.flame,
              color: Colors.white,
            ),
            title: Text(" Me",
                textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.flag_circle_fill,
              color: Colors.white,
            ),
            title: Text("Show Me",
                textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.info_circle_fill,
              color: Colors.white,
            ),
            title: Text("About Us",
                textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
          ),
        ]),
      ),
    );
  }
}
