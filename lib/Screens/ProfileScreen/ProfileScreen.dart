import 'package:flutter/material.dart';

import 'BottomPart.dart';
import 'MyInfomationWidgets.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = "/ProfileScreen";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Color(0xFF191970)),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [MyInformation(), JoinedGroups()],
        ),
      ),
    );
  }
}
