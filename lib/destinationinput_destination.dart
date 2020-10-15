import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:async';

import 'package:todo2/main.dart';

class DestinationinputDestination extends StatefulWidget {
  @override
  _DestinationinputDestinationState createState() => _DestinationinputDestinationState();
}

class _DestinationinputDestinationState extends State<DestinationinputDestination> {
  void updateUserTextDestination(String text) {
    setState(() {
      userTextZiel = text;
    });
  }

  String userTextZiel = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        maxLines: 1,
        onChanged: updateUserTextDestination, //gibt auch onsubmitted;
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          icon: Icon(Icons.flag, color: my_yellow,),
          labelText: 'Ziel',
          hintText: 'Ziel',
          suffixIcon: Icon(Icons.keyboard, color: my_middle_grey),
        ),
      ),
    );
  }
}