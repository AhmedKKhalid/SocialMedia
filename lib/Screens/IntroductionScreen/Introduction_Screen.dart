import 'package:flutter/material.dart';
import 'package:lets/Screens/SignUpLogin_Screen/SignUpLogin_Screen.dart';

import 'AuthButton.dart';

class Introduction_Screen extends StatelessWidget {
  static const routeName = '/introduction';
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: SingleChildScrollView(
//            physics: BouncingScrollPhysics(parent: BouncingScrollPhysics()),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(width * 0.1, height * 0.1, 0, 0),
                child: const Text(
                  'Hello \nThere .',
                  style: TextStyle(
                    fontSize: 60,
                    fontFamily: 'Poppins',
                    color: Color(0xFF191970),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'Assets/bg.png',
                  height: height * 0.5,
                ),
              ),
        Align(
          alignment: Alignment(1, 0),
          child:  Container(
            width: width *0.7,
              child: AuthButton(
            tag: "Log in ",
            function: () {},
          ))),
              Align(
                alignment: Alignment(1, 0),
                child:  Container(
                  width: width *0.7,
                  padding: EdgeInsets.only(bottom: height*0.1),
                  child: AuthButton(
                    tag: "'Sign up'",
                    function: () {},
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
