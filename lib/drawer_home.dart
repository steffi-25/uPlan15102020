import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo2/user_profiles.dart';
import 'travel_profiles.dart';
import 'user_profiles.dart';

class DrawerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text('Steffi', style: TextStyle(color: Colors.white, fontSize: 20)),
            accountEmail: new Text ('testemail@test.com', style: TextStyle(color: Colors.white, fontSize: 20)),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new NetworkImage('https://www.dreamstime.com/default-avatar-profile-icon-grey-photo-placeholder-women-default-avatar-profile-icon-grey-photo-placeholder-illustrations-vectors-image99724605'),
            ),
          ),
          new ListTile(
            leading: Icon(Icons.person,
                color: Hexcolor('FFCC80'),
                size: 50),
            title: new Text('Nutzerprofile',
                style: TextStyle(
                  fontSize: 20,
                  color: Hexcolor('707070'), //#707070
                )),
            onTap: () {
              Navigator.push(context, MaterialPageRoute<Widget>(
                  builder: (BuildContext context) => UserProfiles())
              );
            },
          ),
          new Divider (
            thickness: 1,
          ),
          new ListTile(
            leading: Icon(Icons.card_travel,
                color: Hexcolor('FFCC80'),
                size: 50),
            title: new Text('Reiseprofile',
                style: TextStyle(
                  fontSize: 20,
                  color: Hexcolor('707070'), //#707070
                )),
            onTap: () {
              Navigator.push(context, MaterialPageRoute<Widget>(
                  builder: (BuildContext context) => TravelProfiles())
              );
            },
          ),
          new Divider (
            thickness: 1,
          ),
          new ListTile(
            leading: Icon(Icons.map,
                color: Hexcolor('FFCC80'),
                size: 50),
            title: new Text('Meine Karten',
                style: TextStyle(
                  fontSize: 20,
                  color: Hexcolor('707070'), //#707070
                )),
            /*onTap: () {
                  Navigator.push(context, MaterialPageRoute<Widget>(
                      builder: (BuildContext context) => TravelProfiles())
                  );
                },*/
          ),
          new Divider (
            thickness: 1,
          ),
          new ListTile(
            leading: Icon(Icons.settings,
                color: Hexcolor('FFCC80'),
                size: 50),
            title: new Text('Einstellungen',
                style: TextStyle(
                  fontSize: 20,
                  color: Hexcolor('707070'), //#707070
                )),
            /*onTap: () {
                  Navigator.push(context, MaterialPageRoute<Widget>(
                      builder: (BuildContext context) => TravelProfiles())
                  );
                },*/
          ),
          new Divider (
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
