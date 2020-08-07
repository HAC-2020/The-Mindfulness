import 'package:The_Mindfulness/Class/CustomCard.dart';
import 'package:The_Mindfulness/Screens/Music.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  static final String id = 'Home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CustomCard(text: Text("Relax"), screenToStart: Music(),),
                  CustomCard(text: Text("Breathe"), screenToStart: Music(),),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  CustomCard(text: Text("Focus"), screenToStart: Music(),),
                  CustomCard(text: Text("Happiness"), screenToStart: Music(),),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  CustomCard(text: Text("Self Love"), screenToStart: Music(),),
                  CustomCard(text: Text("Tips"), screenToStart: Music(),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}