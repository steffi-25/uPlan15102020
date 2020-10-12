import 'package:flutter/material.dart';
import 'package:todo2/user_profiles.dart';
import 'travel_profiles.dart';
import 'user_profiles.dart';
import 'dart:async';
import 'drawer_home.dart';
import 'footer.dart';
import 'favorite_destination.dart';
import 'favorite_destination_item.dart';
import 'favorite_routes.dart';
import 'zieleingabe.dart';
import 'home_button.dart';

class RoutePlanning2 extends StatefulWidget {
  @override
  _RoutePlanning2State createState() => _RoutePlanning2State();
}
class _RoutePlanning2State extends State<RoutePlanning2> {
  //const RoutePlanning(this.user);
  //final String user;
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
            title: Text(
              'uPlan',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            iconTheme: new IconThemeData(color: Colors.white)
          //backgroundColor: Hexcolor("#48ACB8"),
        ),
        bottomNavigationBar: Footer(),
        drawer: DrawerHome(),
        body: Scrollbar(
            controller: _scrollController,
            isAlwaysShown: true,
            child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(children: [
                  Text('Hier gehts weiter'),
                ]))));
  }
}