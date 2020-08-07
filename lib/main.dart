import 'package:The_Mindfulness/Screen/DoctorLogin.dart';
import 'package:The_Mindfulness/Screen/LoginScreen.dart';
import 'package:The_Mindfulness/Screen/RegistrationScreen.dart';
import 'package:The_Mindfulness/Screen/WelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:The_Mindfulness/Screen/IntroSlider.dart';


void main() => runApp(MeditationApp());

class MeditationApp extends StatefulWidget {
  @override
  _MeditationAppState createState() => _MeditationAppState();
}

class _MeditationAppState extends State<MeditationApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "The mindfullness",
      builder: (context,child)=> MediaQuery(
        data:MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
        child: child,
      ),
      initialRoute: IntroSlider.id,
      routes: <String,WidgetBuilder>{
        IntroSlider.id:(BuildContext context)=> IntroSlider(),
        WelcomeScreen.id:(BuildContext context)=> WelcomeScreen(),
        RegistrationScreen.id:(BuildContext context)=>RegistrationScreen(),
        LoginScreen.id:(BuildContext context)=>LoginScreen(),
        DoctorLogin.id:(BuildContext context)=>DoctorLogin(),


      },
    );
  }
}


