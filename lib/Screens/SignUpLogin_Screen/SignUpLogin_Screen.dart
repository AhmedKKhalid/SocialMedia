import 'package:flutter/material.dart';
import 'package:lets/Screens/HomePageScreen/HomePageScreen.dart';

import 'Form.dart';

// ignore: camel_case_types
class SignUpLogIn_Screen extends StatelessWidget {
  static const routeName = '/SignUpLogin';
  bool isSignUpState;
  SignUpLogIn_Screen(this.isSignUpState);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
            width: width,
            height: height,
            child: SingleChildScrollView(
                physics: BouncingScrollPhysics(parent: BouncingScrollPhysics()),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            width * 0.1, height * 0.1, 0, 0),
                        child: const Text(
                          'Hello  \nAgain .',
                          style: TextStyle(
                            fontSize: 60,
                            fontFamily: 'Poppins',
                            color: Color(0xFF191970),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Center(
                            child: Image.asset(
                              'Assets/bg.png',
                              height: height * 0.5,
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            height: 210,
                            width: width,
                            child: Container(
                                margin: EdgeInsets.only(
                                  left: width * 0.05,
                                  right: width * 0.05,
                                ),
                                child: FormWidget(isSignUpState)),
                          )
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 60,
                          height: 60,
                          margin: EdgeInsets.only(right: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, HomePageScreen.routeName);
                            },
                            child: Icon(Icons.arrow_forward),
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(), primary: Colors.black),
                          ),
                        ),
                      )
                    ]))));
  }
}
