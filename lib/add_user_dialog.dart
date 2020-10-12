import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'main.dart';

class AddUserDialog extends StatefulWidget {
  final void Function(String txt) addUser;
  const AddUserDialog(this.addUser);
  @override
  _AddUserDialogState createState() => _AddUserDialogState();
}

class _AddUserDialogState extends State<AddUserDialog> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String item;

  void save() {
    if (formKey.currentState.validate()) {
      widget.addUser(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextFormField(
                  onChanged: (String txt) => item = txt,
                  onFieldSubmitted: (String txt) => save(),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Bitte gib deinen Namen ein';
                    }
                    return null;
                  }),

              RawMaterialButton(
                onPressed: save,
                elevation: 2.0,
                fillColor: my_middle_turquoise,
                child: Icon(
                  Icons.save,
                  color: my_white,
                  size: 35.0,
                ),
                padding: EdgeInsets.all(15.0),
                shape: CircleBorder(),
              )
            ],
          )),
    );
  }
}