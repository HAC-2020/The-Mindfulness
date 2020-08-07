import 'package:The_Mindfulness/Screens/AddTask.dart';
import 'package:The_Mindfulness/Screens/Cal.dart';
import 'package:The_Mindfulness/Screens/Home.dart';
import 'package:The_Mindfulness/Screens/chatrooms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  @override
  static String id = "Tabs";
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int _currentindex=0;
  final List<Widget> _children =[
    Home(),
    Addtsk(),
    Cal(),
    ChatRoom(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: Text("The Mindfulness"),
      ),

      body: _children[_currentindex],
      bottomNavigationBar: new TabBar(
        tabs: [
          Tab(
            icon: Icon(Icons.home),
            text: "Home",
          ),
          Tab(
            icon: Icon(Icons.date_range),
            text: "Task Planner",
          ),
          Tab(
            icon: Icon(Icons.equalizer),
            text: "Calendar",
          ),
          Tab(
            icon: Icon(Icons.chat),
            text: "Chat",
          ),
        ],
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.black,
      ),
    );
  }
}