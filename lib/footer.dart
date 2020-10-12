import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo2/route_planning2.dart';
import 'route_planning.dart';
import 'main.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white.withOpacity(0),
      child: Container(
        padding: EdgeInsets.only(top: 5, bottom: 5, left: 65, right: 65),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white.withOpacity(0.1),
              Colors.white.withOpacity(0.9),
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*Container(
              decoration: BoxDecoration(
                  color: my_middle_turquoise,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10, color: Colors.white, spreadRadius: 5),
                  ]),
              child: CircleAvatar(
                  radius: 30,
                  backgroundColor: my_middle_turquoise,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: my_white,
                      size: 30,
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  )),
            ),*/
            Container(
              decoration: BoxDecoration(
                  color: my_middle_turquoise,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10, color: my_white, spreadRadius: 5),
                  ]),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: my_middle_turquoise,
                child: IconButton(
                  icon: Icon(Icons.home, color: my_white, size: 30),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                ),
              ),
            ),
            /*Container(
              decoration: BoxDecoration(
                  color: my_middle_turquoise,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10, color: Colors.white, spreadRadius: 5),
                  ]),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: my_middle_turquoise,
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios,
                      color: wh_white, size: 30),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<Widget>(
                            builder: (BuildContext context) =>
                                RoutePlanning2()));
                  },
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
    /*BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: my_middle_grey,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back_ios, size: 30,),
              onPressed: () {

              },
            ),
            IconButton(
              icon: Icon(Icons.home, size: 30),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward_ios, size: 30),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/other');

                //geht beides
                /*Navigator.push(context, MaterialPageRoute<Widget>(
                    builder: (BuildContext context) => RoutePlanning2())
                );*/
              },
            ),
          ],
        ),

      );*/
  }
}

_buildNavItem(IconData icon) {
  return CircleAvatar(
    radius: 30,
    backgroundColor: my_middle_turquoise,
    child: CircleAvatar(
        radius: 25,
        //backgroundColor: Colors.white.withOpacity(0.9),
        child: Icon(
          Icons.bubble_chart,
          color: my_middle_grey,
        )),
  );
}
