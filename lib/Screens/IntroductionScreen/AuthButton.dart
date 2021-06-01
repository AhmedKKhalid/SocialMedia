import 'package:flutter/material.dart';
import 'package:lets/Screens/SignUpLogin_Screen/SignUpLogin_Screen.dart';


class AuthButton extends StatelessWidget {
  String tag;
  Function function;

  AuthButton({required this.tag,required this.function});
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return
      ElevatedButton(
        style:
        ElevatedButton.styleFrom(
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),bottomLeft: Radius.circular(30.0)),
            ),
            elevation: 5,
            primary  :Color(0xFF191970)
        )
        ,onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder:(c)=>SignUpLogIn_Screen(true) ));
      },
        child:const Text(
          'Log in',
          style: TextStyle(
            color: Colors.white,
          ),
        ),

    );
  }
}
