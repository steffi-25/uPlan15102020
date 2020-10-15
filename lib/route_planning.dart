import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo2/user_profiles.dart';
import 'travel_profiles.dart';
import 'user_profiles.dart';
import 'dart:async';
import 'drawer_home.dart';
import 'footer.dart';
import 'favorite_destination.dart';
import 'favorite_destination_item.dart';
import 'favorite_routes.dart';
import 'destinationinput.dart';
import 'home_button.dart';
import 'route_planning2.dart';
import 'main.dart';


class RoutePlanning extends StatefulWidget {
  @override
  _RoutePlanningState createState() => _RoutePlanningState();
}

class _RoutePlanningState extends State<RoutePlanning> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
            title: Text(
              'uPlan',
              style: TextStyle(color: my_white, fontSize: 30),
            ),
            iconTheme: new IconThemeData(color: my_white)
            ),
        drawer: DrawerHome(),
        body: Scrollbar(
            controller: _scrollController,
            isAlwaysShown: true,
            child: SingleChildScrollView(
                controller: _scrollController,
                child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      colorFilter: new ColorFilter.mode(
                          Colors.grey.withOpacity(0.15), BlendMode.dstATop),
                      image: AssetImage("images/citybackground.jpg"),
                      fit: BoxFit.fitWidth,
                    )),
                    child: Column(children: [
                      Destinationinput(),
                      FavoriteRoutes(),
                    ])))));
  }
}