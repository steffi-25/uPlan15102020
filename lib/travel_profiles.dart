import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'travel_item.dart';
import 'add_user_dialog.dart';
import 'user_profiles.dart';
import 'drawer_home.dart';
import 'home_button.dart';
import 'footer.dart';
import 'main.dart';

///////////////NUTZERPROFILE///////////////
class TravelProfiles extends StatefulWidget {
  @override
  _TravelProfilesState createState() => _TravelProfilesState();
}

class _TravelProfilesState extends State<TravelProfiles> {
  List<String> travel = ['Arbeit', 'Freizeit', 'Kinder'];
  void addTravel(String item) {
    setState(() {
      travel.add(item);
    });
    Navigator.of(context)
        .pop(); //damit der Alert Dialog nach dem Hinzufügen eines Items wieder verschwindet
  }

  void deleteTravel(int index) {
    setState(() {
      travel.removeAt(index);
    });
  }

  void newEntry() {
    showDialog<AlertDialog>(
        context: context,
        builder: (BuildContext context) {
          return AddUserDialog(addTravel);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0f0),
      appBar: AppBar(
        title: Text(
          'Reiseprofile',
          style: TextStyle(color: my_white, fontSize: 30),
        ),
        iconTheme: new IconThemeData(color: my_white),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //floatingActionButton: HomeButton(),
      bottomNavigationBar: Footer(),
      drawer: DrawerHome(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.grey.withOpacity(0.15), BlendMode.dstATop),
          image: AssetImage("images/citybackground.jpg"),
          fit: BoxFit.fitWidth,
        )),
        child: ListView.builder(
          itemCount: travel.length,
          itemBuilder: (context, i) {
            return TravelItem(
              travel[i],
              () => deleteTravel(i),
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: my_middle_turquoise,
        onPressed: newEntry,
        child: Icon(Icons.add, color: my_white, size: 30),
      ),
    );
  }
}
