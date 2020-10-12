import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo2/drawer_home.dart';
import 'package:todo2/travel_detail.dart';
import 'package:todo2/travel_profiles.dart';
import 'package:todo2/user_profiles.dart';
import 'route_planning.dart';
import 'route_planning2.dart';
import 'footer.dart';

final my_white = Hexcolor('FFFFFF');
final my_light_grey = Hexcolor('EEF1F2');
final my_middle_grey = Hexcolor('CFD8DC');
final my_dark_grey = Hexcolor('707070');
final my_middle_turquoise = Hexcolor('48ACB8');
final my_dark_turquoise = Hexcolor('007C91');
final my_yellow = Hexcolor('FFCC80');

void main() => runApp(MaterialApp(
        //home: HomeTest(),
        home: RoutePlanning(), //entweder home: ... oder '/': ...
        builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
            child: child),
        theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.light,
          primaryColor: my_middle_turquoise,
          accentColor: my_middle_turquoise,
          splashColor: my_middle_turquoise,
          //cardColor: Hexcolor('48ACB8'),
          //highlightColor: Hexcolor('48ACB8'),
          //timePickerTheme: null
          // Define the default font family.
          fontFamily: 'Tahoma',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 30.0,
                color: my_white), //fontWeight: FontWeight.bold),
            headline6: TextStyle(
                fontSize: 20.0,
                color: my_dark_grey), //fontStyle: FontStyle.italic),
            bodyText2: TextStyle(
              fontSize: 14.0,
            ), //fontFamily: 'Hind'),
          ),
        ),
        initialRoute: '/',
        routes: {
          //'/': (context) => RoutePlanning(), //entweder home: ... oder '/': ...
          '/other': (context) => RoutePlanning2(),
        }));