import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo2/footer.dart';
import 'user_item.dart';
import 'add_user_dialog.dart';
import 'travel_profiles.dart';
import 'drawer_home.dart';


//void main() => runApp(MaterialApp(home: FirstTest()));
//void main() => runApp(MaterialApp(home: Counter()));
//void main() => runApp(MaterialApp(home: RoutePlanning()));
//void main() => runApp(MaterialApp(home: UserProfiles()));

///////////////NUTZERPROFILE///////////////
class UserProfiles extends StatefulWidget {
  @override
  _UserProfilesState createState() => _UserProfilesState();
}

class _UserProfilesState extends State<UserProfiles> {
  List<String> user = ['Steffi', 'Tobi', 'Max', 'Jane', 'Harry'];
  void addUser(String item) {
    setState(() {
      user.add(item);
    });
    Navigator.of(context)
        .pop(); //damit der Alert Dialog nach dem Hinzufügen eines Items wieder verschwindet
  }

  void deleteUser(int index) {
    setState(() {
      user.removeAt(index);
    });
  }

  void newEntry() {
    showDialog<AlertDialog>(
        context: context,
        builder: (BuildContext context) {
          return AddUserDialog(addUser);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0f0),
      appBar: AppBar(
        title: Text('Nutzerprofile', style: TextStyle(color: Colors.white, fontSize: 30),),
        iconTheme: new IconThemeData(color: Colors.white),
      ),
      drawer: DrawerHome(),
      bottomNavigationBar: Footer(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.grey.withOpacity(0.15), BlendMode.dstATop),
              image: AssetImage("images/citybackground.jpg"),
              fit: BoxFit.fitWidth,
            )),
        child: ListView.builder(
          itemCount: user.length,
          itemBuilder: (context, i) {
            return TravelItem(
              user[i],
                  () => deleteUser(i),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Hexcolor('48ACB8'),
        onPressed: newEntry,
        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),
    );
  }
}