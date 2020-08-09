import 'package:The_Mindfulness/Class/Tabs.dart';
import 'package:The_Mindfulness/Screens/DoctorLogin.dart';
import 'package:The_Mindfulness/Screens/IntroSlider.dart';
import 'package:The_Mindfulness/Screens/LoginScreen.dart';
import 'package:The_Mindfulness/Screens/RegistrationScreen.dart';
import 'package:The_Mindfulness/Screens/WelcomeScreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      title: "The Mindfulness",
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
    )
  );
}

DefaultTabController defaultTabController() {
  return DefaultTabController(
    length: 4,
    child: Tabs(),
  );
}