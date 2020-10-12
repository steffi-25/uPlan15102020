import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:async';

class ZieleingabeZiel extends StatefulWidget {
  @override
  _ZieleingabeZielState createState() => _ZieleingabeZielState();
}

class _ZieleingabeZielState extends State<ZieleingabeZiel> {
  void updateUserTextZiel(String text) {
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
        onChanged: updateUserTextZiel, //gibt auch onsubmitted;
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          icon: Icon(Icons.flag, color: Hexcolor('FFCC80'),),
          labelText: 'Ziel',
          hintText: 'Ziel',
          suffixIcon: Icon(Icons.keyboard, color: Colors.grey),
        ),
      ),
    );
  }
}