import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'main.dart';


class FavoriteRoutes extends StatefulWidget {
  @override
  _FavoriteRoutesState createState() => _FavoriteRoutesState();
}

class _FavoriteRoutesState extends State<FavoriteRoutes>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //unterer Block
          margin: EdgeInsets.only(left: 25, right: 25),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(14), topLeft: Radius.circular(14)),
              color: my_middle_turquoise, // Hexcolor('48ACB8'),
              boxShadow: [
                BoxShadow(
                  color: my_middle_grey, //Colors.grey,
                  blurRadius: 6,
                )
              ]),
          child: new TabBar(
            controller: _controller,
            indicatorColor: my_white, //Colors.white,
            labelColor: my_white, //Colors.white,
            tabs: [
              new Tab(
                //icon: const Icon(Icons.flag),
                text: 'ADRESSE',
              ),
              new Tab(
                //icon: const Icon(Icons.compare_arrows),
                text: 'VERBINDUNG',
              ),
            ],
          ),
        ),
        new Container(
          height:
              480.0, //sonst weißer Bildschirm, auch Flexible() und Expanded() hat nicht geklappt
          margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
          decoration: BoxDecoration(
              border: Border.all(width: 0, color: my_middle_grey),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(14),
                  bottomRight: Radius.circular(14)),
              color: my_white, //Colors.white,
              boxShadow: [
                BoxShadow(
                  color: my_middle_grey, //Colors.grey,
                  blurRadius: 4,
                )
              ]),
          child: new TabBarView(
            controller: _controller,
            children: <Widget>[
              //first tab:
              new Card(
                  child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                    decoration: BoxDecoration(
                        border: Border.all(width: 0, color: my_middle_grey),
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        color: my_white, //Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: my_middle_grey, //Colors.grey,
                            blurRadius: 4,
                          )
                        ]),
                    child: Column(
                      children: [
                        new Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'FAVORITEN',
                              style: TextStyle(fontSize: 17, color: my_dark_grey),
                            )),
                        new Divider(
                          color: my_middle_grey, //Colors.grey,
                          thickness: 2,
                        ),
                        new ListTile(
                          leading: Icon(
                            Icons.star,
                            color: my_yellow, //Hexcolor('FFCC80'),
                            size: 30,
                          ),
                          title: Text('Zu Hause', style: TextStyle(color: my_dark_grey)),
                          trailing: new IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              onPressed: () {}),
                        ),
                        new ListTile(
                          leading: Icon(
                            Icons.star,
                            color: my_yellow, //Hexcolor('FFCC80'),
                            size: 30,
                          ),
                          title: Text('Oma und Opa', style: TextStyle(color: my_dark_grey)),
                          trailing: new IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              onPressed: () {}),
                        ),
                        new ListTile(
                          leading: Icon(
                            Icons.star,
                            color: my_yellow, //Hexcolor('FFCC80'),
                            size: 30,
                          ),
                          title: Text('Grundschule', style: TextStyle(color: my_dark_grey)),
                          trailing: new IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    decoration: BoxDecoration(
                        border: Border.all(width: 0, color: my_middle_grey),
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        color: my_white,
                        boxShadow: [
                          BoxShadow(
                            color: my_middle_grey,
                            blurRadius: 4,
                          )
                        ]),
                    child: Column(
                      children: [
                        new Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'LETZTE ZIELE',
                              style: TextStyle(fontSize: 17, color: my_dark_grey),
                            )),
                        new Divider(
                          color: my_middle_grey,
                          thickness: 2,
                        ),
                        new ListTile(
                          leading: Icon(
                            Icons.place,
                            color: my_yellow,
                            size: 30,
                          ),
                          title: Text('Garching, Boltzmannstr. 15', style: TextStyle(color: my_dark_grey)),
                          trailing: new IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              onPressed: () {}),
                        ),
                        new ListTile(
                          leading: Icon(
                            Icons.place,
                            color: my_yellow,
                            size: 30,
                          ),
                          title: Text('München, Flughafen', style: TextStyle(color: my_dark_grey)),
                          trailing: new IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              onPressed: () {}),
                        ),
                        new ListTile(
                          leading: Icon(
                            Icons.place,
                            color: my_yellow,
                            size: 30,
                          ),
                          title: Text('München, Sonnenstr. 19', style: TextStyle(color: my_dark_grey)),
                          trailing: new IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
              //second tab:
              new Card(
                  child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                    decoration: BoxDecoration(
                        border: Border.all(width: 0, color: my_middle_grey),
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        color: my_white,
                        boxShadow: [
                          BoxShadow(
                            color: my_middle_grey,
                            blurRadius: 4,
                          )
                        ]),
                    child: Column(
                      children: [
                        new Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'FAVORITEN',
                              style: TextStyle(fontSize: 17, color: my_dark_grey),
                            )),
                        new Divider(
                          color: my_middle_grey,
                          thickness: 2,
                        ),
                        new ListTile(
                          leading: Icon(
                            Icons.star,
                            color: my_yellow,
                            size: 30,
                          ),
                          title: Text('Zu Hause >\nArbeit', style: TextStyle(color: my_dark_grey)),
                          trailing: new IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              onPressed: () {}),
                        ),
                        new ListTile(
                          leading: Icon(
                            Icons.star,
                            color: my_yellow,
                            size: 30,
                          ),
                          title: Text('Zu Hause >\nSchule', style: TextStyle(color: my_dark_grey)),
                          trailing: new IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              onPressed: () {}),
                        ),
                        new ListTile(
                          leading: Icon(
                            Icons.star,
                            color: my_yellow,
                            size: 30,
                          ),
                          title: Text('Schule >\nArbeit', style: TextStyle(color: my_dark_grey)),
                          trailing: new IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    decoration: BoxDecoration(
                        border: Border.all(width: 0, color: my_middle_grey),
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        color: my_white,
                        boxShadow: [
                          BoxShadow(
                            color: my_middle_grey,
                            blurRadius: 4,
                          )
                        ]),
                    child: Column(
                      children: [
                        new Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'LETZTE VERBINDUNGEN', style: TextStyle(color: my_dark_grey,fontSize: 17),
                            )),
                        new Divider(
                          color: my_middle_grey,
                          thickness: 2,
                        ),
                        new ListTile(
                          leading: Icon(
                            Icons.place,
                            color: my_yellow,
                            size: 30,
                          ),
                          title: Text('Garching >\nFlughafen', style: TextStyle(color: my_dark_grey)),
                          trailing: new IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              onPressed: () {}),
                        ),
                        new ListTile(
                          leading: Icon(
                            Icons.place,
                            color: my_yellow,
                            size: 30,
                          ),
                          title: Text('München >\nStarnberg', style: TextStyle(color: my_dark_grey),),
                          trailing: new IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              onPressed: () {}),
                        ),
                        new ListTile(
                          leading: Icon(
                            Icons.place,
                            color: my_yellow,
                            size: 30,
                          ),
                          title: Text('Zu Hause >\nStuttgart', style: TextStyle(color: my_dark_grey)),
                          trailing: new IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            ],
          ),
        )
      ],
    );
  }
}
