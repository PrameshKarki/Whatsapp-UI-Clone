import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/pages/Camera.dart';

// *Import pages
import "./Camera.dart";
import "./Chats.dart";
import "./Status.dart";
import "./Calls.dart";

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 1;
  IconData? icon;

  Widget buildFloatingActionButton(int index) {
    if (index == 0)
      return Container();
    else if (index == 1) {
      icon = Icons.message;
    } else if (index == 2) {
      icon = Icons.photo_camera;
    } else if (index == 3) {
      icon = Icons.add_ic_call;
    }

    return CircleAvatar(
      backgroundColor: Theme.of(context).primaryColor,
      radius: 30,
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) => [
                PopupMenuItem(
                    child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                  title: Text(
                    "New Group",
                  ),
                )),
                PopupMenuItem(
                    child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                  title: Text("New Broadcast"),
                )),
                PopupMenuItem(
                    child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                  title: Text("Linked Devices"),
                )),
                PopupMenuItem(
                    child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                  title: Text("Starred Messages"),
                )),
                PopupMenuItem(
                    child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                  title: Text("Settings"),
                )),
              ],
            )
          ],
          bottom: TabBar(
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            indicatorWeight: 3,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[Camera(), Chats(), Status(), Calls()],
        ),
        floatingActionButton: buildFloatingActionButton(currentIndex),
      ),
    );
  }
}
