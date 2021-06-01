import 'package:flutter/material.dart';

import 'PostData.dart';

class FullPostInfoScreen extends StatelessWidget {
  static const routeName = '\FullPostInfo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Color(0xFF191970)),
        title: Text("Comments",style: TextStyle(color: Color(0xFF191970)),),
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(), child: PostData()),
    );
  }
}
