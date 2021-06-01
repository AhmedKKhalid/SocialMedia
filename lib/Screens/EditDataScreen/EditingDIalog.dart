import 'package:flutter/material.dart';
import 'package:lets/Helper/Helper.dart';

import 'package:lets/Screens/EditDataScreen/Dialogs/EditBasicInfo.dart';
import 'package:lets/Screens/EditDataScreen/Dialogs/EditEmail.dart';

import 'Dialogs/EditBio.dart';
import 'Dialogs/EditLocation.dart';

class DialogEditing extends StatelessWidget {
  String tag;
  IconData icon;
  DialogEditing({required this.tag, required this.icon});
  @override
  Widget build(BuildContext context) {

    return AlertDialog(
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      backgroundColor: Colors.white,
      title: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.red,
            size: 25,
          ),
          Text("Change $tag"),
        ],
      ),
      content: EditLocation(),
      //EditBasicInfo(tag),
      //    EditEmail(),
      //EditBio(),
      actions: <Widget>[
        Container(
          width: 85,
          child: ElevatedButton(
              child: Text("No"),
              style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  primary: Helper.MainTheme),
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ),
        Container(
          width: 85,
          child: ElevatedButton(
              child: Text("Yes"),
              style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  primary: Helper.MainTheme),
              onPressed: () async {}),
        )
      ],
    );
  }
}
