import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo2/main.dart';
import 'travel_detail.dart';

class TravelItem extends StatelessWidget {
  final String travel;
  final Function remove;

  const TravelItem(this.travel, this.remove);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 25, left: 25, right: 25),
        child: Container(
            width: 150,
            height: 70,
            alignment: Alignment.center,
            decoration: new BoxDecoration(
              color: my_white,
              borderRadius: new BorderRadius.circular(14),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 25, right: 15),
              leading: Icon(Icons.card_travel,
                  color: my_yellow, size: 50),
              title: Text(travel,
                  style: TextStyle(
                    fontSize: 20,
                    color: my_dark_grey,
                  )),
              trailing: IconButton(
                icon:
                Icon(Icons.more_vert, color: my_middle_turquoise, size: 50),
                onPressed:  () => remove(),
              ),
              onTap: () {
                Navigator.push<Widget>(
                    context,
                    MaterialPageRoute<Widget>(
                        builder: (BuildContext context) =>
                            TravelDetail(travel)));
              },
            )));
  }
}