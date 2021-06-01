import 'package:flutter/material.dart';

import 'CardWidget.dart';
import 'Drawer.dart';

class HomePageScreen extends StatelessWidget {
  static const routeName = "/HomePage";
  @override
  Widget build(BuildContext context) {
    //Color(0xFF191970)
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Color(0xFF191970)),
        actions: [
          Icon(Icons.notifications_active,size: 30,)
        ],
      ),
      drawer: DrawerWidget(),

      body: ListView.builder(
          itemCount: 5,
          physics: BouncingScrollPhysics(),
          itemBuilder: (c, item) {
            return Container(
              margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child:
              CardWidget());

          }),
    );
  }
}
