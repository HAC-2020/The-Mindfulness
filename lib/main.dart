import 'package:The_Mindfulness/Class/Tabs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/tabs',
      routes: {
        '/tabs': (context) => defaultTabController(),
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