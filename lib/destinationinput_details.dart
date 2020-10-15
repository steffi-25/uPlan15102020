import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:todo2/main.dart';
import 'user_profiles.dart';
import 'route_planning2.dart';
import 'travel_item.dart';
import 'travel_profiles.dart';

class DestinationInputDetails extends StatefulWidget {
  @override
  _DestinationInputDetailsState createState() => _DestinationInputDetailsState();
}

class _DestinationInputDetailsState extends State<DestinationInputDetails> {
  var date = DateTime.now();
  DateTime selectedDate = DateTime.now();
  DateTime pickedDate;
  TimeOfDay time;

  String selectedTravelProfile = 'Arbeit';
  List<String> travel = ['Arbeit', 'Freizeit', 'Kinder'];

  _pickDate() {
    showDatePicker(
        context: context,
        initialDate: pickedDate,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 10));
    if (date != null)
      setState(() {
        pickedDate = date;
      });
  }

  _pickTime() async {
    TimeOfDay t = await showTimePicker(context: context, initialTime: time);
    if (t != null)
      setState(() {
        time = t;
      });
  }

  void initState() {
    super.initState();
    pickedDate = DateTime.now();
    time = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children:[
                    Text(
                      'Abfahrt ab',
                      style: TextStyle(fontSize: 17, color: my_dark_grey),
                    ),
                    Text(
                      ' / Ankunft bis',
                      style: TextStyle(fontSize: 17, color: my_middle_grey),
                    ),
                  ]
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(Icons.calendar_today, color: my_yellow),
                    //Text("${selectedDate.toLocal()}".split(' ')[0]),
                    SizedBox(
                      width: 18.0,
                    ),
                    MaterialButton(
                      color: my_middle_turquoise,
                      textColor: my_white,
                      child:
                      Text("${pickedDate.day}.${pickedDate.month}.${pickedDate.year}"),
                      onPressed: _pickDate,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Icon(Icons.access_time, color: my_yellow),
                    SizedBox(
                      width: 18,
                    ),
                    MaterialButton(
                        color: my_middle_turquoise,
                        textColor: my_white,
                        child:
                        Text("${time.hour}:${time.minute} Uhr"),
                        onPressed: _pickTime,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Reiseprofil',
                  style: TextStyle(fontSize: 17, color: my_dark_grey),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.card_travel,
                      color: my_yellow,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    DropdownButton<String>(
                      hint: Text("Reiseprofil"),
                      icon: Icon(
                        Icons.arrow_drop_down,
                        size: 40,
                        color: my_middle_turquoise,
                      ),
                      value: selectedTravelProfile,
                      underline: Container(
                        height: 2,
                        color: my_middle_grey,
                      ),
                      onChanged: (String Value) {
                        setState(() {
                          selectedTravelProfile = Value;
                        });
                      },
                      items: travel.map((String travel) {
                        return DropdownMenuItem<String>(
                          value: travel,
                          child: Text(
                            travel,
                            style: TextStyle(color: my_dark_grey),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                Text(
                  'Autom. Fahrsegment hinzufügen',
                  style: TextStyle(fontSize: 17, color: my_dark_grey),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(Icons.local_car_wash, color: my_yellow),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                        backgroundColor: my_middle_turquoise,
                        radius: 21,
                        child: IconButton(
                          icon: Icon(
                            Icons.add,
                            color: my_white,
                            size: 25,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute<Widget>(
                                    builder: (BuildContext context) =>
                                        RoutePlanning2()));
                          },
                        )),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Zwischenstopp hinzufügen',
                  style: TextStyle(fontSize: 17, color: my_dark_grey),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(Icons.pin_drop, color: my_yellow),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                        backgroundColor: my_middle_turquoise,
                        radius: 21,
                        child: IconButton(
                          icon: Icon(
                            Icons.add,
                            color: my_white,
                            size: 25,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute<Widget>(
                                    builder: (BuildContext context) =>
                                        RoutePlanning2()));
                          },
                        )),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                MaterialButton(
                  minWidth: 300,
                  color: my_dark_turquoise,
                  textColor: my_white,
                  child:
                   Row(
                     children:[
                       Text("Los geht's!", style: TextStyle(fontSize: 17),),
                       SizedBox(
                         width: 10,
                       ),
                       Icon(Icons.arrow_forward_ios)
                     ]
                   ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<Widget>(
                            builder: (BuildContext context) =>
                                RoutePlanning2()));
                  }),
              ]),
          /*Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 80,
              ),
              FloatingActionButton(
                  backgroundColor: Hexcolor('48ACB8'),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<Widget>(
                            builder: (BuildContext context) =>
                                RoutePlanning2()));
                  })
            ],
          )*/
        ],
      ),
    );
  }
}
