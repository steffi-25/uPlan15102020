import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo2/drawer_home.dart';
import 'package:todo2/main.dart';
import 'footer.dart';

class TravelDetail extends StatefulWidget {
  const TravelDetail(this.travel);
  final String travel;

  @override
  _TravelDetailState createState() => _TravelDetailState();
}

class _TravelDetailState extends State<TravelDetail> {
  double _currentSliderValue = 20;
  double _currentSliderValue2 = 20;
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Reiseprofile',
            style: TextStyle(fontSize: 30, color: my_white),
          ),
          iconTheme: new IconThemeData(color: my_white),
          //backgroundColor: Colors.transparent,
        ),
        drawer: DrawerHome(),
        bottomNavigationBar: Footer(),
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
                child: Container(
                    //padding: EdgeInsets.symmetric(vertical: 70),
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            left: 25, right: 25, top: 25, bottom: 25),
                        padding: EdgeInsets.only(left: 10, right: 10),
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
                        child: ListTile(
                          contentPadding: EdgeInsets.only(
                              left: 15, right: 15, top: 8, bottom: 8),
                          leading: Icon(Icons.card_travel,
                              color: my_yellow, size: 50),
                          title: Text(widget.travel,
                              style: TextStyle(
                                fontSize: 20,
                                color: my_dark_grey,
                              )),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                                margin: EdgeInsets.only(
                                    left: 25, right: 25, bottom: 25),
                                padding: EdgeInsets.only(
                                    left: 25, right: 25, top: 25, bottom: 25),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 0, color: my_middle_grey),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(14)),
                                    color: my_white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: my_middle_grey,
                                        blurRadius: 4,
                                      )
                                    ]),
                                child: Column(children: [
                                  Text(
                                    'Max. Automationsdauer',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 180,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Min. Reisezeit',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      Text(
                                        'Wenig Wechsel\n        AD/MD',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ],
                                  ),
                                ])),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 25, right: 25, bottom: 25),
                              padding: EdgeInsets.only(
                                  left: 25, right: 25, top: 25, bottom: 25),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 0, color: my_middle_grey),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14)),
                                  color: my_white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: my_middle_grey,
                                      blurRadius: 4,
                                    )
                                  ]),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                        'Max. Umweg im Vergleich zur kürzesten Route',
                                        style: TextStyle(fontSize: 17)),
                                  ),
                                  Slider(
                                    value: _currentSliderValue,
                                    min: 0,
                                    max: 100,
                                    divisions: 100,
                                    activeColor: my_middle_turquoise,
                                    inactiveColor: my_middle_grey,
                                    label:
                                        _currentSliderValue.round().toString() +
                                            ' %',
                                    onChanged: (double value) {
                                      setState(() {
                                        _currentSliderValue = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                                  margin: EdgeInsets.only(
                                      left: 25, right: 25, bottom: 25),
                                  padding: EdgeInsets.only(
                                      left: 25, right: 25, top: 25, bottom: 25),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0, color: my_middle_grey,),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(14)),
                                      color: my_white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: my_middle_grey,
                                          blurRadius: 4,
                                        )
                                      ]),
                                  child: Column(
                                    children: [
                                      Container(
                                          child: Text(
                                              'Min. Dauer einzelner automatisierter Segmente',
                                              style: TextStyle(fontSize: 17))),
                                      Slider(
                                        value: _currentSliderValue2,
                                        min: 1,
                                        max: 60,
                                        divisions: 59,
                                        activeColor: my_middle_turquoise,
                                        inactiveColor: my_middle_grey,
                                        label: _currentSliderValue2
                                                .round()
                                                .toString() +
                                            ' min',
                                        onChanged: (double value) {
                                          setState(() {
                                            _currentSliderValue2 = value;
                                          });
                                        },
                                      ),
                                    ],
                                  )))
                        ],
                      ),
                    ]))))));
  }
}
