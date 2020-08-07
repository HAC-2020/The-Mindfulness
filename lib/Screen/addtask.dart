import 'package:flutter/material.dart';

class Addtsk extends StatefulWidget {
  Addtsk({Key key}) : super(key: key);

  @override
  _AddtskState createState() => _AddtskState();
}
final _formKey = GlobalKey<FormState>();
class _AddtskState extends State<Addtsk> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Container(

          ),
          ),
      ),
    );
  }
}
