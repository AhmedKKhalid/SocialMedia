import 'package:flutter/material.dart';

import '../BottomAppBarWidget.dart';
import '../ListOfGroups.dart';



class JoinGroupsScreen extends StatelessWidget {
  static const routeName = '/JoinGroupScreen';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        extendBody: true,

        backgroundColor: Colors.white,
        bottomNavigationBar: BottomAppBarWidget(),

        appBar: AppBar(title: Text('My Group'),backgroundColor: Colors.blue.shade900,),
        body: ListOfGroups()

    );
  }
}







