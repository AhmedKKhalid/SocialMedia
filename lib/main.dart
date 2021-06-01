import 'package:flutter/material.dart';

import 'Screens/ChatScreen/ChatScreen.dart';
import 'Screens/EditDataScreen/EditDataScreen.dart';
import 'Screens/FullPostInfoScreen/FullPostInfoScreen.dart';
import 'Screens/HomePageScreen/HomePageScreen.dart';
import 'package:lets/Screens/IntroductionScreen/Introduction_Screen.dart';
import 'package:lets/Screens/JoinGroupsScreen/GroupsScreen/JoinGroupScreen.dart';
import 'Screens/ProfileScreen/ProfileScreen.dart';
import 'Screens/SignUpLogin_Screen/SignUpLogin_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        Introduction_Screen.routeName: (ctx) => Introduction_Screen(),
        HomePageScreen.routeName: (ctx) => HomePageScreen(),
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
        EditDataScreen.routeName: (ctx) => EditDataScreen(),
        ChatScreen.routeName: (ctx) => ChatScreen(),
        FullPostInfoScreen.routeName: (ctx) => FullPostInfoScreen(),
        JoinGroupsScreen.routeName: (ctx) => JoinGroupsScreen(),

      }
    );

  }
}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Introduction_Screen();
  }
}
