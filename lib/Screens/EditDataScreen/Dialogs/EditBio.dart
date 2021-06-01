import 'package:flutter/material.dart';
import 'package:lets/Helper/Helper.dart';

class EditBio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: TextFormField(
          style: TextStyle(color:  Helper.MainTheme,fontWeight: FontWeight.bold),
          maxLength: 300,
          decoration: InputDecoration(
            counterStyle: TextStyle(color: Helper.MainTheme,fontWeight: FontWeight.bold),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0)),
            focusColor: Colors.white,
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color:  Helper.MainTheme,width: 3)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color:  Helper.MainTheme,width: 3),
                borderRadius: BorderRadius.circular(20.0)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color:  Helper.MainTheme,width: 3)),
            hintText: "Bio...",
            hintStyle: TextStyle(
              backgroundColor: Colors.transparent,
              color:  Helper.MainTheme,
            ),
            suffixIcon: Icon(
              Icons.border_color,
              color:  Helper.MainTheme,
            ),
          ),
          cursorColor:  Helper.MainTheme,
          validator: (txt) {
            if (txt!.isEmpty) {
              return "Type something !";
            } else {
              return null;
            }
          },
          onChanged: (value) {

          },
          maxLines: 6,
//          initialValue:"Hey my name is AhmedKhalid , \n and Iam a Software Engineer"
      ),
    );


  }
}
