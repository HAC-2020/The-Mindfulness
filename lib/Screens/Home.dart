import 'package:The_Mindfulness/Class/CustomCard.dart';
import 'package:The_Mindfulness/Screens/Breathe.dart';
import 'package:The_Mindfulness/Screens/Focusing.dart';
import 'package:The_Mindfulness/Screens/Happiness.dart';
import 'package:The_Mindfulness/Screens/Relax.dart';
import 'package:The_Mindfulness/Screens/SelfLove.dart';
import 'package:The_Mindfulness/Screens/Tips.dart';
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
                  CustomCard(text: Text("Relax"), screenToStart: Relax(),),
                  CustomCard(text: Text("Breathe"), screenToStart: Breathe(),),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  CustomCard(text: Text("Focus"), screenToStart: Focusing(),),
                  CustomCard(text: Text("Happiness"), screenToStart: Happiness(),),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  CustomCard(text: Text("Self Love"), screenToStart: SelfLove(),),
                  CustomCard(text: Text("Tips"), screenToStart: Tips(),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}