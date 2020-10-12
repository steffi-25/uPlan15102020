import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:async';

class ZieleingabeStart extends StatefulWidget {
  @override
  _ZieleingabeStartState createState() => _ZieleingabeStartState();
}

class _ZieleingabeStartState extends State<ZieleingabeStart> {
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
        onChanged: updateUserTextStart, //gibt auch onsubmitted;
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          icon: Icon(Icons.place, color: Hexcolor('FFCC80'),),
          labelText: 'Start',
          hintText: 'Start',
          suffixIcon: Icon(Icons.keyboard, color: Colors.grey),
        ),
      ),
    );
  }
}