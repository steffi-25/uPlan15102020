import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'zieleingabe_start.dart';
import 'zieleingabe_ziel.dart';
import 'zieleingabe_details.dart';
import 'main.dart';

class Zieleingabe extends StatefulWidget {
  @override
  _ZieleingabeState createState() => _ZieleingabeState();
}

class _ZieleingabeState extends State<Zieleingabe> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //Überschrift oberer Block
          decoration: BoxDecoration(
              border: Border.all(width: 0, color: my_middle_grey),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14), topRight: Radius.circular(14)),
              color: my_middle_turquoise,
              boxShadow: [
                BoxShadow(
                  color: my_middle_grey,
                  blurRadius: 4,
                )
              ]),
          padding: EdgeInsets.only(top: 8, bottom: 8, left: 15),
          margin: EdgeInsets.only(left: 25, right: 25, top: 25),
          alignment: Alignment.centerLeft,
          child: Text(
            'ZIELEINGABE',
            style: TextStyle(color: my_white, fontSize: 20),
          ),
        ),
        Container(
            //oberer Block
            margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            decoration: BoxDecoration(
                border: Border.all(width: 0, color: my_middle_grey),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(14),
                    bottomLeft: Radius.circular(14)),
                color: my_white,
                boxShadow: [
                  BoxShadow(
                    color: my_middle_grey,
                    blurRadius: 4,
                  )
                ]),
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Flexible(
                  child: ZieleingabeStart(),
                ),
                new Flexible(
                  child: ZieleingabeZiel(),
                ),
                ZieleingabeDetails(),
              ],
              //onChanged: ,
            )),
      ],
    );
  }
}