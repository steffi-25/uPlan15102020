import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'destinationinput_start.dart';
import 'destinationinput_destination.dart';
import 'destinationinput_details.dart';
import 'main.dart';

class Destinationinput extends StatefulWidget {
  @override
  _DestinationinputState createState() => _DestinationinputState();
}

class _DestinationinputState extends State<Destinationinput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                  child: DestinationinputStart(),
                ),
                new Flexible(
                  child: DestinationinputDestination(),
                ),
                DestinationInputDetails(),
              ],
              //onChanged: ,
            )),
      ],
    );
  }
}