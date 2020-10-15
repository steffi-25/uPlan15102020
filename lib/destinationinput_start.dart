import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:async';

import 'package:todo2/main.dart';

class DestinationinputStart extends StatefulWidget {
  @override
  _DestinationinputStartState createState() => _DestinationinputStartState();
}

class _DestinationinputStartState extends State<DestinationinputStart> {
  void updateUserTextStart(String text) {
    setState(() {
      userTextStart = text;
    });
  }

  String userTextStart = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      TextField(
        maxLines: 1,
        onChanged: updateUserTextStart, //onChanged or onSubmitted
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          icon: Icon(Icons.place, color: my_yellow,),
          labelText: 'Start',
          hintText: 'Start',
          suffixIcon: Icon(Icons.keyboard, color: my_middle_turquoise),
        ),
      ),
    );
  }
}